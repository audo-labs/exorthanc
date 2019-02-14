# defmodule Exorthanc.DownloadTest do
#   use Exorthanc.TestCase
#
#   alias Exorthanc.Download
#   @study_id "1.3.51.0.7.2829386127.37283.25160.36107.6610.35096.11564"
#
#   setup do
#     bypass = Bypass.open()
#     {:ok, bypass: bypass}
#   end
#
#   test "download study", %{bypass: bypass} do
#     Bypass.expect(bypass, fn conn ->
#       assert "/dicom-web/studies/@study_id" == conn.request_path
#       assert "GET" == conn.method
#       Plug.Conn.resp(conn, 200, @changes_json)
#     end)
#     response = Download.study("http://localhost:#{bypass.port}/dicom-web", @study_id)
#     assert @changes = response
#   end
#
# end
