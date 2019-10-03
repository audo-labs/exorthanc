defmodule Exorthanc.Helpers do
  alias Exorthanc.{Retrieve, AlternatePool}

  @default_header [{"accept", "application/json"}]

  @moduledoc """
  Provides helper functions to facilitate access to Orthanc API.
  """

  @default_opts [timeout: 20000, recv_timeout: 60000]

  def build_hackney_opts(user_opts \\ []) do
    hackney_opts =
      Application.get_env(:exorthanc, :hackney_opts) || []
      |> Keyword.merge(user_opts)
    hackney_opts =
      if Keyword.has_key?(hackney_opts, :pool) do
        hackney_opts
      else
        hackney_opts |> Keyword.put(:pool, AlternatePool.next())
      end
    @default_opts |> Keyword.merge([hackney: hackney_opts])
  end

  def build_url(base_path, paths, query \\ %{})
  def build_url(base_path, pathlist, query) when is_list(pathlist) do
    Path.join([base_path] ++ pathlist)
    |> do_build_url(query)
  end
  def build_url(base_path, path, query) do
    Path.join(base_path, path)
    |> do_build_url(query)
  end
  def do_build_url(base_url, query) do
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
  def decode_json(response, _), do: {:ok, response}

  def tagify_response({:error, response}, _), do: {:error, response}
  def tagify_response({:ok, response}, url) do
    if String.contains?(url, "dicom-web") do tagify_response(response)
    else {:ok, response} end
  end
  def tagify_response(response) do
    try do
      tagified_response =
        response
        |> Enum.map(&(Map.new(&1, fn {k, v} -> {Exorthanc.Tag.name(k), get_tag_value(v)} end)))
      {:ok, tagified_response}
    rescue
      _ -> {:error, response}
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

  def generate_study_uuid(patient_id, study_instance_uid) do
    string = "#{patient_id}|#{study_instance_uid}"
    do_generate_uuid(string)
  end

  def generate_serie_uuid(patient_id, study_instance_uid, serie_instance_uid) do
    string = "#{patient_id}|#{study_instance_uid}|#{serie_instance_uid}"
    do_generate_uuid(string)
  end

  def generate_instance_uuid(patient_id, study_instance_uid, serie_instance_uid, instance_uid) do
    string = "#{patient_id}|#{study_instance_uid}|#{serie_instance_uid}|#{instance_uid}"
    do_generate_uuid(string)
  end

  defp do_generate_uuid(string) do
    hash = :crypto.hash(:sha, string) |> Base.encode16 |> String.downcase
    "#{String.slice(hash, 00, 8)}-#{String.slice(hash, 08, 8)}-#{String.slice(hash, 16, 8)}-#{String.slice(hash, 24, 8)}-#{String.slice(hash, 32, 8)}"
  end

  def decode_response(response) do
    case response do
      {:ok, %{body: body}} ->
        Poison.decode(body)
      {:error, %{reason: err}} -> {:error, err}
    end
  end

  def to_ascii(str) do
    String.normalize(str, :nfd)
    |> String.to_charlist
    |> Enum.reduce("", fn(c, acc) ->
      if c <= 127, do: acc <> <<c>>, else: acc
    end)
  end

  def clear_string(str), do: Regex.replace(~r/(\/|\+|\=|\-)/, str, "") |> String.trim

end
