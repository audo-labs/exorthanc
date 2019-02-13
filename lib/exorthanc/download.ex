defmodule Exorthanc.Download do

  alias GDCM
  alias Exorthanc.Retrieve

  @moduledoc """
  Uses Orthanc API to retrieve and save data to local files.
  GDCM can be used to compress dicom files.
  """

  @gdcmconv "gdcmconv"

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
  def study_by_instances(base_url, studyInstanceUid, options \\ []) do
    options =
      options
      |> Keyword.put_new(:directory, Path.join(System.tmp_dir(), studyInstanceUid))
      |> Keyword.put_new(:compression, nil)
    with :ok <- File.mkdir_p!(options[:directory]),
         dicom_web_url <- Path.join(base_url, "dicom-web"),
         {:ok, result} <- Retrieve.search_for_instances_by_study(dicom_web_url, studyInstanceUid, %{}, %{}, options),
         sop_list <- Enum.reduce(result, [], fn(x, acc) -> [x.sop_instance_uid] ++ acc end),
         file_list <- write_instances(base_url, sop_list, options)
    do
      file_list
    end
  end

  def write_instances(url, sop_list, opts) do
    do_write_instances(url, sop_list, opts, [])
  end
  def do_write_instances(url, [instance_sop | instances], opts, file_list) do
    filename = instance_sop <> ".dcm"
    with {:ok, [%{"ID" => instance_uuid}]} <- Retrieve.tools_lookup(url, instance_sop, opts),
         {:ok, %HTTPoison.Response{body: body}} <- Retrieve.instance_dicom(url, instance_uuid, opts),
         filepath when is_binary(filepath) <- write_file(opts[:directory], filename, body, opts[:compression])
    do
      file_list = file_list ++ [filepath]
      do_write_instances(url, instances, opts, file_list)
    end
  end
  def do_write_instances(_, [], _, file_list) do
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
    Path.join(dir, filename)
    |> write_file(data, compression)
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
