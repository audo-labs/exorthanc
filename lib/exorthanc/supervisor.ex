defmodule Exorthanc.Supervisor do
  def start_link(children, opts) do
    Supervisor.start_link(children, opts)
  end
end
