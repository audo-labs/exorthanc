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
  def hello do
    :world
  end

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      worker(Exorthanc.AlternatePool, [])
    ]

    opts = [strategy: :one_for_one, name: Exorthanc.Supervisor]
    Exorthanc.Supervisor.start_link(children, opts)
  end
end
