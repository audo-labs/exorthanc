defmodule Exorthanc.RetrieveTest do
  use Exorthanc.TestCase
  alias Exorthanc.Retrieve

  @study_id1 "1.2.840.113619.2.22.288.1.14234.20161124.245137"

  setup do
    bypass = Bypass.open()
    {:ok, bypass: bypass}
  end

  test "get orthanc changelog", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "/changes" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @changes_json)
    end)
    response = Retrieve.changes("http://localhost:#{bypass.port}")
    assert @changes = response
  end

  test "get orthanc instances", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "/instances" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @instances_json)
    end)
    response = Retrieve.get("http://localhost:#{bypass.port}", "instances")
    assert @instances = response
  end

  test "post orthanc tools_lookup", %{bypass: bypass} do
    #TODO: check if post data is right
    Bypass.expect(bypass, fn conn ->
      assert "/tools/lookup" == conn.request_path
      assert "POST" == conn.method
      Plug.Conn.resp(conn, 200, @tools_lookup_json)
    end)
    response = Retrieve.tools_lookup("http://localhost:#{bypass.port}", @study_id1)
    assert @tools_lookup = response
  end

  test "credentials header and invalid credentials", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "/instances" == conn.request_path
      assert "GET" == conn.method
      refute is_nil(Enum.find(conn.req_headers, fn({k, _}) -> k == "authorization" end))
      Plug.Conn.resp(conn, 401, "")
    end)
    response = Retrieve.get("http://wrong:credentials@localhost:#{bypass.port}", "instances")
    assert {:error, {_, 401}} = response
  end

end
