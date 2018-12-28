defmodule Exorthanc.AlternatePoolTest do
  use ExUnit.Case
  
  alias Exorthanc.AlternatePool

  test "next" do
    first = AlternatePool.next()
    second = AlternatePool.next()
    assert not is_nil first
    assert not is_nil second
    assert first != second
    assert ^first = AlternatePool.next()
    assert ^second = AlternatePool.next()
  end
end
