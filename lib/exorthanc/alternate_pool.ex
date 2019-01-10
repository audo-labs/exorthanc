defmodule Exorthanc.AlternatePool do
  @moduledoc """
  Agent to alternate hackney pools when making HTTPoison requests
  """
  use Agent

  def start_link do
    pools =
      Enum.to_list(1..10)
      |> Enum.reduce([], fn x, acc ->
        pool = "pool_#{x}" |> String.to_atom
        acc ++ [pool]
      end)
    Agent.start_link(fn -> pools end, name: __MODULE__)
  end

  def next do
    Agent.get_and_update(__MODULE__, fn [a | tail] -> {a, tail ++ [a]} end)
  end
end
