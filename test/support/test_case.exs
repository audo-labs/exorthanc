defmodule Exorthanc.TestCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # This code is injected into every case that calls "use MyCase"
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
      # QUERIES
      @search_studies_json "[\n{\"00080005\":{\"Value\":[\"ISO_IR 100\"],\"vr\":\"CS\"},\"00080020\":{\"Value\":[\"20161124\"],\"vr\":\"DA\"},\"00080030\":{\"Value\":[\"145137\"],\"vr\":\"TM\"},\"00080050\":{\"Value\":[\"\"],\"vr\":\"SH\"},\"00080061\":{\"Value\":[\"CT\"],\"vr\":\"CS\"},\"00080090\":{\"Value\":[\"\"],\"vr\":\"PN\"},\"00081190\":{\"Value\":[\"http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UR\"},\"00100010\":{\"Value\":[\"LUZIA BARROSO\"],\"vr\":\"PN\"},\"00100020\":{\"Value\":[\"25009\"],\"vr\":\"LO\"},\"00100030\":{\"Value\":[\"\"],\"vr\":\"DA\"},\"00100040\":{\"Value\":[\"F\"],\"vr\":\"CS\"},\"0020000D\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UI\"},\"00200010\":{\"Value\":[\"14234\"],\"vr\":\"SH\"},\"00201206\":{\"Value\":[\"2\"],\"vr\":\"IS\"},\"00201208\":{\"Value\":[\"3\"],\"vr\":\"IS\"}}\n]\n"
      @search_studies {:ok,
                        [%{
                          accession_number: "",
                          modalitiesin_study: "CT",
                          numberof_study_related_instances: "3",
                          numberof_study_related_series: "2",
                          patient_id: "25009",
                          patients_birth_date: "",
                          patients_name: "LUZIA BARROSO",
                          patients_sex: "F",
                          referring_physicians_name: "",
                          retrieve_url: "http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137",
                          specific_character_set: "ISO_IR 100",
                          study_date: "20161124",
                          study_id: "14234",
                          study_instance_uid: "1.2.840.113619.2.22.288.1.14234.20161124.245137",
                          study_time: "145137"
                        }]
                      }

      @search_series_json "[\n{\"00080005\":{\"Value\":[\"ISO_IR 100\"],\"vr\":\"CS\"},\"00080020\":{\"Value\":[\"20161124\"],\"vr\":\"DA\"},\"00080030\":{\"Value\":[\"145137\"],\"vr\":\"TM\"},\"00080050\":{\"Value\":[\"\"],\"vr\":\"SH\"},\"00080060\":{\"Value\":[\"CT\"],\"vr\":\"CS\"},\"00080090\":{\"Value\":[\"\"],\"vr\":\"PN\"},\"00081190\":{\"Value\":[\"http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.2.20161124.245233\"],\"vr\":\"UR\"},\"00100010\":{\"Value\":[\"LUZIA BARROSO\"],\"vr\":\"PN\"},\"00100020\":{\"Value\":[\"25009\"],\"vr\":\"LO\"},\"00100030\":{\"Value\":[\"\"],\"vr\":\"DA\"},\"00100040\":{\"Value\":[\"F\"],\"vr\":\"CS\"},\"0020000D\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UI\"},\"0020000E\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.2.20161124.245233\"],\"vr\":\"UI\"},\"00200010\":{\"Value\":[\"14234\"],\"vr\":\"SH\"},\"00200011\":{\"Value\":[\"2\"],\"vr\":\"IS\"},\"00201209\":{\"Value\":[\"2\"],\"vr\":\"IS\"}}\n]\n"
      @search_series {:ok,
                       [%{
                            modality: "CT",
                            numberof_series_related_instances: "2",
                            retrieve_url: "http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.2.20161124.245233",
                            series_instance_uid: "1.2.840.113619.2.22.288.1.14234.2.20161124.245233",
                            series_number: "2",
                            specific_character_set: "ISO_IR 100",
                            study_instance_uid: "1.2.840.113619.2.22.288.1.14234.20161124.245137"
                        }]
                      }
      @series_by_study_json "[\n{\"00080005\":{\"Value\":[\"ISO_IR 100\"],\"vr\":\"CS\"},\"00080060\":{\"Value\":[\"CT\"],\"vr\":\"CS\"},\"00081190\":{\"Value\":[\"http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.2.20161124.245233\"],\"vr\":\"UR\"},\"0020000D\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UI\"},\"0020000E\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.2.20161124.245233\"],\"vr\":\"UI\"},\"00200011\":{\"Value\":[\"2\"],\"vr\":\"IS\"},\"00201209\":{\"Value\":[\"2\"],\"vr\":\"IS\"}}\n]\n"
      @series_by_study {:ok,
                         [
                           %{
                             modality: "CT",
                             numberof_series_related_instances: "2",
                             retrieve_url: "http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.2.20161124.245233",
                             series_instance_uid: "1.2.840.113619.2.22.288.1.14234.2.20161124.245233",
                             series_number: "2",
                             specific_character_set: "ISO_IR 100",
                             study_instance_uid: "1.2.840.113619.2.22.288.1.14234.20161124.245137"
                           }
                         ]
                       }


      @search_instances_json "[\n{\"00080005\":{\"Value\":[\"ISO_IR 100\"],\"vr\":\"CS\"},\"00080016\":{\"Value\":[\"1.2.840.10008.5.1.4.1.1.2\"],\"vr\":\"UI\"},\"00080018\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811\"],\"vr\":\"UI\"},\"00080020\":{\"Value\":[\"20161124\"],\"vr\":\"DA\"},\"00080030\":{\"Value\":[\"145137\"],\"vr\":\"TM\"},\"00080050\":{\"Value\":[\"\"],\"vr\":\"SH\"},\"00080060\":{\"Value\":[\"CT\"],\"vr\":\"CS\"},\"00080090\":{\"Value\":[\"\"],\"vr\":\"PN\"},\"00081190\":{\"Value\":[\"http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.3.20161124.245748/instances/1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811\"],\"vr\":\"UR\"},\"00100010\":{\"Value\":[\"LUZIA BARROSO\"],\"vr\":\"PN\"},\"00100020\":{\"Value\":[\"25009\"],\"vr\":\"LO\"},\"00100030\":{\"Value\":[\"\"],\"vr\":\"DA\"},\"00100040\":{\"Value\":[\"F\"],\"vr\":\"CS\"},\"0020000D\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UI\"},\"0020000E\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.3.20161124.245748\"],\"vr\":\"UI\"},\"00200010\":{\"Value\":[\"14234\"],\"vr\":\"SH\"},\"00200011\":{\"Value\":[\"3\"],\"vr\":\"IS\"},\"00200013\":{\"Value\":[\"1\"],\"vr\":\"IS\"},\"00280010\":{\"Value\":[\"512\"],\"vr\":\"US\"},\"00280011\":{\"Value\":[\"300\"],\"vr\":\"US\"},\"00280100\":{\"Value\":[\"16\"],\"vr\":\"US\"}}\n]\n"
      @search_instances {:ok,
                         [
                           %{
                             accession_number: "",
                             bits_allocated: "16",
                             columns: "300",
                             instance_number: "1",
                             modality: "CT",
                             patient_id: "25009",
                             patients_birth_date: "",
                             patients_name: "LUZIA BARROSO",
                             patients_sex: "F",
                             referring_physicians_name: "",
                             retrieve_url: "http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.3.20161124.245748/instances/1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811",
                             rows: "512",
                             series_instance_uid: "1.2.840.113619.2.22.288.1.14234.3.20161124.245748",
                             series_number: "3",
                             sop_class_uid: "1.2.840.10008.5.1.4.1.1.2",
                             sop_instance_uid: "1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811",
                             specific_character_set: "ISO_IR 100",
                             study_date: "20161124",
                             study_id: "14234",
                             study_instance_uid: "1.2.840.113619.2.22.288.1.14234.20161124.245137",
                             study_time: "145137"
                           }
                         ]
                       }

      @instances_by_study_json "[\n{\"00080016\":{\"Value\":[\"1.2.840.10008.5.1.4.1.1.1.1\"],\"vr\":\"UI\"},\"00080018\":{\"Value\":[\"1.3.51.0.7.335864524.62778.3650.44742.12122.28189.2039\"],\"vr\":\"UI\"},\"00080060\":{\"Value\":[\"DX\"],\"vr\":\"CS\"},\"0008103E\":{\"Value\":[\"CCD\"],\"vr\":\"LO\"},\"00081190\":{\"Value\":[\"http://localhost/dicom-web/studies/1.3.51.0.7.2829386127.37283.25160.36107.6610.35096.11564/series/1.3.51.0.7.12427989314.44484.12352.34891.62280.23998.21459/instances/1.3.51.0.7.335864524.62778.3650.44742.12122.28189.2039\"],\"vr\":\"UR\"},\"0020000D\":{\"Value\":[\"1.3.51.0.7.2829386127.37283.25160.36107.6610.35096.11564\"],\"vr\":\"UI\"},\"0020000E\":{\"Value\":[\"1.3.51.0.7.12427989314.44484.12352.34891.62280.23998.21459\"],\"vr\":\"UI\"},\"00200011\":{\"Value\":[\"5\"],\"vr\":\"IS\"},\"00200013\":{\"Value\":[\"1\"],\"vr\":\"IS\"},\"00280010\":{\"Value\":[\"4644\"],\"vr\":\"US\"},\"00280011\":{\"Value\":[\"3510\"],\"vr\":\"US\"},\"00280100\":{\"Value\":[\"16\"],\"vr\":\"US\"},\"00400244\":{\"Value\":[\"20170304\"],\"vr\":\"DA\"},\"00400245\":{\"Value\":[\"081836\"],\"vr\":\"TM\"}}\n]\n"
      @instances_by_study {:ok,
                           [
                             %{
                               bits_allocated: "16",
                               columns: "3510",
                               instance_number: "1",
                               modality: "DX",
                               performed_procedure_step_start_date: "20170304",
                               performed_procedure_step_start_time: "081836",
                               retrieve_url: "http://localhost/dicom-web/studies/1.3.51.0.7.2829386127.37283.25160.36107.6610.35096.11564/series/1.3.51.0.7.12427989314.44484.12352.34891.62280.23998.21459/instances/1.3.51.0.7.335864524.62778.3650.44742.12122.28189.2039",
                               rows: "4644",
                               series_description: "CCD",
                               series_instance_uid: "1.3.51.0.7.12427989314.44484.12352.34891.62280.23998.21459",
                               series_number: "5",
                               sop_class_uid: "1.2.840.10008.5.1.4.1.1.1.1",
                               sop_instance_uid: "1.3.51.0.7.335864524.62778.3650.44742.12122.28189.2039",
                               study_instance_uid: "1.3.51.0.7.2829386127.37283.25160.36107.6610.35096.11564"
                             }
                           ]
                         }

      @instances_by_series_json "[\n{\"00080005\":{\"Value\":[\"ISO_IR 100\"],\"vr\":\"CS\"},\"00080016\":{\"Value\":[\"1.2.840.10008.5.1.4.1.1.2\"],\"vr\":\"UI\"},\"00080018\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811\"],\"vr\":\"UI\"},\"00081190\":{\"Value\":[\"http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.3.20161124.245748/instances/1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811\"],\"vr\":\"UR\"},\"0020000D\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UI\"},\"0020000E\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.3.20161124.245748\"],\"vr\":\"UI\"},\"00200013\":{\"Value\":[\"1\"],\"vr\":\"IS\"},\"00280010\":{\"Value\":[\"512\"],\"vr\":\"US\"},\"00280011\":{\"Value\":[\"300\"],\"vr\":\"US\"},\"00280100\":{\"Value\":[\"16\"],\"vr\":\"US\"}}\n]\n"
      @instances_by_series {:ok,
                             [
                               %{
                                 bits_allocated: "16",
                                 columns: "300",
                                 instance_number: "1",
                                 retrieve_url: "http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137/series/1.2.840.113619.2.22.288.1.14234.3.20161124.245748/instances/1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811",
                                 rows: "512",
                                 series_instance_uid: "1.2.840.113619.2.22.288.1.14234.3.20161124.245748",
                                 sop_class_uid: "1.2.840.10008.5.1.4.1.1.2",
                                 sop_instance_uid: "1.2.840.113619.2.22.288.1.14234.3.1.20161124.245811",
                                 specific_character_set: "ISO_IR 100",
                                 study_instance_uid: "1.2.840.113619.2.22.288.1.14234.20161124.245137"
                               }
                             ]
                           }
      @search_study_with_include_json "[\n{\"00080005\":{\"Value\":[\"ISO_IR 100\"],\"vr\":\"CS\"},\"00080020\":{\"Value\":[\"20161124\"],\"vr\":\"DA\"},\"00080030\":{\"Value\":[\"145137\"],\"vr\":\"TM\"},\"00080050\":{\"Value\":[\"\"],\"vr\":\"SH\"},\"00080061\":{\"Value\":[\"CT\"],\"vr\":\"CS\"},\"00080090\":{\"Value\":[\"\"],\"vr\":\"PN\"},\"00081030\":{\"Value\":[\"FACE\"],\"vr\":\"LO\"},\"00081190\":{\"Value\":[\"http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UR\"},\"00100010\":{\"Value\":[\"LUZIA BARROSO\"],\"vr\":\"PN\"},\"00100020\":{\"Value\":[\"25009\"],\"vr\":\"LO\"},\"00100030\":{\"Value\":[\"\"],\"vr\":\"DA\"},\"00100040\":{\"Value\":[\"F\"],\"vr\":\"CS\"},\"00101010\":{\"Value\":[\"047Y\"],\"vr\":\"AS\"},\"0020000D\":{\"Value\":[\"1.2.840.113619.2.22.288.1.14234.20161124.245137\"],\"vr\":\"UI\"},\"00200010\":{\"Value\":[\"14234\"],\"vr\":\"SH\"},\"00201206\":{\"Value\":[\"2\"],\"vr\":\"IS\"},\"00201208\":{\"Value\":[\"3\"],\"vr\":\"IS\"}}\n]\n"
      @search_study_with_include {:ok,
                                   [
                                     %{
                                       accession_number: "",
                                       modalitiesin_study: "CT",
                                       numberof_study_related_instances: "3",
                                       numberof_study_related_series: "2",
                                       patient_id: "25009",
                                       patients_age: "047Y",
                                       patients_birth_date: "",
                                       patients_name: "LUZIA BARROSO",
                                       patients_sex: "F",
                                       referring_physicians_name: "",
                                       retrieve_url: "http://localhost/dicom-web/studies/1.2.840.113619.2.22.288.1.14234.20161124.245137",
                                       specific_character_set: "ISO_IR 100",
                                       study_date: "20161124",
                                       study_description: "FACE",
                                       study_id: "14234",
                                       study_instance_uid: "1.2.840.113619.2.22.288.1.14234.20161124.245137",
                                       study_time: "145137"
                                     }
                                   ]
                                 }

      # DOWNLOAD
      # @study_resp {:ok,
      #               %HTTPoison.Response{
      #                 body: <<45, 45, 54, 51, 54, 53, 53, 100, 57, 99, 45, 100, 48, 53, 101, 45, 52, 49, 57, 49, 45, 56, 101, 51, 50, 45, 55, 99, 55, 99, 99, 55>>,
      #                 headers: [{"Content-Type", "multipart/related; type=application/dicom; boundary=63655d9c-d05e-4191-8e32-7c7cc74af597"}]
      #               }
      #             }
      # @study_files

    end
  end
end
