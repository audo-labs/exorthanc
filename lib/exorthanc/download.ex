defmodule Exorthanc.Download do
  @moduledoc """
  Uses Orthanc API to retrieve and save data to local files.
  """
  import Exorthanc.Helpers
  alias Exorthanc.Retrieve

  @bin_hdr [{"accept", "image/jpeg; type=application/dicom"}]


  @doc """
    Download a study instance by instance to a temp directory.
  """
  def study_by_instances(base_url, study_uuid, options \\ []) do
    opts =
      options
      |> Keyword.put_new(:directory, Path.join(System.tmp_dir(), "studies"))
    with :ok <- File.mkdir_p!(opts[:directory]),
         {:ok, main_tags} <- Retrieve.get(base_url, "/studies/#{study_uuid}/", opts),
         root_path <- Path.join(opts[:directory], build_study_path(main_tags)),
         {:ok, _} <- root_path |> File.rm_rf,
         path_map <- build_filepath_list(base_url, root_path, main_tags["Series"], opts),
         file_list <- write_instances(base_url, opts, path_map)
    do
      file_list
    end
  end

  @doc """
    Retrieve a instance.
  """
  def retrieve_instance(url, id, hackney_opts \\ []) do
    build_url(url, ["instances", id, "file"])
    |> request(:get, "", hackney_opts, @bin_hdr)
  end

  def build_study_path(main_tags) do
    study_instance_uid = main_tags["MainDicomTags"]["StudyInstanceUID"]
    {patient, study} = {main_tags["PatientMainDicomTags"], main_tags["MainDicomTags"]}
    patient_path = "#{patient["PatientID"]} #{patient["PatientName"]}" |> sanitize_string
    study_path = "#{study["AccessionNumber"]} #{study["StudyDescription"]}" |> sanitize_string
    Path.join([study_instance_uid, patient_path, study_path])
  end

  def build_filepath_list(url, root_path, series, opts) do
    Enum.reduce(series, %{}, fn(serie_uuid, acc) ->
      {:ok, serie} = Retrieve.get(url, "/series/#{serie_uuid}", opts)
      modality = serie["MainDicomTags"]["Modality"] |> String.upcase
      s_desc = "#{serie["MainDicomTags"]["SeriesDescription"]}"
      serie_path = "#{modality} #{s_desc}" |> sanitize_string
      path = Path.join(root_path, serie_path)
      path = create_directory(path)
      {instances, _num_of_instances} =
        Enum.reduce(serie["Instances"], {[], 0}, fn(i_uuid, {acc, num}) ->
          filename = "#{modality}#{String.pad_leading("#{num}", 6, "0")}.dcm"
          {acc ++ [{filename, i_uuid}], num + 1}
        end)
      Map.put(acc, path, instances)
    end)
  end

  defp create_directory(path, num \\ 1) do
    path = if num == 1 do path else path <> "-#{num}" end
    case {File.dir?(path), num} do
      {true, num} ->
        create_directory(String.trim_trailing(path, "-#{num}"), num + 1)
      {false, _} -> File.mkdir_p(path); path
    end
  end

  def write_instances(url, opts, path_map) do
    Enum.map(path_map, fn({path, instances}) ->
      do_write_instances(url, opts, path, instances, [])
    end)
    |> List.flatten
  end

  def do_write_instances(url, opts, path, [{filename, instance_uuid} | instances], file_list) do
    with {:ok, %HTTPoison.Response{body: body}} <- retrieve_instance(url, instance_uuid, opts),
         filepath when is_binary(filepath) <- write_file(path, filename, body)
    do
      file_list = file_list ++ [filepath]
      do_write_instances(url, opts, path, instances, file_list)
    end
  end
  def do_write_instances(_url, _opts, _path, [], file_list) do
    file_list
  end

  defp write_file(dir, filename, data) do
    path = Path.join(dir, filename)
    Path.dirname(path)
    |> File.mkdir_p()
    File.write!(path, data)
    path
  end

end
