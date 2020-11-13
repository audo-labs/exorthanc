defmodule Exorthanc.AlternatePoolTest do
  use ExUnit.Case

  alias Exorthanc.AlternatePool

  test "next" do
    first = AlternatePool.next()
    1..9 |> Enum.reduce(first, fn _, prev ->
    	next = AlternatePool.next()
    	assert prev != next
    	next
    end)
    assert first == AlternatePool.next()
  end

end
