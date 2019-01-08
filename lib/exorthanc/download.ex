defmodule Exorthanc.Download do

  alias GDCM
  alias Exorthanc.Retrieve

  @moduledoc """
  Uses Orthanc API to retrieve and save data to local files.
  GDCM can be used to compress dicom files.
  """

  @gdcmconv "gdcmconv"

  @doc """
  Download a study using Dicom-web.
  Jpeg2000 compression can be used (needs GDCM).

  ## Examples
      iex> Exorthanc.Download.study("localhost:8042/dicom-web", "1.2.840.113619.2.22.288.1.14234.20161124.245137")
      ['/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/0.dcm',
       '/tmp/1.2.840.113619.2.22.288.1.14234.20161124.245137/1.dcm']

       iex> Exorthanc.Download.study("localhost:8042/dicom-web", "1.2.840.113619.2.22.288.1.14234.20161124.245137", "j2k")
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
      write_file(dir, index, data, compression)
    end)
  end

  defp write_file(dir, index, data, "j2k") do
    tmp_fn = "#{dir}/tmp#{index}.dcm"
    jpeg2k_fn = "#{dir}/#{index}.dcm"
    with :ok <- File.write(tmp_fn, data),
    {:ok, _} <- GDCM.exec(@gdcmconv, ["-U", "--j2k", tmp_fn, jpeg2k_fn]),
    :ok <- File.rm(tmp_fn)
    do
      jpeg2k_fn |> to_charlist
    end
  end
  defp write_file(dir, index, data, nil) do
    filename = "#{dir}/#{index}.dcm"
    File.write!(filename, data)
    filename |> to_charlist
  end

end
