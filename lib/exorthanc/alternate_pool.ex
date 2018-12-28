defmodule ExOrthanc.AlternatePool do
  @moduledoc """
  Agent to alternate hackney pools when making HTTPoison requests
  """
  use Agent

  def start_link do
    Agent.start_link(fn -> [:pool_01, :pool_02] end, name: __MODULE__)
  end

  def next do
    Agent.get_and_update(__MODULE__, fn [a, b] -> {a, [b, a]} end)
  end
end
