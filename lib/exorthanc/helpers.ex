defmodule Exorthanc.Helpers do

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

end
