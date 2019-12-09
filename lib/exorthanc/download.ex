defmodule Exorthanc.Download do

  alias GDCM
  alias Exorthanc.{Retrieve, Helpers}

  @moduledoc """
  Uses Orthanc API to retrieve and save data to local files.
  GDCM can be used to compress dicom files.
  """

  @gdcmconv "gdcmconv"

  @doc """
    Download a study instance by instance.
    Jpeg2000 compression can be used (needs GDCM).
  """
  def study_by_instances(base_url, study_uuid, options \\ []) do
    options =
      options
      |> Keyword.put_new(:directory, Path.join(System.tmp_dir(), "studies"))
      |> Keyword.put_new(:compression, nil)
    with :ok <- File.mkdir_p!(opts[:directory]),
         {:ok, main_tags} <- Retrieve.get(base_url, "/studies/#{study_uuid}/", opts),
         root_path <- build_study_path(main_tags),
         {:ok, _} <- Path.join(opts[:directory], root_path) |> File.rm_rf,
         path_map <- build_filepath_list(base_url, root_path, main_tags["Series"], opts),
         file_list <- write_instances(base_url, opts, path_map)
    do
      file_list
    end
  end

  def build_study_path(main_tags) do
    {patient, study} = {main_tags["PatientMainDicomTags"], main_tags["MainDicomTags"]}
    study_path = "#{study["AccessionNumber"]} #{study["StudyDescription"]}"
    |> Helpers.clear_string
    study_path = "#{patient["PatientID"]} #{patient["PatientName"]}"
    |> Helpers.clear_string
    |> Path.join(study_path)
    if study_path == "", do: "Unknown 2", else: study_path # 2 refers to a study resource type
  end

  def build_filepath_list(url, root_path, series, opts) do
    Enum.reduce(series, %{}, fn(serie_uuid, acc) ->
      {:ok, serie} = Retrieve.get(url, "/series/#{serie_uuid}", opts)
      modality = serie["MainDicomTags"]["Modality"] |> String.upcase
      s_desc = "#{serie["MainDicomTags"]["SeriesDescription"]}"
      serie_path = "#{modality} #{s_desc}" |> Helpers.clear_string
      path = Path.join([opts[:directory], root_path, serie_path])
      path = create_directory(path)
      {instances, _num_of_instances} =
        Enum.reduce(serie["Instances"], {[], 0}, fn(i_uuid, {acc, num}) ->
          filename = "#{modality}#{String.pad_leading("#{num}", 6, "0")}.dcm"
          {acc ++ [{filename, i_uuid}], num + 1}
        end)
      Map.put(acc, path, instances)
    end)
  end

  def write_instances(url, patient_id, study_instance_uid, series_map, opts) do
    Enum.map(series_map, fn({serie_id, instances}) ->
      do_write_instances(url, patient_id, study_instance_uid, serie_id, instances, opts, [])
    end)
    |> List.flatten
  end

  def do_write_instances(url, opts, path, [{filename, instance_uuid} | instances], file_list) do
    with {:ok, %HTTPoison.Response{body: body}} <- Retrieve.instance_dicom(url, instance_uuid, opts),
         filepath when is_binary(filepath) <- write_file(path, filename, body, opts[:compression])
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
  Jpeg2000 compression can be used (needs GDCM).

  ## Examples
      iex> Exorthanc.Download.study("localhost:8042/dicom-web", "1.2.840.113619.2.22.288.1.14234.20161124.245137")
      ['/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/0.dcm',
       '/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/1.dcm']

       iex> Exorthanc.Download.study("localhost:8042/dicom-web", "1.2.840.113619.2.22.288.1.14234.20161124.245137", [compression: "j2k"])
       ['/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/0.dcm',
        '/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/1.dcm']

       iex> Exorthanc.Download.study("localhost:8042/dicom-web", "1.2.840.113619.2.22.288.1.14234.20161124.245137", [directory: "/tmp/dicoms/1.2.840.113619.2.22.288.1.14234.20161124.245137"])
       ['/tmp/dicoms/1.2.840.113619.2.22.288.1.14234.20161124.245137/0.dcm',
        '/tmp/dicoms/1.2.840.113619.2.22.288.1.14234.20161124.245137/1.dcm']
  """
  def study(base_url, studyInstanceUid, options \\ []) do
    opts_dir = Keyword.get(options, :directory)
    dest_dir = if opts_dir, do: opts_dir, else: "#{System.tmp_dir()}/#{studyInstanceUid}"
    with :ok <- File.mkdir_p!(dest_dir),
         {:ok, resp} <- Retrieve.study(base_url, studyInstanceUid, options),
         boundary when not is_nil(boundary) <- resp.headers |> extract_boundary,
         {:ok, parts} = :hackney_multipart.decode_form(boundary, resp.body)
    do
      dicom_stream(parts, dest_dir, options)
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

  defp dicom_stream(parts, dir, options) do
    parts
    |> Stream.with_index
    |> Enum.map(fn({part, index}) ->
      {_, data} = part
      compression = Keyword.get(options, :compression)
      write_file(dir, index <> ".dcm", data, compression)
    end)
  end

  defp write_file(dir, filename, data, compression) do
    path = Path.join(dir, filename)
    Path.dirname(path)
    |> File.mkdir_p()
    write_file(path, data, compression)
  end
  defp write_file(filepath, data, "j2k") do
    tmp_fp = Path.join(System.tmp_dir, "tmp.dcm")
    with :ok <- File.write(tmp_fp, data),
    {:ok, _} <- GDCM.exec(@gdcmconv, ["-U", "--j2k", tmp_fp, filepath]),
    :ok <- File.rm(tmp_fp)
    do
      filepath
    end
  end
  defp write_file(filepath, data, nil) do
    File.write!(filepath, data)
    filepath
  end

end
