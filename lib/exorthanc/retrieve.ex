defmodule Exorthanc.Retrieve do
  import Exorthanc.Helpers

  @moduledoc """
  Provides a set of functions to retrieve data using Orthanc API.
  """

  @default_header [{"accept", "application/json"}]
  @dcm_hdr [{"accept", "multipart/related; type=application/dicom"}]
  @bin_hdr [{"accept", "image/jpeg; type=application/dicom"}]

  @doc """
  Returns Orthanc changelog given a sequence number.

  ## Examples
      iex> Exorthanc.Retrieve.changes("localhost:8042", 100)
      {:ok, %{"Changes" => [changes], "Done" => true, "Last" => 100}}
  """
  def changes(url, sequence \\ 0, hackney_opts \\ []) do
    build_url(url, "changes?since=#{sequence}")
    |> request(:get, "", hackney_opts)
  end

  @doc """
  Returns data according to the given path.

  ## Examples
      iex> Exorthanc.Retrieve.get("localhost:8042", "instances")
      {:ok, ["695bbc6e-a0110056-49769ee5-e1c2ab2a-785c1b97", "9107ff1b-1897a1a8-abf7b189-e2809db5-4ae4515c"]}

      iex> Exorthanc.Retrieve.get(url, "/instances/779a2e03-e04f6a80-98532138-3dc7919a-0597ca9f")
      {:ok,
        %{
          "FileSize" => 526474,
          "FileUuid" => "14edf553-799c-4c1b-86d1-811b723d5e35",
          "ID" => "779a2e03-e04f6a80-98532138-3dc7919a-0597ca9f",
          "IndexInSeries" => 34,
          "MainDicomTags" => %{
            "AcquisitionNumber" => "1",
            "ImageComments" => "refobs,reconMatrix=512",
            "ImagePositionPatient" => "-156.0000000\\-156.0000000\\-267.0000000",
            "InstanceNumber" => "34",
            "SOPInstanceUID" => "1.2.840.113619.2.22.288.1.14199.106.34.20161118.224930"
          },
          "ParentSeries" => "51b0974b-5a0e8588-d7672b49-ea44ee05-d8270a11",
          "Type" => "Instance"
        }
      }
  """
  def get(url, path, hackney_opts \\ [], header \\ @default_header) do
    build_url(url, path)
    |> request(:get, "", hackney_opts, header)
  end

  def get!(url, path, hackney_opts \\ [], header \\ @default_header) do
    case get(url, path, hackney_opts, header) do
      {:ok, response} -> response
      {:error, error} -> raise("#{inspect error}")
    end
  end

  @doc """
  Returns Orthanc uuid for all studies.

  ## Examples
      iex> Exorthanc.Retrieve.studies("localhost:8042")
      {:ok, ["695bbc6e-a0110056-49769ee5-e1c2ab2a-785c1b97", "9107ff1b-1897a1a8-abf7b189-e2809db5-4ae4515c"]}
  """
  def studies(url, hackney_opts \\ []) do
    build_url(url, "studies")
    |> request(:get,  "", hackney_opts)
  end

  @doc """
  Given an Orthanc Study Id, returns the entire response from orthanc with the study as a json.
  Given an Study Instance UID, returns a multipart response with a binary body for each instance.
  The second option uses Dicomweb, the url must be accordingly.

  ## Examples
      iex> Exorthanc.Retrieve.study("localhost:8042", "1837905f-1709cde6-e1921871-5c322305-e1bc605d")
      {:ok, %HTTPoison.Response{
        body: study_as_json,
        ...
      }}
      iex> Exorthanc.Retrieve.study("localhost:8042/dicom-web", "1.2.840.113619.2.22.288.1.14234.20161124.245137")
      {:ok, %HTTPoison.Response{
        body: study_multipart_binary,
        ...
      }}
  """
  def study(url, id, hackney_opts \\ []) do
    build_url(url, "studies" |> Path.join(id))
    |> request(:get, "", hackney_opts, @dcm_hdr)
  end

  def instance_dicom(url, id, hackney_opts \\ []) do
    build_url(url, ["instances", id, "file"])
    |> request(:get, "", hackney_opts, @bin_hdr)
  end

  @doc """
  Returns a list of modalities configured on an Orthanc instance.

  ## Examples
      iex> Exorthanc.Retrieve.modalities("localhost:8042")
      {:ok, ["sample", "test"]}
  """
  def modalities(url, hackney_opts \\ [], expand \\ false) do
    modalities_path =
      case expand do
        true ->
          "modalities?expand"
        false ->
          "modalities"
      end
    build_url(url, modalities_path)
    |> request(:get, "", hackney_opts)
  end

  @doc """
  Inserts or updates a dicom modality on Orthanc

  ## Examples
    iex> modality_json = %{"AET" => "ORTHANC2", "Host" => "192.167.12.11", "Port" => 4343}
    %{"AET" => "ORTHANC2", "Host" => "192.167.12.11", "Port" => 4343}
    iex> Exorthanc.Retrieve.upsert_modality("localhost:8042", "TEST", modality_json)
    {:ok, _} || {:error, _}
  """
  def upsert_modality(url, modality_name, modality_json) do
    build_url(url, Path.join(["modalities", "#{modality_name}"]))
    |> request(:put, modality_json)
  end

  @doc """
  Sends a C-Echo do a dicom modality configured in Orthanc

  ## Examples
    iex> Exorthanc.Retrieve.modality_c_echo("localhost:8042", "TEST")
    {"localhost:8042", 200}
  """
  def modality_c_echo(url, modality_name) do
    build_url(url, Path.join(["modalities", "#{modality_name}", "echo"]))
    |> request(:post, "{}")
  end

  @doc """
  Deletes a dicom modality from Orthanc

  ## Examples
    iex> Exorthanc.Retrieve.delete_modality("localhost:8042", "TEST")
    {:ok, {"localhost:8042", 200}}
  """
  def delete_modality(url, modality_name) do
    build_url(url, Path.join(["modalities", "#{modality_name}"]))
    |> request(:delete)
  end

  @doc """
  Map DICOM UIDs to Orthanc identifiers.

  ## Examples
      iex> Exorthanc.Retrieve.tools_lookup("localhost:8042", "1.2.840.113619.2.22.288.1.14234.20161124.245137")
      {:ok, [
              %{
                "ID" => "1837905f-1709cde6-e1921871-5c322305-e1bc605d",
                "Path" => "/studies/1837905f-1709cde6-e1921871-5c322305-e1bc605d",
                "Type" => "Study"
              }
            ]
      }
  """
  def tools_lookup(url, data, hackney_opts \\ []) do
    build_url(url, Path.join("tools", "lookup"))
    |> request(:post, data, hackney_opts)
  end

  def search_for_studies(base_url, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :studies_01))
    |> tagify_response(base_url)
  end
  def search_for_series(base_url, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/series", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :series_01))
    |> tagify_response(base_url)
  end
  def search_for_series_by_study(base_url, study_instance_uid, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies/#{study_instance_uid}/series", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :series_02))
    |> tagify_response(base_url)
  end

  def search_for_instances(base_url, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/instances", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :instances_01))
    |> tagify_response(base_url)
  end
  def search_for_instances_by_study(base_url, study_instance_uid, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies/#{study_instance_uid}/instances", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :instances_02))
    |> tagify_response(base_url)
  end
  def search_for_instances_by_series(base_url, study_instance_uid, series_instance_uid, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies/#{study_instance_uid}/series/#{series_instance_uid}/instances", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :instances_03))
    |> tagify_response(base_url)
  end

  defp build_query_url(base_url, path, query, response_params) do
    query = prepare_query(query, response_params)
    build_url(base_url, path, query)
  end
  defp prepare_query(query, response_params) do
    fields = response_params[:include_fields]
    include_fields =
      cond do
        fields == :all ->
          "all"
        is_list(fields) && length(fields) > 0 ->
          Enum.join(fields, ",")
        true ->
          nil
      end
    base = %{
      "includefield" => include_fields,
      "limit" => response_params[:limit],
      "offset" => response_params[:limit]
    }
    base
    |> Map.merge(query)
    |> Enum.reject(fn {_, v} -> is_nil(v) end)
    |> Map.new
  end

end
