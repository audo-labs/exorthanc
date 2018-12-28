defmodule Exorthanc do
  use Application
  @moduledoc """
  Documentation for Exorthanc.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Exorthanc.hello
      :world

  """

  def start(_type, _args) do
    children = [
      worker(ExOrthanc.AlternatePool, [])
    ]

    opts = [strategy: :one_for_one, name: GenstageExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
