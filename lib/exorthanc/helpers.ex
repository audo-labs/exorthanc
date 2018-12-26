defmodule Exorthanc.Helpers do
  alias Exorthanc.Retrieve

  @default_header [{"accept", "Application/json; Charset=utf-8"}]

  @moduledoc """
  Provides helper functions to facilitate access to Orthanc API.
  """

  def opts do
    [timeout: 10000, recv_timeout: 30000]
  end

  def build_hackney_opts(user_opts \\ []) do
    opts() |> Keyword.merge([hackney: user_opts])
  end

  def decode_response(response) do
    case response do
      {:ok, %{body: body}} ->
        Poison.decode(body)
      {:error, %{reason: err}} -> {:error, err}
    end
  end

  def build_url(base_path, path, query \\ %{}) do
    base_url = base_path <> path
    query_str = URI.encode_query(query)
    if String.length(query_str) > 0 do
      base_url |> URI.merge("?" <> query_str)
    else
      base_url
    end |> to_string
  end

  def request(url, tagify_response \\ false, hackney_opts \\ %{}) do
    case HTTPoison.get(url, @default_header, build_hackney_opts(hackney_opts)) do
      {:ok, %{status_code: status_code, body: body}} ->
        case Poison.decode(body) do
          {:ok, response} when div(status_code, 100) == 2 ->
            if tagify_response do
              try do
                tagified_response = tagify_response!(response)
                {:ok, tagified_response}
              rescue
                _ ->
                {:error, "Could not tagify response"}
              end
            else
              {:ok, response}
            end
          {:ok, _} ->
            {:error, "Invalid request"}
          {:error, _} ->
            {:error, "Could not parse response"}
        end
      {:error, error} ->
        {:error, "Could not fetch data (#{error.reason})"}
    end
  end
  def request!(url, tagify_response \\ false) do
    case request(url, tagify_response) do
      {:ok, response} -> response
      {:error, error} -> throw(error)
    end
  end

  defp tagify_response!(response) do
    response
    |> Enum.map(&(Map.new(&1, fn {k, v} -> {Exorthanc.Tag.name(k), get_tag_value(v)} end)))
  end
  defp get_tag_value(%{"Value" => [value]}), do: value
  defp get_tag_value(%{"Value" => []}), do: ""

  def get_uuid(url, studyInstanceUid) do
    case Retrieve.tools_lookup(url, studyInstanceUid) do
      {:ok, [%{"ID" => uuid}]} -> {:ok, uuid}
      [] -> {:error, "not found"}
    end
  end

end
