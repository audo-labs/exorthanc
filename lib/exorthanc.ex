defmodule Exorthanc do
  use Application
  @moduledoc """
  Documentation for Exorthanc.
  """


  def start(_type, _args) do
    children = [
      {Exorthanc.AlternatePool, []}
    ]
    Supervisor.start_link(children, strategy: :one_for_one, name: Exorthanc.Supervisor)
  end

end
