defmodule Exorthanc.Retrieve do
  import Exorthanc.Helpers

  @moduledoc """
  Provides a set of functions to retrieve data using Orthanc API.
  """

  # Multipart Header
  @dcm_hdr [{"accept", "multipart/related; type=application/dicom"}]

  @doc """
  Returns Orthanc changelog given a sequence number.

  ## Examples
      iex> Exorthanc.Retrieve.changes("localhost:8042", 100)
      {:ok, %{"Changes" => [changes], "Done" => true, "Last" => 100}}
  """
  def changes(url, sequence \\ 0) do
    build_url(url, "changes?since=#{sequence}")
    |> request(:get)
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
  def get(url, path) do
    build_url(url, path)
    |> request(:get)
  end

  @doc """
  Returns Orthanc uuid for all studies.

  ## Examples
      iex> Exorthanc.Retrieve.studies("localhost:8042")
      {:ok, ["695bbc6e-a0110056-49769ee5-e1c2ab2a-785c1b97", "9107ff1b-1897a1a8-abf7b189-e2809db5-4ae4515c"]}
  """
  def studies(url) do
    build_url(url, "studies")
    |> request(:get)
  end

  @doc """
  Given an Orthanc Study Id, returns the entire response from orthanc with the study as a json.
  Given an Study Instance UID, returns a multipart response with a binary body for each instance.
  The second option uses Dicomweb, the url must be accordingly.

  ## Examples
      iex> Exorthanc.Retrieve.study("localhost:8042", "1837905f-1709cde6-e1921871-5c322305-e1bc605d")
      %HTTPoison.Response{
        body: study_as_json,
        ...
      }
      iex> Exorthanc.Retrieve.study("localhost:8042/dicom-web", "1.2.840.113619.2.22.288.1.14234.20161124.245137")
      %HTTPoison.Response{
        body: study_multipart_binary,
        ...
      }
  """
  def study(url, id, hackney_opts \\ []) do
    build_url(url, "studies" |> Path.join(id))
    |> request(:get, "", build_hackney_opts(hackney_opts), @dcm_hdr)
  end

  @doc """
  Returns a list of modalities configured on an Orthanc instance.

  ## Examples
      iex> Exorthanc.Retrieve.modalities("localhost:8042")
      {:ok, ["sample", "test"]}
  """
  def modalities(url) do
    build_url(url, "modalities")
    |> request(:get)
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
  def tools_lookup(url, data) do
    build_url(url, Path.join("tools", "lookup"))
    |> request(:post, data)
  end

  def search_for_studies(base_url, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :studies_01))
    |> tagify_response
  end

  def search_for_series(base_url, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/series", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :series_01))
    |> tagify_response
  end
  def search_for_series_by_study(base_url, study_instance_uid, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies/#{study_instance_uid}/series", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :series_02))
    |> tagify_response
  end

  def search_for_instances(base_url, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/instances", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :instances_01))
    |> tagify_response
  end
  def search_for_instances_by_study(base_url, study_instance_uid, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies/#{study_instance_uid}/instances", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :instances_02))
    |> tagify_response
  end
  def search_for_instances_by_series(base_url, study_instance_uid, series_instance_uid, query \\ %{}, response_params \\ %{}, hackney_opts \\ []) do
    build_query_url(base_url, "/studies/#{study_instance_uid}/series/#{series_instance_uid}/instances", query, response_params)
    |> request(:get, "", Keyword.put(hackney_opts, :pool, :instances_03))
    |> tagify_response
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
