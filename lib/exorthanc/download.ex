defmodule Exorthanc.Download do

  alias Exorthanc.{Retrieve, Helpers}

  @moduledoc """
  Uses Orthanc API to retrieve and save data to local files.
  """

  @doc """
  Download a study instance by instance.
  Jpeg2000 compression can be used (needs GDCM).

  ## Examples
      iex> Exorthanc.Download.study_by_instances("localhost:8042", "1.2.840.113619.2.22.288.1.14234.20161124.245137". [basic_auth: {user, pass}])
      ['/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/<SOPInstanceUID-1>.dcm',
       '/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/<SOPInstanceUID-2>.dcm']

       iex> Exorthanc.Download.study("localhost:8042", "1.2.840.113619.2.22.288.1.14234.20161124.245137", [compression: "j2k"])
       ['/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/<SOPInstanceUID-1>.dcm',
        '/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/<SOPInstanceUID-2>.dcm']

       iex> Exorthanc.Download.study("localhost:8042", "1.2.840.113619.2.22.288.1.14234.20161124.245137", [directory: "/tmp/dicoms/1.2.840.113619.2.22.288.1.14234.20161124.245137"])
       ['/tmp/dicoms/1.2.840.113619.2.22.288.1.14234.20161124.245137/<SOPInstanceUID-1>.dcm',
        '/tmp/dicoms/1.2.840.113619.2.22.288.1.14234.20161124.245137/<SOPInstanceUID-2>.dcm']
  """
  def study_by_instances(base_url, study_uuid, options \\ []) do
    options =
      options
      |> Keyword.put_new(:directory, System.tmp_dir())
      |> Keyword.put_new(:compression, nil)
    with :ok <- File.mkdir_p!(options[:directory]),
         {:ok, main_tags} <- Retrieve.get(base_url, "/studies/#{study_uuid}/", options),
         {patient_id, study_instance_uid} <- {main_tags["PatientMainDicomTags"]["PatientID"], main_tags["MainDicomTags"]["StudyInstanceUID"]},
         {:ok, series_map} <- build_series_map(base_url, study_uuid, options),
         file_list <- write_instances(base_url, patient_id, study_instance_uid, series_map, options)
    do
      file_list
    end
  end

  def build_series_map(url, study_uuid, options) do
    case Retrieve.get(url, "/studies/#{study_uuid}/series", options) do
      {:ok, series} -> list_instances_by_series(url, series, options)
      {:error, error} -> {:error, error}
    end
  end

  defp list_instances_by_series(url, series, options) do
    Enum.reduce_while(series, %{}, fn(serie, acc) ->
      case Retrieve.get(url, "/series/#{serie["ID"]}/instances", options) do
        {:ok, instances} ->
          if length(series) > length(Map.keys(acc)) + 1 do
            instances_list = Enum.map(instances, &(&1["MainDicomTags"]["SOPInstanceUID"]))
            acc = Map.put(acc, serie["MainDicomTags"]["SeriesInstanceUID"], instances_list)
            {:cont, acc}
          else
            instances_list = Enum.map(instances, &(&1["MainDicomTags"]["SOPInstanceUID"]))
            acc = Map.put(acc, serie["MainDicomTags"]["SeriesInstanceUID"], instances_list)
            {:halt, {:ok, acc}}
          end
        {:error, error} ->
          {:halt, {:error, error}}
      end
    end)
  end

  def write_instances(url, patient_id, study_instance_uid, series_map, opts) do
    Enum.map(series_map, fn({serie_id, instances}) ->
      do_write_instances(url, patient_id, study_instance_uid, serie_id, instances, opts, [])
    end)
    |> List.flatten
  end
  def do_write_instances(url, patient_id, study_instance_uid, serie_id, [instance_sop | instances], opts, file_list) do
    with filename <- Path.join([study_instance_uid, serie_id, "#{instance_sop}.dcm"]),
         instance_uuid <- Helpers.generate_instance_uuid(patient_id, study_instance_uid, serie_id, instance_sop),
         {:ok, %HTTPoison.Response{body: body}} <- Retrieve.instance_dicom(url, instance_uuid, opts),
         filepath when is_binary(filepath) <- write_file(opts[:directory], filename, body, opts[:compression])
    do
      file_list = file_list ++ [filepath]
      do_write_instances(url, patient_id, study_instance_uid, serie_id, instances, opts, file_list)
    end
  end
  def do_write_instances(_, _, _, _, [], _, file_list) do
    file_list
  end


  @doc """
  Download a study using Dicom-web.
  """
  def study(base_url, studyInstanceUid, options \\ []) do
    opts_dir = Keyword.get(options, :directory)
    dest_dir = if opts_dir, do: opts_dir, else: "#{System.tmp_dir()}/#{studyInstanceUid}"
    with :ok <- File.mkdir_p!(dest_dir),
         {:ok, resp} <- Retrieve.study(base_url, studyInstanceUid, options),
         boundary when not is_nil(boundary) <- resp.headers |> extract_boundary,
         {:ok, parts} = :hackney_multipart.decode_form(boundary, resp.body)
    do
      dicom_stream(parts, dest_dir)
    else
      nil -> {:error, "Study #{studyInstanceUid} not found"}
      error -> error
    end
  end

  defp extract_boundary(headers) do
    case headers |> List.keyfind("Content-Type", 0) do
      nil -> nil
      {_, type} ->
        %{"boundary" => boundary} = Regex.named_captures(~r/boundary=(?<boundary>[a-z0-9-]*)/, type)
        boundary
    end
  end

  defp dicom_stream(parts, dir) do
    parts
    |> Stream.with_index
    |> Enum.map(fn({part, index}) ->
      {_, data} = part
      write_file(dir, "#{index}" <> ".dcm", data)
    end)
  end

  defp write_file(dir, filename, data) do
    path = Path.join(dir, filename)
    Path.dirname(path)
    |> File.mkdir_p()
    File.write!(path, data)
    path
  end

end
