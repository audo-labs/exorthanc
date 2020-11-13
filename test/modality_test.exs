defmodule Exorthanc.ModalityTest do
  use Exorthanc.TestCase

  alias Exorthanc.Modality

  setup do
    bypass = Bypass.open()
    {:ok, bypass: bypass}
  end


  test "get orthanc modalities", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "/modalities" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @modalities_json)
    end)
    response = Modality.modalities("http://localhost:#{bypass.port}")
    assert @modalities = response
  end

end
