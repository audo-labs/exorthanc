defmodule Exorthanc.Helpers do
  alias Exorthanc.{Retrieve, AlternatePool}

  @default_header [{"accept", "Application/json; Charset=utf-8"}]
  @dcm_hdr [{"accept", "multipart/related; type=application/dicom"}]

  @moduledoc """
  Provides helper functions to facilitate access to Orthanc API.
  """

  def opts do
    [timeout: 10000, recv_timeout: 30000, hackney: [pool: AlternatePool.next()]]
  end

  def build_hackney_opts(user_opts \\ []) do
    opts() |> Keyword.merge([hackney: user_opts])
  end

  def build_url(base_path, path, query \\ %{}) do
    base_url = Path.join(base_path, path)
    query_str = URI.encode_query(query)
    if String.length(query_str) > 0 do
      base_url |> URI.merge("?" <> query_str)
    else
      base_url
    end |> to_string
  end

  def request(url, method, body \\ "", hackney_opts \\ [], header \\ @default_header) do
    case HTTPoison.request(method, url, body, header, build_hackney_opts(hackney_opts)) do
      {:ok, response} ->
        with 2 <- div(response.status_code, 100),
            {:ok, response} <- decode_json(response, header)
        do
          {:ok, response}
        else
          {:error, error} -> {:error, error}
          _ -> {:error, {url, response.status_code}}
        end
      {:error, error} ->
        {:error, "Could not fetch data (#{error.reason})"}
    end
  end
  def request!(url, method, header \\ @default_header, tagify? \\ false) do
    case request(url, method, header, tagify?) do
      {:ok, response} -> response
      {:error, error} -> throw(error)
    end
  end

  def decode_json(response, @default_header), do: Poison.decode(response.body)
  def decode_json(response, @dcm_hdr), do: {:ok, response}

  def tagify_response({:ok, response}), do: tagify_response(response)
  def tagify_response(response) do
    try do
      tagified_response =
        response
        |> Enum.map(&(Map.new(&1, fn {k, v} -> {Exorthanc.Tag.name(k), get_tag_value(v)} end)))
      {:ok, tagified_response}
    rescue
      _ ->
      {:error, "Could not tagify response"}
    end
  end
  defp get_tag_value(%{"Value" => [value]}), do: value
  defp get_tag_value(%{"Value" => []}), do: ""

  def get_uuid(url, studyInstanceUid) do
    case Retrieve.tools_lookup(url, studyInstanceUid) do
      {:ok, [%{"ID" => uuid}]} -> {:ok, uuid}
      [] -> {:error, "not found"}
    end
  end

  def decode_response(response) do
    case response do
      {:ok, %{body: body}} ->
        Poison.decode(body)
      {:error, %{reason: err}} -> {:error, err}
    end
  end

end
