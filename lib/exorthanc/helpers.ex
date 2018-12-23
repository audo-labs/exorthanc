defmodule Exorthanc.Helpers do
  alias Exorthanc.Retrieve

  @moduledoc """
  Provides helper functions to facilitate access to Orthanc API.
  """

  def opts do
    [timeout: 10000, recv_timeout: 30000]
  end

  def build_hackney_opts(user_opts \\ []) do
    opts() |> Keyword.merge([hackney: user_opts])
  end

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
