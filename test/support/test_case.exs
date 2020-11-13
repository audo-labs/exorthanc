defmodule Exorthanc.TestCase do
  use ExUnit.CaseTemplate

  using do
    quote do

      @changes_json "{\n   \"Changes\" : [\n      {\n         \"ChangeType\" : \"StableStudy\",\n         \"Date\" : \"20181226T184150\",\n         \"ID\" : \"44b14312-ccba5e18-d0df33ab-e4572c82-ed317d69\",\n         \"Path\" : \"/studies/44b14312-ccba5e18-d0df33ab-e4572c82-ed317d69\",\n         \"ResourceType\" : \"Study\",\n         \"Seq\" : 1\n      },\n      {\n         \"ChangeType\" : \"StablePatient\",\n         \"Date\" : \"20181226T184150\",\n         \"ID\" : \"873412a4-7ce25628-18238e63-d632958b-8eb2b50b\",\n         \"Path\" : \"/patients/873412a4-7ce25628-18238e63-d632958b-8eb2b50b\",\n         \"ResourceType\" : \"Patient\",\n         \"Seq\" : 2\n      }\n   ],\n   \"Done\" : true,\n   \"Last\" : 2\n}\n"
      @changes {:ok,
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

      @instances_json "[\n   \"e82e66a6-bc7f9933-251f1251-4a2b0bf5-58e1275c\",\n   \"9e0eede2-655dbd4c-108be594-4c790983-a611454b\",\n   \"255887b8-e98057c9-d455508a-8141c4b0-aeb7fa32\"\n]\n"
      @instances {:ok,
                 ["e82e66a6-bc7f9933-251f1251-4a2b0bf5-58e1275c",
                 "9e0eede2-655dbd4c-108be594-4c790983-a611454b",
                 "255887b8-e98057c9-d455508a-8141c4b0-aeb7fa32"]
               }

      @studies_json "[ \"1837905f-1709cde6-e1921871-5c322305-e1bc605d\" ]\n"
      @studies_map {:ok, ["1837905f-1709cde6-e1921871-5c322305-e1bc605d"]}

      @modalities_json "[ \"sample\" ]\n"
      @modalities {:ok, ["sample"]}

      @tools_lookup_json "[\n   {\n      \"ID\" : \"1837905f-1709cde6-e1921871-5c322305-e1bc605d\",\n      \"Path\" : \"/studies/1837905f-1709cde6-e1921871-5c322305-e1bc605d\",\n      \"Type\" : \"Study\"\n   }\n]\n"
      @tools_lookup {:ok,
                      [
                        %{
                          "ID" => "1837905f-1709cde6-e1921871-5c322305-e1bc605d",
                          "Path" => "/studies/1837905f-1709cde6-e1921871-5c322305-e1bc605d",
                          "Type" => "Study"
                        }
                      ]
                    }
    end
  end
end
