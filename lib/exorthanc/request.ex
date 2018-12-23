defmodule Exorthanc.Request do

  # Default headers and options
  @json_hdr ["Accept": "Application/json; Charset=utf-8"]
  @dcm_hdr [{"accept", "multipart/related;type=application/dicom"}]
  @opts [ssl: [{:versions, [:'tlsv1.2']}], timeout: 10000, recv_timeout: 30000]

  defp build_hackney_opts(user_opts \\ %{}) do
    @opts |> Keyword.merge([hackney: user_opts])
  end

  def changes(url, sequence \\ 0) do
    HTTPoison.get("#{url}/changes?since=#{sequence}", @json_hdr, @opts)
    |> decode_response
  end

  def get(url, path) do
    HTTPoison.get("#{url}#{path}", @json_hdr, @opts)
    |> decode_response
  end

  def studies(url) do
    HTTPoison.get("#{url}/studies")
    |> decode_response
  end

  def get_study(url, studyInstanceUid, hackney_opts) do
    HTTPoison.get!("#{url}/studies/#{studyInstanceUid}", @dcm_hdr, build_hackney_opts(hackney_opts))
    |> decode_response
  end

  def modalities(url) do
    HTTPoison.get("#{url}/modalities")
    |> decode_response
  end

  def tools_lookup(url, data) do
    HTTPoison.post("#{url}/tools/lookup", data)
    |> decode_response
  end

  def store_modality(url, modality, uuid) do
    HTTPoison.post("#{url}/modalities/#{modality}/store", uuid, [], [recv_timeout: :infinity])
    |> decode_response
  end

  defp decode_response(response) do
    case response do
      {:ok, %{body: body}} ->
        Poison.decode(body)
      {:error, %{reason: err}} -> {:error, err}
    end
  end

end
