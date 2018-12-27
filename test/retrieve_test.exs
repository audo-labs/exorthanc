defmodule RetrieveTest do
  use ExUnit.Case

  alias Exorthanc.Retrieve

  @changes_json "{\n   \"Changes\" : [\n      {\n         \"ChangeType\" : \"StableStudy\",\n         \"Date\" : \"20181226T184150\",\n         \"ID\" : \"44b14312-ccba5e18-d0df33ab-e4572c82-ed317d69\",\n         \"Path\" : \"/studies/44b14312-ccba5e18-d0df33ab-e4572c82-ed317d69\",\n         \"ResourceType\" : \"Study\",\n         \"Seq\" : 1\n      },\n      {\n         \"ChangeType\" : \"StablePatient\",\n         \"Date\" : \"20181226T184150\",\n         \"ID\" : \"873412a4-7ce25628-18238e63-d632958b-8eb2b50b\",\n         \"Path\" : \"/patients/873412a4-7ce25628-18238e63-d632958b-8eb2b50b\",\n         \"ResourceType\" : \"Patient\",\n         \"Seq\" : 2\n      }\n   ],\n   \"Done\" : true,\n   \"Last\" : 2\n}\n"

  @changes_map {:ok,
             %{
               "Changes" => [
                 %{
                   "ChangeType" => "StableStudy",
                   "Date" => "20181226T184150",
                   "ID" => "44b14312-ccba5e18-d0df33ab-e4572c82-ed317d69",
                   "Path" => "/studies/44b14312-ccba5e18-d0df33ab-e4572c82-ed317d69",
                   "ResourceType" => "Study",
                   "Seq" => 1
                  },
                  %{
                    "ChangeType" => "StablePatient",
                    "Date" => "20181226T184150",
                    "ID" => "873412a4-7ce25628-18238e63-d632958b-8eb2b50b",
                    "Path" => "/patients/873412a4-7ce25628-18238e63-d632958b-8eb2b50b",
                    "ResourceType" => "Patient",
                    "Seq" => 2
                  }
                ],
                "Done" => true,
                "Last" => 2
              }
            }

  setup do
    bypass = Bypass.open()
    {:ok, bypass: bypass}
  end

  test "get orthanc changelog", %{bypass: bypass} do
    Bypass.expect(bypass, fn conn ->
      Plug.Conn.resp(conn, 200, @changes_json)
    end)
    response = Retrieve.changes("http://localhost:#{bypass.port}")
    assert @changes_map = response
  end

end
