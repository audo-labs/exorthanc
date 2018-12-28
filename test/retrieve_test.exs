defmodule Exorthanc.RetrieveTest do
  use Exorthanc.TestCase

  alias Exorthanc.Retrieve

  @study_id1 "1.2.840.113619.2.22.288.1.14234.20161124.245137"
  @serie_id "1.2.840.113619.2.22.288.1.14234.2.20161124.245233"
  @instance_id "1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811"
  @query %{"StudyInstanceUID" => "1.2.840.113619.2.22.288.1.14234.20161124.245137"}
  @query_serie %{"SeriesInstanceUID" => "1.2.840.113619.2.22.288.1.14234.2.20161124.245233"}
  @query_instance %{"SOPInstanceUID" => "1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811"}
  @include %{include_fields: ["StudyDescription", "PatientAge"] }


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

  test "get orthanc modalities", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "/modalities" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @modalities_json)
    end)
    response = Retrieve.modalities("http://localhost:#{bypass.port}")
    assert @modalities = response
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

  test "search studies", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "StudyInstanceUID=#{@study_id1}" == conn.query_string
      assert "/dicom-web/studies" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @search_studies_json)
    end)
    url = "http://localhost:#{bypass.port}/dicom-web"
    response = Retrieve.search_for_studies(url, @query)
    assert @search_studies = response
  end

  test "search series", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "SeriesInstanceUID=#{@serie_id}" == conn.query_string
      assert "/dicom-web/series" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @search_series_json)
    end)
    url = "http://localhost:#{bypass.port}/dicom-web"
    response = Retrieve.search_for_series(url, @query_serie)
    assert @search_series = response
  end

  test "search instances", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "SOPInstanceUID=#{@instance_id}" == conn.query_string
      assert "/dicom-web/instances" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @search_instances_json)
    end)
    url = "http://localhost:#{bypass.port}/dicom-web"
    response = Retrieve.search_for_instances(url, @query_instance)
    assert @search_instances = response
  end

  test "search series by study", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "SeriesInstanceUID=#{@serie_id}" == conn.query_string
      assert "/dicom-web/studies/#{@study_id1}/series" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @series_by_study_json)
    end)
    url = "http://localhost:#{bypass.port}/dicom-web"
    response = Retrieve.search_for_series_by_study(url, @study_id1, @query_serie)
    assert @series_by_study = response
  end

  test "search instances by study", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      assert "SOPInstanceUID=#{@instance_id}" == conn.query_string
      assert "/dicom-web/studies/#{@study_id1}/instances" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @instances_by_study_json)
    end)
    url = "http://localhost:#{bypass.port}/dicom-web"
    response = Retrieve.search_for_instances_by_study(url, @study_id1, @query_instance)
    assert @instances_by_study = response
  end

  test "search instances by series", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      request_path = "/dicom-web/studies/#{@study_id1}/series/#{@serie_id}/instances"
      assert "SOPInstanceUID=#{@instance_id}" == conn.query_string
      assert request_path == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @instances_by_series_json)
    end)
    url = "http://localhost:#{bypass.port}/dicom-web"
    response = Retrieve.search_for_instances_by_series(url, @study_id1, @serie_id, @query_instance)
    assert @instances_by_series = response
  end

  test "search with include_fields", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      list = ["StudyInstanceUID=#{@study_id1}", "includefield", "StudyDescription", "PatientAge"]
      assert Enum.all?(list, &(String.contains?(conn.query_string, &1)))
      assert "/dicom-web/studies" == conn.request_path
      assert "GET" == conn.method
      Plug.Conn.resp(conn, 200, @search_study_with_include_json)
    end)
    url = "http://localhost:#{bypass.port}/dicom-web"
    response = Retrieve.search_for_studies(url, @query, @include)
    assert @search_study_with_include = response
  end

end
