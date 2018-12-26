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
  """
  def study(base_url, studyInstanceUid, compression \\ nil, hackney_opts \\ []) do
    tmp_dir = "#{System.tmp_dir()}/#{studyInstanceUid}"
    File.mkdir_p!(tmp_dir)
    resp = Retrieve.study(base_url, studyInstanceUid, hackney_opts)
    case resp.headers |> extract_boundary do
      nil -> []
      boundary ->
        {:ok, parts} = :hackney_multipart.decode_form(boundary, resp.body)
        dicom_stream(parts, tmp_dir, compression)
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

  defp dicom_stream(parts, dir, compression) do
    parts
    |> Stream.with_index
    |> Enum.map(fn({part, index}) ->
      {_, data} = part
      write_file(dir, index, data, compression)
    end)
  end

  defp write_file(dir, index, data, nil) do
    filename = "#{dir}/#{index}.dcm"
    File.write!(filename, data)
    filename |> to_charlist
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

end
