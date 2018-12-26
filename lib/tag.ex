# This file can be generated with:
# $ grep "  # (" tag.ex | sed 's/  # //' > tags
#
# and executing the following elixir script:
#
# File.stream!("gen.exs") |> Enum.each(&(if not Regex.match?(~r/^#|^IO.puts "#/, &1), do: IO.write "# #{&1}"))
# IO.puts "defmodule Exdcm.Tag do"
# for line <- File.stream!("tags") do
#   line = Regex.replace(~r/µ/, line, "u")
#   lf = String.split(Regex.replace(~r/[()']/, line, ""), " ")
#   tag = Regex.scan(~r/[0-9A-F]{4}/, Enum.at(lf, 0)) |> List.flatten |> Enum.join("")
#   fn_name = Regex.replace(~r/IDs/, Enum.at(lf, 1), "_ids")
#   fn_name = Regex.replace(~r/[A-Z]+[0-9]*_/, fn_name, &String.downcase/1)
#   fn_name = Regex.replace(~r/_{2,}|[\/&,-]/, Macro.underscore(fn_name), "_")
#   fn_name = Regex.replace(~r/^[0-9]/, fn_name, "_")
#   vr_types = Regex.scan(~r/[A-Z]{2}/, Enum.at(lf, 2)) |> List.flatten
#
#   IO.write "\n  # #{line}"
#   IO.puts "  # VR values: #{inspect vr_types}"
#   IO.puts "  def name(\"#{tag}\"), do: :#{fn_name}"
# end
# IO.puts "end"
defmodule Exorthanc.Tag do

  # (0000,0000) CommandGroupLength dvUL
  # VR values: ["UL"]
  def name("00000000"), do: :command_group_length

  # (0000,0001) CommandLengthtoEnd dvUL
  # VR values: ["UL"]
  def name("00000001"), do: :command_lengthto_end

  # (0000,0002) AffectedSOPClassUID dvUI
  # VR values: ["UI"]
  def name("00000002"), do: :affected_sop_class_uid

  # (0000,0003) RequestedSOPClassUID dvUI
  # VR values: ["UI"]
  def name("00000003"), do: :requested_sop_class_uid

  # (0000,0010) CommandRecognitionCode dvSH
  # VR values: ["SH"]
  def name("00000010"), do: :command_recognition_code

  # (0000,0100) CommandField dvUS
  # VR values: ["US"]
  def name("00000100"), do: :command_field

  # (0000,0110) MessageID dvUS
  # VR values: ["US"]
  def name("00000110"), do: :message_id

  # (0000,0120) MessageIDBeingRespondedTo dvUS
  # VR values: ["US"]
  def name("00000120"), do: :message_id_being_responded_to

  # (0000,0200) Initiator dvAE
  # VR values: ["AE"]
  def name("00000200"), do: :initiator

  # (0000,0300) Receiver dvAE
  # VR values: ["AE"]
  def name("00000300"), do: :receiver

  # (0000,0400) FindLocation dvAE
  # VR values: ["AE"]
  def name("00000400"), do: :find_location

  # (0000,0600) MoveDestination dvAE
  # VR values: ["AE"]
  def name("00000600"), do: :move_destination

  # (0000,0700) Priority dvUS
  # VR values: ["US"]
  def name("00000700"), do: :priority

  # (0000,0800) CommandDataSetType dvUS
  # VR values: ["US"]
  def name("00000800"), do: :command_data_set_type

  # (0000,0850) NumberofMatches dvUS
  # VR values: ["US"]
  def name("00000850"), do: :numberof_matches

  # (0000,0860) ResponseSequenceNumber dvUS
  # VR values: ["US"]
  def name("00000860"), do: :response_sequence_number

  # (0000,0900) Status dvUS
  # VR values: ["US"]
  def name("00000900"), do: :status

  # (0000,0901) OffendingElement dvAT
  # VR values: ["AT"]
  def name("00000901"), do: :offending_element

  # (0000,0902) ErrorComment dvLO
  # VR values: ["LO"]
  def name("00000902"), do: :error_comment

  # (0000,0903) ErrorID dvUS
  # VR values: ["US"]
  def name("00000903"), do: :error_id

  # (0000,1000) AffectedSOPInstanceUID dvUI
  # VR values: ["UI"]
  def name("00001000"), do: :affected_sop_instance_uid

  # (0000,1001) RequestedSOPInstanceUID dvUI
  # VR values: ["UI"]
  def name("00001001"), do: :requested_sop_instance_uid

  # (0000,1002) EventTypeID dvUS
  # VR values: ["US"]
  def name("00001002"), do: :event_type_id

  # (0000,1005) AttributeIdentifierList dvAT
  # VR values: ["AT"]
  def name("00001005"), do: :attribute_identifier_list

  # (0000,1008) ActionTypeID dvUS
  # VR values: ["US"]
  def name("00001008"), do: :action_type_id

  # (0000,1020) NumberofRemainingSub_operations dvUS
  # VR values: ["US"]
  def name("00001020"), do: :numberof_remaining_sub_operations

  # (0000,1021) NumberofCompletedSub_operations dvUS
  # VR values: ["US"]
  def name("00001021"), do: :numberof_completed_sub_operations

  # (0000,1022) NumberofFailedSub_operations dvUS
  # VR values: ["US"]
  def name("00001022"), do: :numberof_failed_sub_operations

  # (0000,1023) NumberofWarningSub_operations dvUS
  # VR values: ["US"]
  def name("00001023"), do: :numberof_warning_sub_operations

  # (0000,1030) MoveOriginatorApplicationEntityTitle dvAE
  # VR values: ["AE"]
  def name("00001030"), do: :move_originator_application_entity_title

  # (0000,1031) MoveOriginatorMessageID dvUS
  # VR values: ["US"]
  def name("00001031"), do: :move_originator_message_id

  # (0000,4000) DialogReceiver dvLT
  # VR values: ["LT"]
  def name("00004000"), do: :dialog_receiver

  # (0000,4010) TerminalType dvLT
  # VR values: ["LT"]
  def name("00004010"), do: :terminal_type

  # (0000,5010) MessageSetID dvSH
  # VR values: ["SH"]
  def name("00005010"), do: :message_set_id

  # (0000,5020) EndMessageID dvSH
  # VR values: ["SH"]
  def name("00005020"), do: :end_message_id

  # (0000,5110) DisplayFormat dvLT
  # VR values: ["LT"]
  def name("00005110"), do: :display_format

  # (0000,5120) PagePositionID dvLT
  # VR values: ["LT"]
  def name("00005120"), do: :page_position_id

  # (0000,5130) TextFormatID dvCS
  # VR values: ["CS"]
  def name("00005130"), do: :text_format_id

  # (0000,5140) Normal/Reverse dvCS
  # VR values: ["CS"]
  def name("00005140"), do: :normal__reverse

  # (0000,5150) AddGrayScale dvCS
  # VR values: ["CS"]
  def name("00005150"), do: :add_gray_scale

  # (0000,5160) Borders dvCS
  # VR values: ["CS"]
  def name("00005160"), do: :borders

  # (0000,5170) Copies dvIS
  # VR values: ["IS"]
  def name("00005170"), do: :copies

  # (0000,5180) CommandMagnificationType dvCS
  # VR values: ["CS"]
  def name("00005180"), do: :command_magnification_type

  # (0000,5190) Erase dvCS
  # VR values: ["CS"]
  def name("00005190"), do: :erase

  # (0000,51A0) Print dvCS
  # VR values: ["CS"]
  def name("000051A0"), do: :print

  # (0000,51B0) Overlays dvUS
  # VR values: ["US"]
  def name("000051B0"), do: :overlays

  # (0002,0000) FileMetaInformationGroupLength dvUL
  # VR values: ["UL"]
  def name("00020000"), do: :file_meta_information_group_length

  # (0002,0001) FileMetaInformationVersion dvOB
  # VR values: ["OB"]
  def name("00020001"), do: :file_meta_information_version

  # (0002,0002) MediaStorageSOPClassUID dvUI
  # VR values: ["UI"]
  def name("00020002"), do: :media_storage_sop_class_uid

  # (0002,0003) MediaStorageSOPInstanceUID dvUI
  # VR values: ["UI"]
  def name("00020003"), do: :media_storage_sop_instance_uid

  # (0002,0010) TransferSyntaxUID dvUI
  # VR values: ["UI"]
  def name("00020010"), do: :transfer_syntax_uid

  # (0002,0012) ImplementationClassUID dvUI
  # VR values: ["UI"]
  def name("00020012"), do: :implementation_class_uid

  # (0002,0013) ImplementationVersionName dvSH
  # VR values: ["SH"]
  def name("00020013"), do: :implementation_version_name

  # (0002,0016) SourceApplicationEntityTitle dvAE
  # VR values: ["AE"]
  def name("00020016"), do: :source_application_entity_title

  # (0002,0017) SendingApplicationEntityTitle dvAE
  # VR values: ["AE"]
  def name("00020017"), do: :sending_application_entity_title

  # (0002,0018) ReceivingApplicationEntityTitle dvAE
  # VR values: ["AE"]
  def name("00020018"), do: :receiving_application_entity_title

  # (0002,0100) PrivateInformationCreatorUID dvUI
  # VR values: ["UI"]
  def name("00020100"), do: :private_information_creator_uid

  # (0002,0102) PrivateInformation dvOB
  # VR values: ["OB"]
  def name("00020102"), do: :private_information

  # (0003,0000) Undocumented dvUS
  # VR values: ["US"]
  def name("00030000"), do: :undocumented

  # (0003,0008) Undocumented dvUS
  # VR values: ["US"]
  def name("00030008"), do: :undocumented

  # (0003,0011) Undocumented dvUS
  # VR values: ["US"]
  def name("00030011"), do: :undocumented

  # (0003,0012) Undocumented dvUL
  # VR values: ["UL"]
  def name("00030012"), do: :undocumented

  # (0003,0013) Undocumented dvDA
  # VR values: ["DA"]
  def name("00030013"), do: :undocumented

  # (0003,0014) Undocumented dvTM
  # VR values: ["TM"]
  def name("00030014"), do: :undocumented

  # (0003,0020) Undocumented dvUS
  # VR values: ["US"]
  def name("00030020"), do: :undocumented

  # (0003,0030) Undocumented dvDA
  # VR values: ["DA"]
  def name("00030030"), do: :undocumented

  # (0003,0031) Undocumented dvTM
  # VR values: ["TM"]
  def name("00030031"), do: :undocumented

  # (0004,0000) File_setGroupLength dvUL
  # VR values: ["UL"]
  def name("00040000"), do: :file_set_group_length

  # (0004,1130) File_setID dvCS
  # VR values: ["CS"]
  def name("00041130"), do: :file_set_id

  # (0004,1141) File_setDescriptorFileID dvCS
  # VR values: ["CS"]
  def name("00041141"), do: :file_set_descriptor_file_id

  # (0004,1142) SpecificCharacterSetofFile_setDescriptorFile dvCS
  # VR values: ["CS"]
  def name("00041142"), do: :specific_character_setof_file_set_descriptor_file

  # (0004,1200) OffsetoftheFirstDirectoryRecordoftheRootDirectoryEntity dvUL
  # VR values: ["UL"]
  def name("00041200"), do: :offsetofthe_first_directory_recordofthe_root_directory_entity

  # (0004,1202) OffsetoftheLastDirectoryRecordoftheRootDirectoryEntity dvUL
  # VR values: ["UL"]
  def name("00041202"), do: :offsetofthe_last_directory_recordofthe_root_directory_entity

  # (0004,1212) File_setConsistencyFlag dvUS
  # VR values: ["US"]
  def name("00041212"), do: :file_set_consistency_flag

  # (0004,1220) DirectoryRecordSequence dvSQ
  # VR values: ["SQ"]
  def name("00041220"), do: :directory_record_sequence

  # (0004,1400) OffsetoftheNextDirectoryRecord dvUL
  # VR values: ["UL"]
  def name("00041400"), do: :offsetofthe_next_directory_record

  # (0004,1410) RecordIn_useFlag dvUS
  # VR values: ["US"]
  def name("00041410"), do: :record_in_use_flag

  # (0004,1420) OffsetofReferencedLower_LevelDirectoryEntity dvUL
  # VR values: ["UL"]
  def name("00041420"), do: :offsetof_referenced_lower_level_directory_entity

  # (0004,1430) DirectoryRecordType dvCS
  # VR values: ["CS"]
  def name("00041430"), do: :directory_record_type

  # (0004,1432) PrivateRecordUID dvUI
  # VR values: ["UI"]
  def name("00041432"), do: :private_record_uid

  # (0004,1500) ReferencedFileID dvCS
  # VR values: ["CS"]
  def name("00041500"), do: :referenced_file_id

  # (0004,1504) MRDRDirectoryRecordOffset dvUL
  # VR values: ["UL"]
  def name("00041504"), do: :mrdr_directory_record_offset

  # (0004,1510) ReferencedSOPClassUIDinFile dvUI
  # VR values: ["UI"]
  def name("00041510"), do: :referenced_sop_class_ui_din_file

  # (0004,1511) ReferencedSOPInstanceUIDinFile dvUI
  # VR values: ["UI"]
  def name("00041511"), do: :referenced_sop_instance_ui_din_file

  # (0004,1512) ReferencedTransferSyntaxUIDinFile dvUI
  # VR values: ["UI"]
  def name("00041512"), do: :referenced_transfer_syntax_ui_din_file

  # (0004,151A) ReferencedRelatedGeneralSOPClassUIDinFile dvUI
  # VR values: ["UI"]
  def name("0004151A"), do: :referenced_related_general_sop_class_ui_din_file

  # (0004,1600) NumberofReferences dvUL
  # VR values: ["UL"]
  def name("00041600"), do: :numberof_references

  # (0005,0000) Undocumented dvUS
  # VR values: ["US"]
  def name("00050000"), do: :undocumented

  # (0006,0000) Undocumented dvUS
  # VR values: ["US"]
  def name("00060000"), do: :undocumented

  # (0008,0000) IdentifyingGroupLength dvUL
  # VR values: ["UL"]
  def name("00080000"), do: :identifying_group_length

  # (0008,0001) LengthtoEnd dvUL
  # VR values: ["UL"]
  def name("00080001"), do: :lengthto_end

  # (0008,0005) SpecificCharacterSet dvCS
  # VR values: ["CS"]
  def name("00080005"), do: :specific_character_set

  # (0008,0006) LanguageCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00080006"), do: :language_code_sequence

  # (0008,0008) ImageType dvCS
  # VR values: ["CS"]
  def name("00080008"), do: :image_type

  # (0008,0010) RecognitionCode dvSH
  # VR values: ["SH"]
  def name("00080010"), do: :recognition_code

  # (0008,0012) InstanceCreationDate dvDA
  # VR values: ["DA"]
  def name("00080012"), do: :instance_creation_date

  # (0008,0013) InstanceCreationTime dvTM
  # VR values: ["TM"]
  def name("00080013"), do: :instance_creation_time

  # (0008,0014) InstanceCreatorUID dvUI
  # VR values: ["UI"]
  def name("00080014"), do: :instance_creator_uid

  # (0008,0015) InstanceCoercionDate/Time dvDT
  # VR values: ["DT"]
  def name("00080015"), do: :instance_coercion_date__time

  # (0008,0016) SOPClassUID dvUI
  # VR values: ["UI"]
  def name("00080016"), do: :sop_class_uid

  # (0008,0018) SOPInstanceUID dvUI
  # VR values: ["UI"]
  def name("00080018"), do: :sop_instance_uid

  # (0008,001A) RelatedGeneralSOPClassUID dvUI
  # VR values: ["UI"]
  def name("0008001A"), do: :related_general_sop_class_uid

  # (0008,001B) OriginalSpecializedSOPClassUID dvUI
  # VR values: ["UI"]
  def name("0008001B"), do: :original_specialized_sop_class_uid

  # (0008,0020) StudyDate dvDA
  # VR values: ["DA"]
  def name("00080020"), do: :study_date

  # (0008,0021) SeriesDate dvDA
  # VR values: ["DA"]
  def name("00080021"), do: :series_date

  # (0008,0022) AcquisitionDate dvDA
  # VR values: ["DA"]
  def name("00080022"), do: :acquisition_date

  # (0008,0023) ContentDate dvDA
  # VR values: ["DA"]
  def name("00080023"), do: :content_date

  # (0008,0024) OverlayDate dvDA
  # VR values: ["DA"]
  def name("00080024"), do: :overlay_date

  # (0008,0025) CurveDate dvDA
  # VR values: ["DA"]
  def name("00080025"), do: :curve_date

  # (0008,002A) AcquisitionDate/Time dvDT
  # VR values: ["DT"]
  def name("0008002A"), do: :acquisition_date__time

  # (0008,0030) StudyTime dvTM
  # VR values: ["TM"]
  def name("00080030"), do: :study_time

  # (0008,0031) SeriesTime dvTM
  # VR values: ["TM"]
  def name("00080031"), do: :series_time

  # (0008,0032) AcquisitionTime dvTM
  # VR values: ["TM"]
  def name("00080032"), do: :acquisition_time

  # (0008,0033) ContentTime dvTM
  # VR values: ["TM"]
  def name("00080033"), do: :content_time

  # (0008,0034) OverlayTime dvTM
  # VR values: ["TM"]
  def name("00080034"), do: :overlay_time

  # (0008,0035) CurveTime dvTM
  # VR values: ["TM"]
  def name("00080035"), do: :curve_time

  # (0008,0040) DataSetType dvUS
  # VR values: ["US"]
  def name("00080040"), do: :data_set_type

  # (0008,0041) DataSetSubtype dvLO
  # VR values: ["LO"]
  def name("00080041"), do: :data_set_subtype

  # (0008,0042) NuclearMedicineSeriesType dvCS
  # VR values: ["CS"]
  def name("00080042"), do: :nuclear_medicine_series_type

  # (0008,0050) AccessionNumber dvSH
  # VR values: ["SH"]
  def name("00080050"), do: :accession_number

  # (0008,0051) IssuerofAccessionNumberSequence dvSQ
  # VR values: ["SQ"]
  def name("00080051"), do: :issuerof_accession_number_sequence

  # (0008,0052) Query/RetrieveLevel dvCS
  # VR values: ["CS"]
  def name("00080052"), do: :query__retrieve_level

  # (0008,0053) Query/RetrieveView dvCS
  # VR values: ["CS"]
  def name("00080053"), do: :query__retrieve_view

  # (0008,0054) RetrieveAETitle dvAE
  # VR values: ["AE"]
  def name("00080054"), do: :retrieve_ae_title

  # (0008,0056) InstanceAvailability dvCS
  # VR values: ["CS"]
  def name("00080056"), do: :instance_availability

  # (0008,0058) FailedSOPInstanceUIDList dvUI
  # VR values: ["UI"]
  def name("00080058"), do: :failed_sop_instance_uid_list

  # (0008,0060) Modality dvCS
  # VR values: ["CS"]
  def name("00080060"), do: :modality

  # (0008,0061) ModalitiesinStudy dvCS
  # VR values: ["CS"]
  def name("00080061"), do: :modalitiesin_study

  # (0008,0062) SOPClassesinStudy dvUI
  # VR values: ["UI"]
  def name("00080062"), do: :sop_classesin_study

  # (0008,0064) ConversionType dvCS
  # VR values: ["CS"]
  def name("00080064"), do: :conversion_type

  # (0008,0068) PresentationIntentType dvCS
  # VR values: ["CS"]
  def name("00080068"), do: :presentation_intent_type

  # (0008,0070) Manufacturer dvLO
  # VR values: ["LO"]
  def name("00080070"), do: :manufacturer

  # (0008,0080) InstitutionName dvLO
  # VR values: ["LO"]
  def name("00080080"), do: :institution_name

  # (0008,0081) InstitutionAddress dvST
  # VR values: ["ST"]
  def name("00080081"), do: :institution_address

  # (0008,0082) InstitutionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00080082"), do: :institution_code_sequence

  # (0008,0090) ReferringPhysician'sName dvPN
  # VR values: ["PN"]
  def name("00080090"), do: :referring_physicians_name

  # (0008,0092) ReferringPhysician'sAddress dvST
  # VR values: ["ST"]
  def name("00080092"), do: :referring_physicians_address

  # (0008,0094) ReferringPhysician'sTelephoneNumbers dvSH
  # VR values: ["SH"]
  def name("00080094"), do: :referring_physicians_telephone_numbers

  # (0008,0096) ReferringPhysicianIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00080096"), do: :referring_physician_identification_sequence

  # (0008,0100) CodeValue dvSH
  # VR values: ["SH"]
  def name("00080100"), do: :code_value

  # (0008,0101) ExtendedCodeValue dvLO
  # VR values: ["LO"]
  def name("00080101"), do: :extended_code_value

  # (0008,0102) CodingSchemeDesignator dvSH
  # VR values: ["SH"]
  def name("00080102"), do: :coding_scheme_designator

  # (0008,0103) CodingSchemeVersion dvSH
  # VR values: ["SH"]
  def name("00080103"), do: :coding_scheme_version

  # (0008,0104) CodeMeaning dvLO
  # VR values: ["LO"]
  def name("00080104"), do: :code_meaning

  # (0008,0105) MappingResource dvCS
  # VR values: ["CS"]
  def name("00080105"), do: :mapping_resource

  # (0008,0106) ContextGroupVersion dvDT
  # VR values: ["DT"]
  def name("00080106"), do: :context_group_version

  # (0008,0107) ContextGroupLocalVersion dvDT
  # VR values: ["DT"]
  def name("00080107"), do: :context_group_local_version

  # (0008,0108) ExtendedCodeMeaning dvLT
  # VR values: ["LT"]
  def name("00080108"), do: :extended_code_meaning

  # (0008,010B) ContextGroupExtensionFlag dvCS
  # VR values: ["CS"]
  def name("0008010B"), do: :context_group_extension_flag

  # (0008,010C) CodingSchemeUID dvUI
  # VR values: ["UI"]
  def name("0008010C"), do: :coding_scheme_uid

  # (0008,010D) ContextGroupExtensionCreatorUID dvUI
  # VR values: ["UI"]
  def name("0008010D"), do: :context_group_extension_creator_uid

  # (0008,010F) ContextIdentifier dvCS
  # VR values: ["CS"]
  def name("0008010F"), do: :context_identifier

  # (0008,0110) CodingSchemeIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00080110"), do: :coding_scheme_identification_sequence

  # (0008,0112) CodingSchemeRegistry dvLO
  # VR values: ["LO"]
  def name("00080112"), do: :coding_scheme_registry

  # (0008,0114) CodingSchemeExternalID dvST
  # VR values: ["ST"]
  def name("00080114"), do: :coding_scheme_external_id

  # (0008,0115) CodingSchemeName dvST
  # VR values: ["ST"]
  def name("00080115"), do: :coding_scheme_name

  # (0008,0116) CodingSchemeResponsibleOrganization dvST
  # VR values: ["ST"]
  def name("00080116"), do: :coding_scheme_responsible_organization

  # (0008,0117) ContextUID dvUI
  # VR values: ["UI"]
  def name("00080117"), do: :context_uid

  # (0008,0201) TimezoneOffsetFromUTC dvSH
  # VR values: ["SH"]
  def name("00080201"), do: :timezone_offset_from_utc

  # (0008,1000) NetworkID dvAE
  # VR values: ["AE"]
  def name("00081000"), do: :network_id

  # (0008,1010) StationName dvSH
  # VR values: ["SH"]
  def name("00081010"), do: :station_name

  # (0008,1030) StudyDescription dvLO
  # VR values: ["LO"]
  def name("00081030"), do: :study_description

  # (0008,1032) ProcedureCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00081032"), do: :procedure_code_sequence

  # (0008,103E) SeriesDescription dvLO
  # VR values: ["LO"]
  def name("0008103E"), do: :series_description

  # (0008,103F) SeriesDescriptionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0008103F"), do: :series_description_code_sequence

  # (0008,1040) InstitutionalDepartmentName dvLO
  # VR values: ["LO"]
  def name("00081040"), do: :institutional_department_name

  # (0008,1048) Physician(s)ofRecord dvPN
  # VR values: ["PN"]
  def name("00081048"), do: :physiciansof_record

  # (0008,1049) Physician(s)ofRecordIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00081049"), do: :physiciansof_record_identification_sequence

  # (0008,1050) PerformingPhysician'sName dvPN
  # VR values: ["PN"]
  def name("00081050"), do: :performing_physicians_name

  # (0008,1052) PerformingPhysicianIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00081052"), do: :performing_physician_identification_sequence

  # (0008,1060) NameofPhysician(s)ReadingStudy dvPN
  # VR values: ["PN"]
  def name("00081060"), do: :nameof_physicians_reading_study

  # (0008,1062) Physician(s)ReadingStudyIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00081062"), do: :physicians_reading_study_identification_sequence

  # (0008,1070) Operators'Name dvPN
  # VR values: ["PN"]
  def name("00081070"), do: :operators_name

  # (0008,1072) OperatorIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00081072"), do: :operator_identification_sequence

  # (0008,1080) AdmittingDiagnosesDescription dvLO
  # VR values: ["LO"]
  def name("00081080"), do: :admitting_diagnoses_description

  # (0008,1084) AdmittingDiagnosesCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00081084"), do: :admitting_diagnoses_code_sequence

  # (0008,1090) Manufacturer'sModelName dvLO
  # VR values: ["LO"]
  def name("00081090"), do: :manufacturers_model_name

  # (0008,1100) ReferencedResultsSequence dvSQ
  # VR values: ["SQ"]
  def name("00081100"), do: :referenced_results_sequence

  # (0008,1110) ReferencedStudySequence dvSQ
  # VR values: ["SQ"]
  def name("00081110"), do: :referenced_study_sequence

  # (0008,1111) ReferencedPerformedProcedureStepSequence dvSQ
  # VR values: ["SQ"]
  def name("00081111"), do: :referenced_performed_procedure_step_sequence

  # (0008,1115) ReferencedSeriesSequence dvSQ
  # VR values: ["SQ"]
  def name("00081115"), do: :referenced_series_sequence

  # (0008,1120) ReferencedPatientSequence dvSQ
  # VR values: ["SQ"]
  def name("00081120"), do: :referenced_patient_sequence

  # (0008,1125) ReferencedVisitSequence dvSQ
  # VR values: ["SQ"]
  def name("00081125"), do: :referenced_visit_sequence

  # (0008,1130) ReferencedOverlaySequence dvSQ
  # VR values: ["SQ"]
  def name("00081130"), do: :referenced_overlay_sequence

  # (0008,1134) ReferencedStereometricInstanceSequence dvSQ
  # VR values: ["SQ"]
  def name("00081134"), do: :referenced_stereometric_instance_sequence

  # (0008,113A) ReferencedWaveformSequence dvSQ
  # VR values: ["SQ"]
  def name("0008113A"), do: :referenced_waveform_sequence

  # (0008,1140) ReferencedImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00081140"), do: :referenced_image_sequence

  # (0008,1145) ReferencedCurveSequence dvSQ
  # VR values: ["SQ"]
  def name("00081145"), do: :referenced_curve_sequence

  # (0008,1148) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00081148"), do: :undocumented

  # (0008,114A) ReferencedInstanceSequence dvSQ
  # VR values: ["SQ"]
  def name("0008114A"), do: :referenced_instance_sequence

  # (0008,114B) ReferencedRealWorldValueMappingInstanceSequence dvSQ
  # VR values: ["SQ"]
  def name("0008114B"), do: :referenced_real_world_value_mapping_instance_sequence

  # (0008,114C) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("0008114C"), do: :undocumented

  # (0008,1150) ReferencedSOPClassUID dvUI
  # VR values: ["UI"]
  def name("00081150"), do: :referenced_sop_class_uid

  # (0008,1155) ReferencedSOPInstanceUID dvUI
  # VR values: ["UI"]
  def name("00081155"), do: :referenced_sop_instance_uid

  # (0008,115A) SOPClassesSupported dvUI
  # VR values: ["UI"]
  def name("0008115A"), do: :sop_classes_supported

  # (0008,1160) ReferencedFrameNumber dvIS
  # VR values: ["IS"]
  def name("00081160"), do: :referenced_frame_number

  # (0008,1161) SimpleFrameList dvUL
  # VR values: ["UL"]
  def name("00081161"), do: :simple_frame_list

  # (0008,1162) CalculatedFrameList dvUL
  # VR values: ["UL"]
  def name("00081162"), do: :calculated_frame_list

  # (0008,1163) TimeRange dvFD
  # VR values: ["FD"]
  def name("00081163"), do: :time_range

  # (0008,1164) FrameExtractionSequence dvSQ
  # VR values: ["SQ"]
  def name("00081164"), do: :frame_extraction_sequence

  # (0008,1167) Multi_frameSourceSOPInstanceUID dvUI
  # VR values: ["UI"]
  def name("00081167"), do: :multi_frame_source_sop_instance_uid

  # (0008,1190) RetrieveURL dvUR
  # VR values: ["UR"]
  def name("00081190"), do: :retrieve_url

  # (0008,1195) TransactionUID dvUI
  # VR values: ["UI"]
  def name("00081195"), do: :transaction_uid

  # (0008,1196) WarningReason dvUS
  # VR values: ["US"]
  def name("00081196"), do: :warning_reason

  # (0008,1197) FailureReason dvUS
  # VR values: ["US"]
  def name("00081197"), do: :failure_reason

  # (0008,1198) FailedSOPSequence dvSQ
  # VR values: ["SQ"]
  def name("00081198"), do: :failed_sop_sequence

  # (0008,1199) ReferencedSOPSequence dvSQ
  # VR values: ["SQ"]
  def name("00081199"), do: :referenced_sop_sequence

  # (0008,1200) StudiesContainingOtherReferencedInstancesSequence dvSQ
  # VR values: ["SQ"]
  def name("00081200"), do: :studies_containing_other_referenced_instances_sequence

  # (0008,1250) RelatedSeriesSequence dvSQ
  # VR values: ["SQ"]
  def name("00081250"), do: :related_series_sequence

  # (0008,2110) LossyImageCompression(Retired) dvCS
  # VR values: ["CS"]
  def name("00082110"), do: :lossy_image_compression_retired

  # (0008,2111) DerivationDescription dvST
  # VR values: ["ST"]
  def name("00082111"), do: :derivation_description

  # (0008,2112) SourceImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00082112"), do: :source_image_sequence

  # (0008,2120) StageName dvSH
  # VR values: ["SH"]
  def name("00082120"), do: :stage_name

  # (0008,2122) StageNumber dvIS
  # VR values: ["IS"]
  def name("00082122"), do: :stage_number

  # (0008,2124) NumberofStages dvIS
  # VR values: ["IS"]
  def name("00082124"), do: :numberof_stages

  # (0008,2127) ViewName dvSH
  # VR values: ["SH"]
  def name("00082127"), do: :view_name

  # (0008,2128) ViewNumber dvIS
  # VR values: ["IS"]
  def name("00082128"), do: :view_number

  # (0008,2129) NumberofEventTimers dvIS
  # VR values: ["IS"]
  def name("00082129"), do: :numberof_event_timers

  # (0008,212A) NumberofViewsinStage dvIS
  # VR values: ["IS"]
  def name("0008212A"), do: :numberof_viewsin_stage

  # (0008,2130) EventElapsedTime(s) dvDS
  # VR values: ["DS"]
  def name("00082130"), do: :event_elapsed_times

  # (0008,2132) EventTimerName(s) dvLO
  # VR values: ["LO"]
  def name("00082132"), do: :event_timer_names

  # (0008,2133) EventTimerSequence dvSQ
  # VR values: ["SQ"]
  def name("00082133"), do: :event_timer_sequence

  # (0008,2134) EventTimeOffset dvFD
  # VR values: ["FD"]
  def name("00082134"), do: :event_time_offset

  # (0008,2135) EventCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00082135"), do: :event_code_sequence

  # (0008,2142) StartTrim dvIS
  # VR values: ["IS"]
  def name("00082142"), do: :start_trim

  # (0008,2143) StopTrim dvIS
  # VR values: ["IS"]
  def name("00082143"), do: :stop_trim

  # (0008,2144) RecommendedDisplayFrameRate dvIS
  # VR values: ["IS"]
  def name("00082144"), do: :recommended_display_frame_rate

  # (0008,2200) TransducerPosition dvCS
  # VR values: ["CS"]
  def name("00082200"), do: :transducer_position

  # (0008,2204) TransducerOrientation dvCS
  # VR values: ["CS"]
  def name("00082204"), do: :transducer_orientation

  # (0008,2208) AnatomicStructure dvCS
  # VR values: ["CS"]
  def name("00082208"), do: :anatomic_structure

  # (0008,2218) AnatomicRegionSequence dvSQ
  # VR values: ["SQ"]
  def name("00082218"), do: :anatomic_region_sequence

  # (0008,2220) AnatomicRegionModifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00082220"), do: :anatomic_region_modifier_sequence

  # (0008,2228) PrimaryAnatomicStructureSequence dvSQ
  # VR values: ["SQ"]
  def name("00082228"), do: :primary_anatomic_structure_sequence

  # (0008,2229) AnatomicStructure,SpaceorRegionSequence dvSQ
  # VR values: ["SQ"]
  def name("00082229"), do: :anatomic_structure__spaceor_region_sequence

  # (0008,2230) PrimaryAnatomicStructureModifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00082230"), do: :primary_anatomic_structure_modifier_sequence

  # (0008,2240) TransducerPositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00082240"), do: :transducer_position_sequence

  # (0008,2242) TransducerPositionModifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00082242"), do: :transducer_position_modifier_sequence

  # (0008,2244) TransducerOrientationSequence dvSQ
  # VR values: ["SQ"]
  def name("00082244"), do: :transducer_orientation_sequence

  # (0008,2246) TransducerOrientationModifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00082246"), do: :transducer_orientation_modifier_sequence

  # (0008,2251) AnatomicStructureSpaceorRegionCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("00082251"), do: :anatomic_structure_spaceor_region_code_sequence_trial

  # (0008,2253) AnatomicPortalofEntranceCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("00082253"), do: :anatomic_portalof_entrance_code_sequence_trial

  # (0008,2255) AnatomicApproachDirectionCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("00082255"), do: :anatomic_approach_direction_code_sequence_trial

  # (0008,2256) AnatomicPerspectiveDescription(Trial) dvST
  # VR values: ["ST"]
  def name("00082256"), do: :anatomic_perspective_description_trial

  # (0008,2257) AnatomicPerspectiveCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("00082257"), do: :anatomic_perspective_code_sequence_trial

  # (0008,2258) AnatomicLocationofExaminingInstrumentDescription(Trial) dvST
  # VR values: ["ST"]
  def name("00082258"), do: :anatomic_locationof_examining_instrument_description_trial

  # (0008,2259) AnatomicLocationofExaminingInstrumentCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("00082259"), do: :anatomic_locationof_examining_instrument_code_sequence_trial

  # (0008,225A) AnatomicStructureSpaceorRegionModifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0008225A"), do: :anatomic_structure_spaceor_region_modifier_code_sequence_trial

  # (0008,225C) OnAxisBackgroundAnatomicStructureCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0008225C"), do: :on_axis_background_anatomic_structure_code_sequence_trial

  # (0008,3001) AlternateRepresentationSequence dvSQ
  # VR values: ["SQ"]
  def name("00083001"), do: :alternate_representation_sequence

  # (0008,3010) IrradiationEventUID dvUI
  # VR values: ["UI"]
  def name("00083010"), do: :irradiation_event_uid

  # (0008,3011) SourceIrradiationEventSequence dvSQ
  # VR values: ["SQ"]
  def name("00083011"), do: :source_irradiation_event_sequence

  # (0008,3012) RadiopharmaceuticalAdministrationEventUID dvUI
  # VR values: ["UI"]
  def name("00083012"), do: :radiopharmaceutical_administration_event_uid

  # (0008,4000) IdentifyingComments dvLT
  # VR values: ["LT"]
  def name("00084000"), do: :identifying_comments

  # (0008,9007) FrameType dvCS
  # VR values: ["CS"]
  def name("00089007"), do: :frame_type

  # (0008,9092) ReferencedImageEvidenceSequence dvSQ
  # VR values: ["SQ"]
  def name("00089092"), do: :referenced_image_evidence_sequence

  # (0008,9121) ReferencedRawDataSequence dvSQ
  # VR values: ["SQ"]
  def name("00089121"), do: :referenced_raw_data_sequence

  # (0008,9123) Creator_VersionUID dvUI
  # VR values: ["UI"]
  def name("00089123"), do: :creator_version_uid

  # (0008,9124) DerivationImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00089124"), do: :derivation_image_sequence

  # (0008,9154) SourceImageEvidenceSequence dvSQ
  # VR values: ["SQ"]
  def name("00089154"), do: :source_image_evidence_sequence

  # (0008,9205) PixelPresentation dvCS
  # VR values: ["CS"]
  def name("00089205"), do: :pixel_presentation

  # (0008,9206) VolumetricProperties dvCS
  # VR values: ["CS"]
  def name("00089206"), do: :volumetric_properties

  # (0008,9207) VolumeBasedCalculationTechnique dvCS
  # VR values: ["CS"]
  def name("00089207"), do: :volume_based_calculation_technique

  # (0008,9208) ComplexImageComponent dvCS
  # VR values: ["CS"]
  def name("00089208"), do: :complex_image_component

  # (0008,9209) AcquisitionContrast dvCS
  # VR values: ["CS"]
  def name("00089209"), do: :acquisition_contrast

  # (0008,9215) DerivationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00089215"), do: :derivation_code_sequence

  # (0008,9237) ReferencedPresentationStateSequence dvSQ
  # VR values: ["SQ"]
  def name("00089237"), do: :referenced_presentation_state_sequence

  # (0008,9410) ReferencedOtherPlaneSequence dvSQ
  # VR values: ["SQ"]
  def name("00089410"), do: :referenced_other_plane_sequence

  # (0008,9458) FrameDisplaySequence dvSQ
  # VR values: ["SQ"]
  def name("00089458"), do: :frame_display_sequence

  # (0008,9459) RecommendedDisplayFrameRateinFloat dvFL
  # VR values: ["FL"]
  def name("00089459"), do: :recommended_display_frame_ratein_float

  # (0008,9460) SkipFrameRangeFlag dvCS
  # VR values: ["CS"]
  def name("00089460"), do: :skip_frame_range_flag

  # (0009,0000) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090000"), do: :undocumented

  # (0009,0001) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090001"), do: :undocumented

  # (0009,0002) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090002"), do: :undocumented

  # (0009,0003) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090003"), do: :undocumented

  # (0009,0004) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090004"), do: :undocumented

  # (0009,0005) Undocumented dvUN
  # VR values: ["UN"]
  def name("00090005"), do: :undocumented

  # (0009,0006) Undocumented dvUN
  # VR values: ["UN"]
  def name("00090006"), do: :undocumented

  # (0009,0007) Undocumented dvUN
  # VR values: ["UN"]
  def name("00090007"), do: :undocumented

  # (0009,0008) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090008"), do: :undocumented

  # (0009,0009) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090009"), do: :undocumented

  # (0009,000A) Undocumented dvIS
  # VR values: ["IS"]
  def name("0009000A"), do: :undocumented

  # (0009,000B) Undocumented dvIS
  # VR values: ["IS"]
  def name("0009000B"), do: :undocumented

  # (0009,000C) Undocumented dvIS
  # VR values: ["IS"]
  def name("0009000C"), do: :undocumented

  # (0009,000D) Undocumented dvIS
  # VR values: ["IS"]
  def name("0009000D"), do: :undocumented

  # (0009,000E) Undocumented dvIS
  # VR values: ["IS"]
  def name("0009000E"), do: :undocumented

  # (0009,000F) Undocumented dvUN
  # VR values: ["UN"]
  def name("0009000F"), do: :undocumented

  # (0009,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090010"), do: :undocumented

  # (0009,0011) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090011"), do: :undocumented

  # (0009,0012) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090012"), do: :undocumented

  # (0009,0013) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090013"), do: :undocumented

  # (0009,0014) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090014"), do: :undocumented

  # (0009,0015) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090015"), do: :undocumented

  # (0009,0016) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090016"), do: :undocumented

  # (0009,0017) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090017"), do: :undocumented

  # (0009,0018) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090018"), do: :undocumented

  # (0009,001A) Undocumented dvUS
  # VR values: ["US"]
  def name("0009001A"), do: :undocumented

  # (0009,001E) Undocumented dvUI
  # VR values: ["UI"]
  def name("0009001E"), do: :undocumented

  # (0009,0020) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090020"), do: :undocumented

  # (0009,0021) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090021"), do: :undocumented

  # (0009,0022) Undocumented dvSH
  # VR values: ["SH"]
  def name("00090022"), do: :undocumented

  # (0009,0023) Undocumented dvSL
  # VR values: ["SL"]
  def name("00090023"), do: :undocumented

  # (0009,0024) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090024"), do: :undocumented

  # (0009,0025) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090025"), do: :undocumented

  # (0009,0026) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090026"), do: :undocumented

  # (0009,0027) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090027"), do: :undocumented

  # (0009,0029) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090029"), do: :undocumented

  # (0009,002A) Undocumented dvSL
  # VR values: ["SL"]
  def name("0009002A"), do: :undocumented

  # (0009,002C) Undocumented dvLO
  # VR values: ["LO"]
  def name("0009002C"), do: :undocumented

  # (0009,002D) Undocumented dvSL
  # VR values: ["SL"]
  def name("0009002D"), do: :undocumented

  # (0009,002E) Undocumented dvFD
  # VR values: ["FD"]
  def name("0009002E"), do: :undocumented

  # (0009,002F) Undocumented dvLT
  # VR values: ["LT"]
  def name("0009002F"), do: :undocumented

  # (0009,0030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090030"), do: :undocumented

  # (0009,0031) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090031"), do: :undocumented

  # (0009,0032) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090032"), do: :undocumented

  # (0009,0034) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090034"), do: :undocumented

  # (0009,0035) Undocumented dvSL
  # VR values: ["SL"]
  def name("00090035"), do: :undocumented

  # (0009,0037) Undocumented dvSL
  # VR values: ["SL"]
  def name("00090037"), do: :undocumented

  # (0009,0038) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090038"), do: :undocumented

  # (0009,0039) Undocumented dvSL
  # VR values: ["SL"]
  def name("00090039"), do: :undocumented

  # (0009,003A) Undocumented dvSL
  # VR values: ["SL"]
  def name("0009003A"), do: :undocumented

  # (0009,003E) Undocumented dvUS
  # VR values: ["US"]
  def name("0009003E"), do: :undocumented

  # (0009,003F) Undocumented dvUS
  # VR values: ["US"]
  def name("0009003F"), do: :undocumented

  # (0009,0040) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090040"), do: :undocumented

  # (0009,0041) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090041"), do: :undocumented

  # (0009,0042) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090042"), do: :undocumented

  # (0009,0043) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090043"), do: :undocumented

  # (0009,0050) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090050"), do: :undocumented

  # (0009,0051) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00090051"), do: :undocumented

  # (0009,0060) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090060"), do: :undocumented

  # (0009,0061) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090061"), do: :undocumented

  # (0009,0070) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090070"), do: :undocumented

  # (0009,0080) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090080"), do: :undocumented

  # (0009,0091) Undocumented dvLT
  # VR values: ["LT"]
  def name("00090091"), do: :undocumented

  # (0009,00E2) Undocumented dvLT
  # VR values: ["LT"]
  def name("000900E2"), do: :undocumented

  # (0009,00E3) Undocumented dvUI
  # VR values: ["UI"]
  def name("000900E3"), do: :undocumented

  # (0009,00E6) Undocumented dvSH
  # VR values: ["SH"]
  def name("000900E6"), do: :undocumented

  # (0009,00E7) Undocumented dvUL
  # VR values: ["UL"]
  def name("000900E7"), do: :undocumented

  # (0009,00E8) Undocumented dvUL
  # VR values: ["UL"]
  def name("000900E8"), do: :undocumented

  # (0009,00E9) Undocumented dvSL
  # VR values: ["SL"]
  def name("000900E9"), do: :undocumented

  # (0009,00F2) Undocumented dvUN
  # VR values: ["UN"]
  def name("000900F2"), do: :undocumented

  # (0009,00F3) Undocumented dvUN
  # VR values: ["UN"]
  def name("000900F3"), do: :undocumented

  # (0009,00F4) Undocumented dvLT
  # VR values: ["LT"]
  def name("000900F4"), do: :undocumented

  # (0009,00F5) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("000900F5"), do: :undocumented

  # (0009,00F6) Undocumented dvLT
  # VR values: ["LT"]
  def name("000900F6"), do: :undocumented

  # (0009,00F8) Undocumented dvUS
  # VR values: ["US"]
  def name("000900F8"), do: :undocumented

  # (0009,00FB) Undocumented dvIS
  # VR values: ["IS"]
  def name("000900FB"), do: :undocumented

  # (0009,1002) SuiteID dvOB
  # VR values: ["OB"]
  def name("00091002"), do: :suite_id

  # (0009,1003) Undocumented dvOB
  # VR values: ["OB"]
  def name("00091003"), do: :undocumented

  # (0009,1010) Undocumented dvUN
  # VR values: ["UN"]
  def name("00091010"), do: :undocumented

  # (0010,0000) PatientGroupLength dvUL
  # VR values: ["UL"]
  def name("00100000"), do: :patient_group_length

  # (0010,0010) Patient'sName dvPN
  # VR values: ["PN"]
  def name("00100010"), do: :patients_name

  # (0010,0020) PatientID dvLO
  # VR values: ["LO"]
  def name("00100020"), do: :patient_id

  # (0010,0021) IssuerofPatientID dvLO
  # VR values: ["LO"]
  def name("00100021"), do: :issuerof_patient_id

  # (0010,0022) TypeofPatientID dvCS
  # VR values: ["CS"]
  def name("00100022"), do: :typeof_patient_id

  # (0010,0024) IssuerofPatientIDQualifiersSequence dvSQ
  # VR values: ["SQ"]
  def name("00100024"), do: :issuerof_patient_id_qualifiers_sequence

  # (0010,0030) Patient'sBirthDate dvDA
  # VR values: ["DA"]
  def name("00100030"), do: :patients_birth_date

  # (0010,0032) Patient'sBirthTime dvTM
  # VR values: ["TM"]
  def name("00100032"), do: :patients_birth_time

  # (0010,0040) Patient'sSex dvCS
  # VR values: ["CS"]
  def name("00100040"), do: :patients_sex

  # (0010,0050) Patient'sInsurancePlanCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00100050"), do: :patients_insurance_plan_code_sequence

  # (0010,0101) Patient'sPrimaryLanguageCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00100101"), do: :patients_primary_language_code_sequence

  # (0010,0102) Patient'sPrimaryLanguageModifierCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00100102"), do: :patients_primary_language_modifier_code_sequence

  # (0010,0200) QualityControlSubject dvCS
  # VR values: ["CS"]
  def name("00100200"), do: :quality_control_subject

  # (0010,0201) QualityControlSubjectTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00100201"), do: :quality_control_subject_type_code_sequence

  # (0010,1000) OtherPatientIDs dvLO
  # VR values: ["LO"]
  def name("00101000"), do: :other_patient_ids

  # (0010,1001) OtherPatientNames dvPN
  # VR values: ["PN"]
  def name("00101001"), do: :other_patient_names

  # (0010,1002) OtherPatientIDsSequence dvSQ
  # VR values: ["SQ"]
  def name("00101002"), do: :other_patient_ids_sequence

  # (0010,1005) Patient'sBirthName dvPN
  # VR values: ["PN"]
  def name("00101005"), do: :patients_birth_name

  # (0010,1010) Patient'sAge dvAS
  # VR values: ["AS"]
  def name("00101010"), do: :patients_age

  # (0010,1020) Patient'sSize dvDS
  # VR values: ["DS"]
  def name("00101020"), do: :patients_size

  # (0010,1021) Patient'sSizeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00101021"), do: :patients_size_code_sequence

  # (0010,1030) Patient'sWeight dvDS
  # VR values: ["DS"]
  def name("00101030"), do: :patients_weight

  # (0010,1040) Patient'sAddress dvLO
  # VR values: ["LO"]
  def name("00101040"), do: :patients_address

  # (0010,1050) InsurancePlanIdentification dvLO
  # VR values: ["LO"]
  def name("00101050"), do: :insurance_plan_identification

  # (0010,1060) Patient'sMother'sBirthName dvPN
  # VR values: ["PN"]
  def name("00101060"), do: :patients_mothers_birth_name

  # (0010,1080) MilitaryRank dvLO
  # VR values: ["LO"]
  def name("00101080"), do: :military_rank

  # (0010,1081) BranchofService dvLO
  # VR values: ["LO"]
  def name("00101081"), do: :branchof_service

  # (0010,1090) MedicalRecordLocator dvLO
  # VR values: ["LO"]
  def name("00101090"), do: :medical_record_locator

  # (0010,1100) ReferencedPatientPhotoSequence dvSQ
  # VR values: ["SQ"]
  def name("00101100"), do: :referenced_patient_photo_sequence

  # (0010,2000) MedicalAlerts dvLO
  # VR values: ["LO"]
  def name("00102000"), do: :medical_alerts

  # (0010,2110) Allergies dvLO
  # VR values: ["LO"]
  def name("00102110"), do: :allergies

  # (0010,2150) CountryofResidence dvLO
  # VR values: ["LO"]
  def name("00102150"), do: :countryof_residence

  # (0010,2152) RegionofResidence dvLO
  # VR values: ["LO"]
  def name("00102152"), do: :regionof_residence

  # (0010,2154) Patient'sTelephoneNumbers dvSH
  # VR values: ["SH"]
  def name("00102154"), do: :patients_telephone_numbers

  # (0010,2160) EthnicGroup dvSH
  # VR values: ["SH"]
  def name("00102160"), do: :ethnic_group

  # (0010,2180) Occupation dvSH
  # VR values: ["SH"]
  def name("00102180"), do: :occupation

  # (0010,21A0) SmokingStatus dvCS
  # VR values: ["CS"]
  def name("001021A0"), do: :smoking_status

  # (0010,21B0) AdditionalPatientHistory dvLT
  # VR values: ["LT"]
  def name("001021B0"), do: :additional_patient_history

  # (0010,21C0) PregnancyStatus dvUS
  # VR values: ["US"]
  def name("001021C0"), do: :pregnancy_status

  # (0010,21D0) LastMenstrualDate dvDA
  # VR values: ["DA"]
  def name("001021D0"), do: :last_menstrual_date

  # (0010,21F0) Patient'sReligiousPreference dvLO
  # VR values: ["LO"]
  def name("001021F0"), do: :patients_religious_preference

  # (0010,2201) PatientSpeciesDescription dvLO
  # VR values: ["LO"]
  def name("00102201"), do: :patient_species_description

  # (0010,2202) PatientSpeciesCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00102202"), do: :patient_species_code_sequence

  # (0010,2203) Patient'sSexNeutered dvCS
  # VR values: ["CS"]
  def name("00102203"), do: :patients_sex_neutered

  # (0010,2210) AnatomicalOrientationType dvCS
  # VR values: ["CS"]
  def name("00102210"), do: :anatomical_orientation_type

  # (0010,2292) PatientBreedDescription dvLO
  # VR values: ["LO"]
  def name("00102292"), do: :patient_breed_description

  # (0010,2293) PatientBreedCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00102293"), do: :patient_breed_code_sequence

  # (0010,2294) BreedRegistrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00102294"), do: :breed_registration_sequence

  # (0010,2295) BreedRegistrationNumber dvLO
  # VR values: ["LO"]
  def name("00102295"), do: :breed_registration_number

  # (0010,2296) BreedRegistryCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00102296"), do: :breed_registry_code_sequence

  # (0010,2297) ResponsiblePerson dvPN
  # VR values: ["PN"]
  def name("00102297"), do: :responsible_person

  # (0010,2298) ResponsiblePersonRole dvCS
  # VR values: ["CS"]
  def name("00102298"), do: :responsible_person_role

  # (0010,2299) ResponsibleOrganization dvLO
  # VR values: ["LO"]
  def name("00102299"), do: :responsible_organization

  # (0010,4000) PatientComments dvLT
  # VR values: ["LT"]
  def name("00104000"), do: :patient_comments

  # (0010,9431) ExaminedBodyThickness dvFL
  # VR values: ["FL"]
  def name("00109431"), do: :examined_body_thickness

  # (0011,0001) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110001"), do: :undocumented

  # (0011,0002) Undocumented dvUS
  # VR values: ["US"]
  def name("00110002"), do: :undocumented

  # (0011,0003) Undocumented dvLT
  # VR values: ["LT"]
  def name("00110003"), do: :undocumented

  # (0011,0004) Undocumented dvLT
  # VR values: ["LT"]
  def name("00110004"), do: :undocumented

  # (0011,000A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0011000A"), do: :undocumented

  # (0011,000B) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011000B"), do: :undocumented

  # (0011,000C) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011000C"), do: :undocumented

  # (0011,000D) Undocumented dvLO
  # VR values: ["LO"]
  def name("0011000D"), do: :undocumented

  # (0011,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110010"), do: :undocumented

  # (0011,0011) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110011"), do: :undocumented

  # (0011,0012) Undocumented dvLO
  # VR values: ["LO"]
  def name("00110012"), do: :undocumented

  # (0011,0013) Undocumented dvLO
  # VR values: ["LO"]
  def name("00110013"), do: :undocumented

  # (0011,0015) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110015"), do: :undocumented

  # (0011,0016) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110016"), do: :undocumented

  # (0011,0017) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110017"), do: :undocumented

  # (0011,0018) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110018"), do: :undocumented

  # (0011,0019) Undocumented dvFD
  # VR values: ["FD"]
  def name("00110019"), do: :undocumented

  # (0011,001A) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011001A"), do: :undocumented

  # (0011,001B) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011001B"), do: :undocumented

  # (0011,001C) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011001C"), do: :undocumented

  # (0011,001D) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011001D"), do: :undocumented

  # (0011,001F) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011001F"), do: :undocumented

  # (0011,0020) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110020"), do: :undocumented

  # (0011,0021) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110021"), do: :undocumented

  # (0011,0022) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110022"), do: :undocumented

  # (0011,0023) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110023"), do: :undocumented

  # (0011,0024) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110024"), do: :undocumented

  # (0011,0025) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110025"), do: :undocumented

  # (0011,0026) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110026"), do: :undocumented

  # (0011,0027) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110027"), do: :undocumented

  # (0011,0028) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110028"), do: :undocumented

  # (0011,0030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110030"), do: :undocumented

  # (0011,0031) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110031"), do: :undocumented

  # (0011,0032) Undocumented dvUN
  # VR values: ["UN"]
  def name("00110032"), do: :undocumented

  # (0011,0033) Undocumented dvLO
  # VR values: ["LO"]
  def name("00110033"), do: :undocumented

  # (0011,0034) Undocumented dvLO
  # VR values: ["LO"]
  def name("00110034"), do: :undocumented

  # (0011,0035) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110035"), do: :undocumented

  # (0011,0036) Undocumented dvLO
  # VR values: ["LO"]
  def name("00110036"), do: :undocumented

  # (0011,0037) Undocumented dvLO
  # VR values: ["LO"]
  def name("00110037"), do: :undocumented

  # (0011,0038) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110038"), do: :undocumented

  # (0011,003A) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011003A"), do: :undocumented

  # (0011,003B) Undocumented dvFD
  # VR values: ["FD"]
  def name("0011003B"), do: :undocumented

  # (0011,003C) Undocumented dvFD
  # VR values: ["FD"]
  def name("0011003C"), do: :undocumented

  # (0011,003E) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011003E"), do: :undocumented

  # (0011,003F) Undocumented dvSL
  # VR values: ["SL"]
  def name("0011003F"), do: :undocumented

  # (0011,0040) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00110040"), do: :undocumented

  # (0011,0041) Undocumented dvLT
  # VR values: ["LT"]
  def name("00110041"), do: :undocumented

  # (0011,0042) Undocumented dvLT
  # VR values: ["LT"]
  def name("00110042"), do: :undocumented

  # (0011,0044) Undocumented dvFD
  # VR values: ["FD"]
  def name("00110044"), do: :undocumented

  # (0011,0045) Undocumented dvFD
  # VR values: ["FD"]
  def name("00110045"), do: :undocumented

  # (0011,0046) Undocumented dvSL
  # VR values: ["SL"]
  def name("00110046"), do: :undocumented

  # (0011,0055) Undocumented dvFD
  # VR values: ["FD"]
  def name("00110055"), do: :undocumented

  # (0011,0056) Undocumented dvFD
  # VR values: ["FD"]
  def name("00110056"), do: :undocumented

  # (0011,00A1) Undocumented dvDA
  # VR values: ["DA"]
  def name("001100A1"), do: :undocumented

  # (0011,00A2) Undocumented dvTM
  # VR values: ["TM"]
  def name("001100A2"), do: :undocumented

  # (0011,00B0) Undocumented dvLT
  # VR values: ["LT"]
  def name("001100B0"), do: :undocumented

  # (0011,00B2) Undocumented dvLT
  # VR values: ["LT"]
  def name("001100B2"), do: :undocumented

  # (0011,00B4) Undocumented dvLT
  # VR values: ["LT"]
  def name("001100B4"), do: :undocumented

  # (0011,00BC) Undocumented dvTM
  # VR values: ["TM"]
  def name("001100BC"), do: :undocumented

  # (0011,00C0) Undocumented dvLT
  # VR values: ["LT"]
  def name("001100C0"), do: :undocumented

  # (0011,00D0) Undocumented dvLT
  # VR values: ["LT"]
  def name("001100D0"), do: :undocumented

  # (0011,00D2) Undocumented dvLT
  # VR values: ["LT"]
  def name("001100D2"), do: :undocumented

  # (0012,0010) ClinicalTrialSponsorName dvLO
  # VR values: ["LO"]
  def name("00120010"), do: :clinical_trial_sponsor_name

  # (0012,0020) ClinicalTrialProtocolID dvLO
  # VR values: ["LO"]
  def name("00120020"), do: :clinical_trial_protocol_id

  # (0012,0021) ClinicalTrialProtocolName dvLO
  # VR values: ["LO"]
  def name("00120021"), do: :clinical_trial_protocol_name

  # (0012,0030) ClinicalTrialSiteID dvLO
  # VR values: ["LO"]
  def name("00120030"), do: :clinical_trial_site_id

  # (0012,0031) ClinicalTrialSiteName dvLO
  # VR values: ["LO"]
  def name("00120031"), do: :clinical_trial_site_name

  # (0012,0040) ClinicalTrialSubjectID dvLO
  # VR values: ["LO"]
  def name("00120040"), do: :clinical_trial_subject_id

  # (0012,0042) ClinicalTrialSubjectReadingID dvLO
  # VR values: ["LO"]
  def name("00120042"), do: :clinical_trial_subject_reading_id

  # (0012,0050) ClinicalTrialTimePointID dvLO
  # VR values: ["LO"]
  def name("00120050"), do: :clinical_trial_time_point_id

  # (0012,0051) ClinicalTrialTimePointDescription dvST
  # VR values: ["ST"]
  def name("00120051"), do: :clinical_trial_time_point_description

  # (0012,0060) ClinicalTrialCoordinatingCenterName dvLO
  # VR values: ["LO"]
  def name("00120060"), do: :clinical_trial_coordinating_center_name

  # (0012,0062) PatientIdentityRemoved dvCS
  # VR values: ["CS"]
  def name("00120062"), do: :patient_identity_removed

  # (0012,0063) De_identificationMethod dvLO
  # VR values: ["LO"]
  def name("00120063"), do: :de_identification_method

  # (0012,0064) De_identificationMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00120064"), do: :de_identification_method_code_sequence

  # (0012,0071) ClinicalTrialSeriesID dvLO
  # VR values: ["LO"]
  def name("00120071"), do: :clinical_trial_series_id

  # (0012,0072) ClinicalTrialSeriesDescription dvLO
  # VR values: ["LO"]
  def name("00120072"), do: :clinical_trial_series_description

  # (0012,0081) ClinicalTrialProtocolEthicsCommitteeName dvLO
  # VR values: ["LO"]
  def name("00120081"), do: :clinical_trial_protocol_ethics_committee_name

  # (0012,0082) ClinicalTrialProtocolEthicsCommitteeApprovalNumber dvLO
  # VR values: ["LO"]
  def name("00120082"), do: :clinical_trial_protocol_ethics_committee_approval_number

  # (0012,0083) ConsentforClinicalTrialUseSequence dvSQ
  # VR values: ["SQ"]
  def name("00120083"), do: :consentfor_clinical_trial_use_sequence

  # (0012,0084) DistributionType dvCS
  # VR values: ["CS"]
  def name("00120084"), do: :distribution_type

  # (0012,0085) ConsentforDistributionFlag dvCS
  # VR values: ["CS"]
  def name("00120085"), do: :consentfor_distribution_flag

  # (0013,0000) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130000"), do: :undocumented

  # (0013,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00130010"), do: :undocumented

  # (0013,0011) Undocumented dvSL
  # VR values: ["SL"]
  def name("00130011"), do: :undocumented

  # (0013,0012) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00130012"), do: :undocumented

  # (0013,0016) Undocumented dvSL
  # VR values: ["SL"]
  def name("00130016"), do: :undocumented

  # (0013,0017) Undocumented dvSL
  # VR values: ["SL"]
  def name("00130017"), do: :undocumented

  # (0013,0018) Undocumented dvFD
  # VR values: ["FD"]
  def name("00130018"), do: :undocumented

  # (0013,0019) Undocumented dvFD
  # VR values: ["FD"]
  def name("00130019"), do: :undocumented

  # (0013,001A) Undocumented dvFD
  # VR values: ["FD"]
  def name("0013001A"), do: :undocumented

  # (0013,001C) Undocumented dvFD
  # VR values: ["FD"]
  def name("0013001C"), do: :undocumented

  # (0013,001D) Undocumented dvFD
  # VR values: ["FD"]
  def name("0013001D"), do: :undocumented

  # (0013,001E) Undocumented dvFD
  # VR values: ["FD"]
  def name("0013001E"), do: :undocumented

  # (0013,0020) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130020"), do: :undocumented

  # (0013,0022) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130022"), do: :undocumented

  # (0013,0026) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130026"), do: :undocumented

  # (0013,0030) Undocumented dvDA
  # VR values: ["DA"]
  def name("00130030"), do: :undocumented

  # (0013,0031) Undocumented dvDS
  # VR values: ["DS"]
  def name("00130031"), do: :undocumented

  # (0013,0032) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130032"), do: :undocumented

  # (0013,0033) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130033"), do: :undocumented

  # (0013,0034) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130034"), do: :undocumented

  # (0013,0035) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130035"), do: :undocumented

  # (0013,0040) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130040"), do: :undocumented

  # (0013,0042) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130042"), do: :undocumented

  # (0013,0044) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130044"), do: :undocumented

  # (0013,0046) Undocumented dvLT
  # VR values: ["LT"]
  def name("00130046"), do: :undocumented

  # (0014,0023) CADFileFormat dvST
  # VR values: ["ST"]
  def name("00140023"), do: :cad_file_format

  # (0014,0024) ComponentReferenceSystem dvST
  # VR values: ["ST"]
  def name("00140024"), do: :component_reference_system

  # (0014,0025) ComponentManufacturingProcedure dvST
  # VR values: ["ST"]
  def name("00140025"), do: :component_manufacturing_procedure

  # (0014,0028) ComponentManufacturer dvST
  # VR values: ["ST"]
  def name("00140028"), do: :component_manufacturer

  # (0014,0030) MaterialThickness dvDS
  # VR values: ["DS"]
  def name("00140030"), do: :material_thickness

  # (0014,0032) MaterialPipeDiameter dvDS
  # VR values: ["DS"]
  def name("00140032"), do: :material_pipe_diameter

  # (0014,0034) MaterialIsolationDiameter dvDS
  # VR values: ["DS"]
  def name("00140034"), do: :material_isolation_diameter

  # (0014,0042) MaterialGrade dvST
  # VR values: ["ST"]
  def name("00140042"), do: :material_grade

  # (0014,0044) MaterialPropertiesDescription dvST
  # VR values: ["ST"]
  def name("00140044"), do: :material_properties_description

  # (0014,0045) MaterialPropertiesFileFormat(Retired) dvST
  # VR values: ["ST"]
  def name("00140045"), do: :material_properties_file_format_retired

  # (0014,0046) MaterialNotes dvLT
  # VR values: ["LT"]
  def name("00140046"), do: :material_notes

  # (0014,0050) ComponentShape dvCS
  # VR values: ["CS"]
  def name("00140050"), do: :component_shape

  # (0014,0052) CurvatureType dvCS
  # VR values: ["CS"]
  def name("00140052"), do: :curvature_type

  # (0014,0054) OuterDiameter dvDS
  # VR values: ["DS"]
  def name("00140054"), do: :outer_diameter

  # (0014,0056) InnerDiameter dvDS
  # VR values: ["DS"]
  def name("00140056"), do: :inner_diameter

  # (0014,1010) ActualEnvironmentalConditions dvST
  # VR values: ["ST"]
  def name("00141010"), do: :actual_environmental_conditions

  # (0014,1020) ExpiryDate dvDA
  # VR values: ["DA"]
  def name("00141020"), do: :expiry_date

  # (0014,1040) EnvironmentalConditions dvST
  # VR values: ["ST"]
  def name("00141040"), do: :environmental_conditions

  # (0014,2002) EvaluatorSequence dvSQ
  # VR values: ["SQ"]
  def name("00142002"), do: :evaluator_sequence

  # (0014,2004) EvaluatorNumber dvIS
  # VR values: ["IS"]
  def name("00142004"), do: :evaluator_number

  # (0014,2006) EvaluatorName dvPN
  # VR values: ["PN"]
  def name("00142006"), do: :evaluator_name

  # (0014,2008) EvaluationAttempt dvIS
  # VR values: ["IS"]
  def name("00142008"), do: :evaluation_attempt

  # (0014,2012) IndicationSequence dvSQ
  # VR values: ["SQ"]
  def name("00142012"), do: :indication_sequence

  # (0014,2014) IndicationNumber dvIS
  # VR values: ["IS"]
  def name("00142014"), do: :indication_number

  # (0014,2016) IndicationLabel dvSH
  # VR values: ["SH"]
  def name("00142016"), do: :indication_label

  # (0014,2018) IndicationDescription dvST
  # VR values: ["ST"]
  def name("00142018"), do: :indication_description

  # (0014,201A) IndicationType dvCS
  # VR values: ["CS"]
  def name("0014201A"), do: :indication_type

  # (0014,201C) IndicationDisposition dvCS
  # VR values: ["CS"]
  def name("0014201C"), do: :indication_disposition

  # (0014,201E) IndicationROISequence dvSQ
  # VR values: ["SQ"]
  def name("0014201E"), do: :indication_roi_sequence

  # (0014,2030) IndicationPhysicalPropertySequence dvSQ
  # VR values: ["SQ"]
  def name("00142030"), do: :indication_physical_property_sequence

  # (0014,2032) PropertyLabel dvSH
  # VR values: ["SH"]
  def name("00142032"), do: :property_label

  # (0014,2202) CoordinateSystemNumberofAxes dvIS
  # VR values: ["IS"]
  def name("00142202"), do: :coordinate_system_numberof_axes

  # (0014,2204) CoordinateSystemAxesSequence dvSQ
  # VR values: ["SQ"]
  def name("00142204"), do: :coordinate_system_axes_sequence

  # (0014,2206) CoordinateSystemAxisDescription dvST
  # VR values: ["ST"]
  def name("00142206"), do: :coordinate_system_axis_description

  # (0014,2208) CoordinateSystemDataSetMapping dvCS
  # VR values: ["CS"]
  def name("00142208"), do: :coordinate_system_data_set_mapping

  # (0014,220A) CoordinateSystemAxisNumber dvIS
  # VR values: ["IS"]
  def name("0014220A"), do: :coordinate_system_axis_number

  # (0014,220C) CoordinateSystemAxisType dvCS
  # VR values: ["CS"]
  def name("0014220C"), do: :coordinate_system_axis_type

  # (0014,220E) CoordinateSystemAxisUnits dvCS
  # VR values: ["CS"]
  def name("0014220E"), do: :coordinate_system_axis_units

  # (0014,2210) CoordinateSystemAxisValues dvOB
  # VR values: ["OB"]
  def name("00142210"), do: :coordinate_system_axis_values

  # (0014,2220) CoordinateSystemTransformSequence dvSQ
  # VR values: ["SQ"]
  def name("00142220"), do: :coordinate_system_transform_sequence

  # (0014,2222) TransformDescription dvST
  # VR values: ["ST"]
  def name("00142222"), do: :transform_description

  # (0014,2224) TransformNumberofAxes dvIS
  # VR values: ["IS"]
  def name("00142224"), do: :transform_numberof_axes

  # (0014,2226) TransformOrderofAxes dvIS
  # VR values: ["IS"]
  def name("00142226"), do: :transform_orderof_axes

  # (0014,2228) TransformedAxisUnits dvCS
  # VR values: ["CS"]
  def name("00142228"), do: :transformed_axis_units

  # (0014,222A) CoordinateSystemTransformRotationandScaleMatrix dvDS
  # VR values: ["DS"]
  def name("0014222A"), do: :coordinate_system_transform_rotationand_scale_matrix

  # (0014,222C) CoordinateSystemTransformTranslationMatrix dvDS
  # VR values: ["DS"]
  def name("0014222C"), do: :coordinate_system_transform_translation_matrix

  # (0014,3011) InternalDetectorFrameTime dvDS
  # VR values: ["DS"]
  def name("00143011"), do: :internal_detector_frame_time

  # (0014,3012) NumberofFramesIntegrated dvDS
  # VR values: ["DS"]
  def name("00143012"), do: :numberof_frames_integrated

  # (0014,3020) DetectorTemperatureSequence dvSQ
  # VR values: ["SQ"]
  def name("00143020"), do: :detector_temperature_sequence

  # (0014,3022) SensorName dvST
  # VR values: ["ST"]
  def name("00143022"), do: :sensor_name

  # (0014,3024) HorizontalOffsetofSensor dvDS
  # VR values: ["DS"]
  def name("00143024"), do: :horizontal_offsetof_sensor

  # (0014,3026) VerticalOffsetofSensor dvDS
  # VR values: ["DS"]
  def name("00143026"), do: :vertical_offsetof_sensor

  # (0014,3028) SensorTemperature dvDS
  # VR values: ["DS"]
  def name("00143028"), do: :sensor_temperature

  # (0014,3040) DarkCurrentSequence dvSQ
  # VR values: ["SQ"]
  def name("00143040"), do: :dark_current_sequence

  # (0014,3050) DarkCurrentCounts dvOW
  # VR values: ["OW"]
  def name("00143050"), do: :dark_current_counts

  # (0014,3060) GainCorrectionReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("00143060"), do: :gain_correction_reference_sequence

  # (0014,3070) AirCounts dvOW
  # VR values: ["OW"]
  def name("00143070"), do: :air_counts

  # (0014,3071) KVUsedinGainCalibration dvDS
  # VR values: ["DS"]
  def name("00143071"), do: :kv_usedin_gain_calibration

  # (0014,3072) MAUsedinGainCalibration dvDS
  # VR values: ["DS"]
  def name("00143072"), do: :ma_usedin_gain_calibration

  # (0014,3073) NumberofFramesUsedforIntegration dvDS
  # VR values: ["DS"]
  def name("00143073"), do: :numberof_frames_usedfor_integration

  # (0014,3074) FilterMaterialUsedinGainCalibration dvLO
  # VR values: ["LO"]
  def name("00143074"), do: :filter_material_usedin_gain_calibration

  # (0014,3075) FilterThicknessUsedinGainCalibration dvDS
  # VR values: ["DS"]
  def name("00143075"), do: :filter_thickness_usedin_gain_calibration

  # (0014,3076) DateofGainCalibration dvDA
  # VR values: ["DA"]
  def name("00143076"), do: :dateof_gain_calibration

  # (0014,3077) TimeofGainCalibration dvTM
  # VR values: ["TM"]
  def name("00143077"), do: :timeof_gain_calibration

  # (0014,3080) BadPixelImage dvOB
  # VR values: ["OB"]
  def name("00143080"), do: :bad_pixel_image

  # (0014,3099) CalibrationNotes dvLT
  # VR values: ["LT"]
  def name("00143099"), do: :calibration_notes

  # (0014,4002) PulserEquipmentSequence dvSQ
  # VR values: ["SQ"]
  def name("00144002"), do: :pulser_equipment_sequence

  # (0014,4004) PulserType dvCS
  # VR values: ["CS"]
  def name("00144004"), do: :pulser_type

  # (0014,4006) PulserNotes dvLT
  # VR values: ["LT"]
  def name("00144006"), do: :pulser_notes

  # (0014,4008) ReceiverEquipmentSequence dvSQ
  # VR values: ["SQ"]
  def name("00144008"), do: :receiver_equipment_sequence

  # (0014,400A) AmplifierType dvCS
  # VR values: ["CS"]
  def name("0014400A"), do: :amplifier_type

  # (0014,400C) ReceiverNotes dvLT
  # VR values: ["LT"]
  def name("0014400C"), do: :receiver_notes

  # (0014,400E) Pre_AmplifierEquipmentSequence dvSQ
  # VR values: ["SQ"]
  def name("0014400E"), do: :pre_amplifier_equipment_sequence

  # (0014,400F) Pre_AmplifierNotes dvLT
  # VR values: ["LT"]
  def name("0014400F"), do: :pre_amplifier_notes

  # (0014,4010) TransmitTransducerSequence dvSQ
  # VR values: ["SQ"]
  def name("00144010"), do: :transmit_transducer_sequence

  # (0014,4011) ReceiveTransducerSequence dvSQ
  # VR values: ["SQ"]
  def name("00144011"), do: :receive_transducer_sequence

  # (0014,4012) NumberofElements dvUS
  # VR values: ["US"]
  def name("00144012"), do: :numberof_elements

  # (0014,4013) ElementShape dvCS
  # VR values: ["CS"]
  def name("00144013"), do: :element_shape

  # (0014,4014) ElementDimensionA dvDS
  # VR values: ["DS"]
  def name("00144014"), do: :element_dimension_a

  # (0014,4015) ElementDimensionB dvDS
  # VR values: ["DS"]
  def name("00144015"), do: :element_dimension_b

  # (0014,4016) ElementPitchA dvDS
  # VR values: ["DS"]
  def name("00144016"), do: :element_pitch_a

  # (0014,4017) MeasuredBeamDimensionA dvDS
  # VR values: ["DS"]
  def name("00144017"), do: :measured_beam_dimension_a

  # (0014,4018) MeasuredBeamDimensionB dvDS
  # VR values: ["DS"]
  def name("00144018"), do: :measured_beam_dimension_b

  # (0014,4019) LocationofMeasuredBeamDiameter dvDS
  # VR values: ["DS"]
  def name("00144019"), do: :locationof_measured_beam_diameter

  # (0014,401A) NominalFrequency dvDS
  # VR values: ["DS"]
  def name("0014401A"), do: :nominal_frequency

  # (0014,401B) MeasuredCenterFrequency dvDS
  # VR values: ["DS"]
  def name("0014401B"), do: :measured_center_frequency

  # (0014,401C) MeasuredBandwidth dvDS
  # VR values: ["DS"]
  def name("0014401C"), do: :measured_bandwidth

  # (0014,401D) ElementPitchB dvDS
  # VR values: ["DS"]
  def name("0014401D"), do: :element_pitch_b

  # (0014,4020) PulserSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144020"), do: :pulser_settings_sequence

  # (0014,4022) PulseWidth dvDS
  # VR values: ["DS"]
  def name("00144022"), do: :pulse_width

  # (0014,4024) ExcitationFrequency dvDS
  # VR values: ["DS"]
  def name("00144024"), do: :excitation_frequency

  # (0014,4026) ModulationType dvCS
  # VR values: ["CS"]
  def name("00144026"), do: :modulation_type

  # (0014,4028) Damping dvDS
  # VR values: ["DS"]
  def name("00144028"), do: :damping

  # (0014,4030) ReceiverSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144030"), do: :receiver_settings_sequence

  # (0014,4031) AcquiredSoundpathLength dvDS
  # VR values: ["DS"]
  def name("00144031"), do: :acquired_soundpath_length

  # (0014,4032) AcquisitionCompressionType dvCS
  # VR values: ["CS"]
  def name("00144032"), do: :acquisition_compression_type

  # (0014,4033) AcquisitionSampleSize dvIS
  # VR values: ["IS"]
  def name("00144033"), do: :acquisition_sample_size

  # (0014,4034) RectifierSmoothing dvDS
  # VR values: ["DS"]
  def name("00144034"), do: :rectifier_smoothing

  # (0014,4035) DACSequence dvSQ
  # VR values: ["SQ"]
  def name("00144035"), do: :dac_sequence

  # (0014,4036) DACType dvCS
  # VR values: ["CS"]
  def name("00144036"), do: :dac_type

  # (0014,4038) DACGainPoints dvDS
  # VR values: ["DS"]
  def name("00144038"), do: :dac_gain_points

  # (0014,403A) DACTimePoints dvDS
  # VR values: ["DS"]
  def name("0014403A"), do: :dac_time_points

  # (0014,403C) DACAmplitude dvDS
  # VR values: ["DS"]
  def name("0014403C"), do: :dac_amplitude

  # (0014,4040) Pre_AmplifierSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144040"), do: :pre_amplifier_settings_sequence

  # (0014,4050) TransmitTransducerSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144050"), do: :transmit_transducer_settings_sequence

  # (0014,4051) ReceiveTransducerSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144051"), do: :receive_transducer_settings_sequence

  # (0014,4052) IncidentAngle dvDS
  # VR values: ["DS"]
  def name("00144052"), do: :incident_angle

  # (0014,4054) CouplingTechnique dvST
  # VR values: ["ST"]
  def name("00144054"), do: :coupling_technique

  # (0014,4056) CouplingMedium dvST
  # VR values: ["ST"]
  def name("00144056"), do: :coupling_medium

  # (0014,4057) CouplingVelocity dvDS
  # VR values: ["DS"]
  def name("00144057"), do: :coupling_velocity

  # (0014,4058) ProbeCenterLocationX dvDS
  # VR values: ["DS"]
  def name("00144058"), do: :probe_center_location_x

  # (0014,4059) ProbeCenterLocationZ dvDS
  # VR values: ["DS"]
  def name("00144059"), do: :probe_center_location_z

  # (0014,405A) SoundPathLength dvDS
  # VR values: ["DS"]
  def name("0014405A"), do: :sound_path_length

  # (0014,405C) DelayLawIdentifier dvST
  # VR values: ["ST"]
  def name("0014405C"), do: :delay_law_identifier

  # (0014,4060) GateSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144060"), do: :gate_settings_sequence

  # (0014,4062) GateThreshold dvDS
  # VR values: ["DS"]
  def name("00144062"), do: :gate_threshold

  # (0014,4064) VelocityofSound dvDS
  # VR values: ["DS"]
  def name("00144064"), do: :velocityof_sound

  # (0014,4070) CalibrationSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144070"), do: :calibration_settings_sequence

  # (0014,4072) CalibrationProcedure dvST
  # VR values: ["ST"]
  def name("00144072"), do: :calibration_procedure

  # (0014,4074) ProcedureVersion dvSH
  # VR values: ["SH"]
  def name("00144074"), do: :procedure_version

  # (0014,4076) ProcedureCreationDate dvDA
  # VR values: ["DA"]
  def name("00144076"), do: :procedure_creation_date

  # (0014,4078) ProcedureExpirationDate dvDA
  # VR values: ["DA"]
  def name("00144078"), do: :procedure_expiration_date

  # (0014,407A) ProcedureLastModifiedDate dvDA
  # VR values: ["DA"]
  def name("0014407A"), do: :procedure_last_modified_date

  # (0014,407C) CalibrationTime dvTM
  # VR values: ["TM"]
  def name("0014407C"), do: :calibration_time

  # (0014,407E) CalibrationDate dvDA
  # VR values: ["DA"]
  def name("0014407E"), do: :calibration_date

  # (0014,4080) ProbeDriveEquipmentSequence dvSQ
  # VR values: ["SQ"]
  def name("00144080"), do: :probe_drive_equipment_sequence

  # (0014,4081) DriveType dvCS
  # VR values: ["CS"]
  def name("00144081"), do: :drive_type

  # (0014,4082) ProbeDriveNotes dvLT
  # VR values: ["LT"]
  def name("00144082"), do: :probe_drive_notes

  # (0014,4083) DriveProbeSequence dvSQ
  # VR values: ["SQ"]
  def name("00144083"), do: :drive_probe_sequence

  # (0014,4084) ProbeInductance dvDS
  # VR values: ["DS"]
  def name("00144084"), do: :probe_inductance

  # (0014,4085) ProbeResistance dvDS
  # VR values: ["DS"]
  def name("00144085"), do: :probe_resistance

  # (0014,4086) ReceiveProbeSequence dvSQ
  # VR values: ["SQ"]
  def name("00144086"), do: :receive_probe_sequence

  # (0014,4087) ProbeDriveSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144087"), do: :probe_drive_settings_sequence

  # (0014,4088) BridgeResistors dvDS
  # VR values: ["DS"]
  def name("00144088"), do: :bridge_resistors

  # (0014,4089) ProbeOrientationAngle dvDS
  # VR values: ["DS"]
  def name("00144089"), do: :probe_orientation_angle

  # (0014,408B) UserSelectedGainY dvDS
  # VR values: ["DS"]
  def name("0014408B"), do: :user_selected_gain_y

  # (0014,408C) UserSelectedPhase dvDS
  # VR values: ["DS"]
  def name("0014408C"), do: :user_selected_phase

  # (0014,408D) UserSelectedOffsetX dvDS
  # VR values: ["DS"]
  def name("0014408D"), do: :user_selected_offset_x

  # (0014,408E) UserSelectedOffsetY dvDS
  # VR values: ["DS"]
  def name("0014408E"), do: :user_selected_offset_y

  # (0014,4091) ChannelSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("00144091"), do: :channel_settings_sequence

  # (0014,4092) ChannelThreshold dvDS
  # VR values: ["DS"]
  def name("00144092"), do: :channel_threshold

  # (0014,409A) ScannerSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("0014409A"), do: :scanner_settings_sequence

  # (0014,409B) ScanProcedure dvST
  # VR values: ["ST"]
  def name("0014409B"), do: :scan_procedure

  # (0014,409C) TranslationRateX dvDS
  # VR values: ["DS"]
  def name("0014409C"), do: :translation_rate_x

  # (0014,409D) TranslationRateY dvDS
  # VR values: ["DS"]
  def name("0014409D"), do: :translation_rate_y

  # (0014,409F) ChannelOverlap dvDS
  # VR values: ["DS"]
  def name("0014409F"), do: :channel_overlap

  # (0014,40A0) ImageQualityIndicatorType dvLO
  # VR values: ["LO"]
  def name("001440A0"), do: :image_quality_indicator_type

  # (0014,40A1) ImageQualityIndicatorMaterial dvLO
  # VR values: ["LO"]
  def name("001440A1"), do: :image_quality_indicator_material

  # (0014,40A2) ImageQualityIndicatorSize dvLO
  # VR values: ["LO"]
  def name("001440A2"), do: :image_quality_indicator_size

  # (0014,5002) LINACEnergy dvIS
  # VR values: ["IS"]
  def name("00145002"), do: :linac_energy

  # (0014,5004) LINACOutput dvIS
  # VR values: ["IS"]
  def name("00145004"), do: :linac_output

  # (0015,0001) Undocumented dvDS
  # VR values: ["DS"]
  def name("00150001"), do: :undocumented

  # (0015,0002) Undocumented dvDS
  # VR values: ["DS"]
  def name("00150002"), do: :undocumented

  # (0015,0003) Undocumented dvDS
  # VR values: ["DS"]
  def name("00150003"), do: :undocumented

  # (0018,0000) AcquisitionGroupLength dvUL
  # VR values: ["UL"]
  def name("00180000"), do: :acquisition_group_length

  # (0018,0010) Contrast/BolusAgent dvLO
  # VR values: ["LO"]
  def name("00180010"), do: :contrast__bolus_agent

  # (0018,0012) Contrast/BolusAgentSequence dvSQ
  # VR values: ["SQ"]
  def name("00180012"), do: :contrast__bolus_agent_sequence

  # (0018,0013) Contrast/BolusT1Relaxivity dvFL
  # VR values: ["FL"]
  def name("00180013"), do: :contrast__bolus_t1_relaxivity

  # (0018,0014) Contrast/BolusAdministrationRouteSequence dvSQ
  # VR values: ["SQ"]
  def name("00180014"), do: :contrast__bolus_administration_route_sequence

  # (0018,0015) BodyPartExamined dvCS
  # VR values: ["CS"]
  def name("00180015"), do: :body_part_examined

  # (0018,0020) ScanningSequence dvCS
  # VR values: ["CS"]
  def name("00180020"), do: :scanning_sequence

  # (0018,0021) SequenceVariant dvCS
  # VR values: ["CS"]
  def name("00180021"), do: :sequence_variant

  # (0018,0022) ScanOptions dvCS
  # VR values: ["CS"]
  def name("00180022"), do: :scan_options

  # (0018,0023) MRAcquisitionType dvCS
  # VR values: ["CS"]
  def name("00180023"), do: :mr_acquisition_type

  # (0018,0024) SequenceName dvSH
  # VR values: ["SH"]
  def name("00180024"), do: :sequence_name

  # (0018,0025) AngioFlag dvCS
  # VR values: ["CS"]
  def name("00180025"), do: :angio_flag

  # (0018,0026) InterventionDrugInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00180026"), do: :intervention_drug_information_sequence

  # (0018,0027) InterventionDrugStopTime dvTM
  # VR values: ["TM"]
  def name("00180027"), do: :intervention_drug_stop_time

  # (0018,0028) InterventionDrugDose dvDS
  # VR values: ["DS"]
  def name("00180028"), do: :intervention_drug_dose

  # (0018,0029) InterventionDrugCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00180029"), do: :intervention_drug_code_sequence

  # (0018,002A) AdditionalDrugSequence dvSQ
  # VR values: ["SQ"]
  def name("0018002A"), do: :additional_drug_sequence

  # (0018,0030) Radionuclide dvLO
  # VR values: ["LO"]
  def name("00180030"), do: :radionuclide

  # (0018,0031) Radiopharmaceutical dvLO
  # VR values: ["LO"]
  def name("00180031"), do: :radiopharmaceutical

  # (0018,0032) EnergyWindowCenterline dvDS
  # VR values: ["DS"]
  def name("00180032"), do: :energy_window_centerline

  # (0018,0033) EnergyWindowTotalWidth dvDS
  # VR values: ["DS"]
  def name("00180033"), do: :energy_window_total_width

  # (0018,0034) InterventionDrugName dvLO
  # VR values: ["LO"]
  def name("00180034"), do: :intervention_drug_name

  # (0018,0035) InterventionDrugStartTime dvTM
  # VR values: ["TM"]
  def name("00180035"), do: :intervention_drug_start_time

  # (0018,0036) InterventionSequence dvSQ
  # VR values: ["SQ"]
  def name("00180036"), do: :intervention_sequence

  # (0018,0037) TherapyType dvCS
  # VR values: ["CS"]
  def name("00180037"), do: :therapy_type

  # (0018,0038) InterventionStatus dvCS
  # VR values: ["CS"]
  def name("00180038"), do: :intervention_status

  # (0018,0039) TherapyDescription dvCS
  # VR values: ["CS"]
  def name("00180039"), do: :therapy_description

  # (0018,003A) InterventionDescription dvST
  # VR values: ["ST"]
  def name("0018003A"), do: :intervention_description

  # (0018,0040) CineRate dvIS
  # VR values: ["IS"]
  def name("00180040"), do: :cine_rate

  # (0018,0042) InitialCineRunState dvCS
  # VR values: ["CS"]
  def name("00180042"), do: :initial_cine_run_state

  # (0018,0050) SliceThickness dvDS
  # VR values: ["DS"]
  def name("00180050"), do: :slice_thickness

  # (0018,0060) KVP dvDS
  # VR values: ["DS"]
  def name("00180060"), do: :kvp

  # (0018,0070) CountsAccumulated dvIS
  # VR values: ["IS"]
  def name("00180070"), do: :counts_accumulated

  # (0018,0071) AcquisitionTerminationCondition dvCS
  # VR values: ["CS"]
  def name("00180071"), do: :acquisition_termination_condition

  # (0018,0072) EffectiveDuration dvDS
  # VR values: ["DS"]
  def name("00180072"), do: :effective_duration

  # (0018,0073) AcquisitionStartCondition dvCS
  # VR values: ["CS"]
  def name("00180073"), do: :acquisition_start_condition

  # (0018,0074) AcquisitionStartConditionData dvIS
  # VR values: ["IS"]
  def name("00180074"), do: :acquisition_start_condition_data

  # (0018,0075) AcquisitionTerminationConditionData dvIS
  # VR values: ["IS"]
  def name("00180075"), do: :acquisition_termination_condition_data

  # (0018,0080) RepetitionTime dvDS
  # VR values: ["DS"]
  def name("00180080"), do: :repetition_time

  # (0018,0081) EchoTime dvDS
  # VR values: ["DS"]
  def name("00180081"), do: :echo_time

  # (0018,0082) InversionTime dvDS
  # VR values: ["DS"]
  def name("00180082"), do: :inversion_time

  # (0018,0083) NumberofAverages dvDS
  # VR values: ["DS"]
  def name("00180083"), do: :numberof_averages

  # (0018,0084) ImagingFrequency dvDS
  # VR values: ["DS"]
  def name("00180084"), do: :imaging_frequency

  # (0018,0085) ImagedNucleus dvSH
  # VR values: ["SH"]
  def name("00180085"), do: :imaged_nucleus

  # (0018,0086) EchoNumber(s) dvIS
  # VR values: ["IS"]
  def name("00180086"), do: :echo_numbers

  # (0018,0087) MagneticFieldStrength dvDS
  # VR values: ["DS"]
  def name("00180087"), do: :magnetic_field_strength

  # (0018,0088) SpacingBetweenSlices dvDS
  # VR values: ["DS"]
  def name("00180088"), do: :spacing_between_slices

  # (0018,0089) NumberofPhaseEncodingSteps dvIS
  # VR values: ["IS"]
  def name("00180089"), do: :numberof_phase_encoding_steps

  # (0018,0090) DataCollectionDiameter dvDS
  # VR values: ["DS"]
  def name("00180090"), do: :data_collection_diameter

  # (0018,0091) EchoTrainLength dvIS
  # VR values: ["IS"]
  def name("00180091"), do: :echo_train_length

  # (0018,0093) PercentSampling dvDS
  # VR values: ["DS"]
  def name("00180093"), do: :percent_sampling

  # (0018,0094) PercentPhaseFieldofView dvDS
  # VR values: ["DS"]
  def name("00180094"), do: :percent_phase_fieldof_view

  # (0018,0095) PixelBandwidth dvDS
  # VR values: ["DS"]
  def name("00180095"), do: :pixel_bandwidth

  # (0018,1000) DeviceSerialNumber dvLO
  # VR values: ["LO"]
  def name("00181000"), do: :device_serial_number

  # (0018,1002) DeviceUID dvUI
  # VR values: ["UI"]
  def name("00181002"), do: :device_uid

  # (0018,1003) DeviceID dvLO
  # VR values: ["LO"]
  def name("00181003"), do: :device_id

  # (0018,1004) PlateID dvLO
  # VR values: ["LO"]
  def name("00181004"), do: :plate_id

  # (0018,1005) GeneratorID dvLO
  # VR values: ["LO"]
  def name("00181005"), do: :generator_id

  # (0018,1006) GridID dvLO
  # VR values: ["LO"]
  def name("00181006"), do: :grid_id

  # (0018,1007) CassetteID dvLO
  # VR values: ["LO"]
  def name("00181007"), do: :cassette_id

  # (0018,1008) GantryID dvLO
  # VR values: ["LO"]
  def name("00181008"), do: :gantry_id

  # (0018,1010) SecondaryCaptureDeviceID dvLO
  # VR values: ["LO"]
  def name("00181010"), do: :secondary_capture_device_id

  # (0018,1011) HardcopyCreationDeviceID dvLO
  # VR values: ["LO"]
  def name("00181011"), do: :hardcopy_creation_device_id

  # (0018,1012) DateofSecondaryCapture dvDA
  # VR values: ["DA"]
  def name("00181012"), do: :dateof_secondary_capture

  # (0018,1014) TimeofSecondaryCapture dvTM
  # VR values: ["TM"]
  def name("00181014"), do: :timeof_secondary_capture

  # (0018,1016) SecondaryCaptureDeviceManufacturer dvLO
  # VR values: ["LO"]
  def name("00181016"), do: :secondary_capture_device_manufacturer

  # (0018,1017) HardcopyDeviceManufacturer dvLO
  # VR values: ["LO"]
  def name("00181017"), do: :hardcopy_device_manufacturer

  # (0018,1018) SecondaryCaptureDeviceManufacturer'sModelName dvLO
  # VR values: ["LO"]
  def name("00181018"), do: :secondary_capture_device_manufacturers_model_name

  # (0018,1019) SecondaryCaptureDeviceSoftwareVersions dvLO
  # VR values: ["LO"]
  def name("00181019"), do: :secondary_capture_device_software_versions

  # (0018,101A) HardcopyDeviceSoftwareVersion dvLO
  # VR values: ["LO"]
  def name("0018101A"), do: :hardcopy_device_software_version

  # (0018,101B) HardcopyDeviceManufacturer'sModelName dvLO
  # VR values: ["LO"]
  def name("0018101B"), do: :hardcopy_device_manufacturers_model_name

  # (0018,1020) SoftwareVersion(s) dvLO
  # VR values: ["LO"]
  def name("00181020"), do: :software_versions

  # (0018,1022) VideoImageFormatAcquired dvSH
  # VR values: ["SH"]
  def name("00181022"), do: :video_image_format_acquired

  # (0018,1023) DigitalImageFormatAcquired dvLO
  # VR values: ["LO"]
  def name("00181023"), do: :digital_image_format_acquired

  # (0018,1030) ProtocolName dvLO
  # VR values: ["LO"]
  def name("00181030"), do: :protocol_name

  # (0018,1040) Contrast/BolusRoute dvLO
  # VR values: ["LO"]
  def name("00181040"), do: :contrast__bolus_route

  # (0018,1041) Contrast/BolusVolume dvDS
  # VR values: ["DS"]
  def name("00181041"), do: :contrast__bolus_volume

  # (0018,1042) Contrast/BolusStartTime dvTM
  # VR values: ["TM"]
  def name("00181042"), do: :contrast__bolus_start_time

  # (0018,1043) Contrast/BolusStopTime dvTM
  # VR values: ["TM"]
  def name("00181043"), do: :contrast__bolus_stop_time

  # (0018,1044) Contrast/BolusTotalDose dvDS
  # VR values: ["DS"]
  def name("00181044"), do: :contrast__bolus_total_dose

  # (0018,1045) SyringeCounts dvIS
  # VR values: ["IS"]
  def name("00181045"), do: :syringe_counts

  # (0018,1046) ContrastFlowRate dvDS
  # VR values: ["DS"]
  def name("00181046"), do: :contrast_flow_rate

  # (0018,1047) ContrastFlowDuration dvDS
  # VR values: ["DS"]
  def name("00181047"), do: :contrast_flow_duration

  # (0018,1048) Contrast/BolusIngredient dvCS
  # VR values: ["CS"]
  def name("00181048"), do: :contrast__bolus_ingredient

  # (0018,1049) Contrast/BolusIngredientConcentration dvDS
  # VR values: ["DS"]
  def name("00181049"), do: :contrast__bolus_ingredient_concentration

  # (0018,1050) SpatialResolution dvDS
  # VR values: ["DS"]
  def name("00181050"), do: :spatial_resolution

  # (0018,1060) TriggerTime dvDS
  # VR values: ["DS"]
  def name("00181060"), do: :trigger_time

  # (0018,1061) TriggerSourceorType dvLO
  # VR values: ["LO"]
  def name("00181061"), do: :trigger_sourceor_type

  # (0018,1062) NominalInterval dvIS
  # VR values: ["IS"]
  def name("00181062"), do: :nominal_interval

  # (0018,1063) FrameTime dvDS
  # VR values: ["DS"]
  def name("00181063"), do: :frame_time

  # (0018,1064) CardiacFramingType dvLO
  # VR values: ["LO"]
  def name("00181064"), do: :cardiac_framing_type

  # (0018,1065) FrameTimeVector dvDS
  # VR values: ["DS"]
  def name("00181065"), do: :frame_time_vector

  # (0018,1066) FrameDelay dvDS
  # VR values: ["DS"]
  def name("00181066"), do: :frame_delay

  # (0018,1067) ImageTriggerDelay dvDS
  # VR values: ["DS"]
  def name("00181067"), do: :image_trigger_delay

  # (0018,1068) MultiplexGroupTimeOffset dvDS
  # VR values: ["DS"]
  def name("00181068"), do: :multiplex_group_time_offset

  # (0018,1069) TriggerTimeOffset dvDS
  # VR values: ["DS"]
  def name("00181069"), do: :trigger_time_offset

  # (0018,106A) SynchronizationTrigger dvCS
  # VR values: ["CS"]
  def name("0018106A"), do: :synchronization_trigger

  # (0018,106B) Undocumented dvUI
  # VR values: ["UI"]
  def name("0018106B"), do: :undocumented

  # (0018,106C) SynchronizationChannel dvUS
  # VR values: ["US"]
  def name("0018106C"), do: :synchronization_channel

  # (0018,106E) TriggerSamplePosition dvUL
  # VR values: ["UL"]
  def name("0018106E"), do: :trigger_sample_position

  # (0018,1070) RadiopharmaceuticalRoute dvLO
  # VR values: ["LO"]
  def name("00181070"), do: :radiopharmaceutical_route

  # (0018,1071) RadiopharmaceuticalVolume dvDS
  # VR values: ["DS"]
  def name("00181071"), do: :radiopharmaceutical_volume

  # (0018,1072) RadiopharmaceuticalStartTime dvTM
  # VR values: ["TM"]
  def name("00181072"), do: :radiopharmaceutical_start_time

  # (0018,1073) RadiopharmaceuticalStopTime dvTM
  # VR values: ["TM"]
  def name("00181073"), do: :radiopharmaceutical_stop_time

  # (0018,1074) RadionuclideTotalDose dvDS
  # VR values: ["DS"]
  def name("00181074"), do: :radionuclide_total_dose

  # (0018,1075) RadionuclideHalfLife dvDS
  # VR values: ["DS"]
  def name("00181075"), do: :radionuclide_half_life

  # (0018,1076) RadionuclidePositronFraction dvDS
  # VR values: ["DS"]
  def name("00181076"), do: :radionuclide_positron_fraction

  # (0018,1077) RadiopharmaceuticalSpecificActivity dvDS
  # VR values: ["DS"]
  def name("00181077"), do: :radiopharmaceutical_specific_activity

  # (0018,1078) RadiopharmaceuticalStartDate/Time dvDT
  # VR values: ["DT"]
  def name("00181078"), do: :radiopharmaceutical_start_date__time

  # (0018,1079) RadiopharmaceuticalStopDate/Time dvDT
  # VR values: ["DT"]
  def name("00181079"), do: :radiopharmaceutical_stop_date__time

  # (0018,1080) BeatRejectionFlag dvCS
  # VR values: ["CS"]
  def name("00181080"), do: :beat_rejection_flag

  # (0018,1081) LowR_RValue dvIS
  # VR values: ["IS"]
  def name("00181081"), do: :lowr_r_value

  # (0018,1082) HighR_RValue dvIS
  # VR values: ["IS"]
  def name("00181082"), do: :highr_r_value

  # (0018,1083) IntervalsAcquired dvIS
  # VR values: ["IS"]
  def name("00181083"), do: :intervals_acquired

  # (0018,1084) IntervalsRejected dvIS
  # VR values: ["IS"]
  def name("00181084"), do: :intervals_rejected

  # (0018,1085) PVCRejection dvLO
  # VR values: ["LO"]
  def name("00181085"), do: :pvc_rejection

  # (0018,1086) SkipBeats dvIS
  # VR values: ["IS"]
  def name("00181086"), do: :skip_beats

  # (0018,1088) HeartRate dvIS
  # VR values: ["IS"]
  def name("00181088"), do: :heart_rate

  # (0018,1090) CardiacNumberofImages dvIS
  # VR values: ["IS"]
  def name("00181090"), do: :cardiac_numberof_images

  # (0018,1094) TriggerWindow dvIS
  # VR values: ["IS"]
  def name("00181094"), do: :trigger_window

  # (0018,1100) ReconstructionDiameter dvDS
  # VR values: ["DS"]
  def name("00181100"), do: :reconstruction_diameter

  # (0018,1110) DistanceSourcetoDetector dvDS
  # VR values: ["DS"]
  def name("00181110"), do: :distance_sourceto_detector

  # (0018,1111) DistanceSourcetoPatient dvDS
  # VR values: ["DS"]
  def name("00181111"), do: :distance_sourceto_patient

  # (0018,1114) EstimatedRadiographicMagnificationFactor dvDS
  # VR values: ["DS"]
  def name("00181114"), do: :estimated_radiographic_magnification_factor

  # (0018,1120) Gantry/DetectorTilt dvDS
  # VR values: ["DS"]
  def name("00181120"), do: :gantry__detector_tilt

  # (0018,1121) Gantry/DetectorSlew dvDS
  # VR values: ["DS"]
  def name("00181121"), do: :gantry__detector_slew

  # (0018,1130) TableHeight dvDS
  # VR values: ["DS"]
  def name("00181130"), do: :table_height

  # (0018,1131) TableTraverse dvDS
  # VR values: ["DS"]
  def name("00181131"), do: :table_traverse

  # (0018,1134) TableMotion dvCS
  # VR values: ["CS"]
  def name("00181134"), do: :table_motion

  # (0018,1135) TableVerticalIncrement dvDS
  # VR values: ["DS"]
  def name("00181135"), do: :table_vertical_increment

  # (0018,1136) TableLateralIncrement dvDS
  # VR values: ["DS"]
  def name("00181136"), do: :table_lateral_increment

  # (0018,1137) TableLongitudinalIncrement dvDS
  # VR values: ["DS"]
  def name("00181137"), do: :table_longitudinal_increment

  # (0018,1138) TableAngle dvDS
  # VR values: ["DS"]
  def name("00181138"), do: :table_angle

  # (0018,113A) TableType dvCS
  # VR values: ["CS"]
  def name("0018113A"), do: :table_type

  # (0018,1140) RotationDirection dvCS
  # VR values: ["CS"]
  def name("00181140"), do: :rotation_direction

  # (0018,1141) AngularPosition dvDS
  # VR values: ["DS"]
  def name("00181141"), do: :angular_position

  # (0018,1142) RadialPosition dvDS
  # VR values: ["DS"]
  def name("00181142"), do: :radial_position

  # (0018,1143) ScanArc dvDS
  # VR values: ["DS"]
  def name("00181143"), do: :scan_arc

  # (0018,1144) AngularStep dvDS
  # VR values: ["DS"]
  def name("00181144"), do: :angular_step

  # (0018,1145) CenterofRotationOffset dvDS
  # VR values: ["DS"]
  def name("00181145"), do: :centerof_rotation_offset

  # (0018,1146) RotationOffset dvDS
  # VR values: ["DS"]
  def name("00181146"), do: :rotation_offset

  # (0018,1147) FieldofViewShape dvCS
  # VR values: ["CS"]
  def name("00181147"), do: :fieldof_view_shape

  # (0018,1149) FieldofViewDimension(s) dvIS
  # VR values: ["IS"]
  def name("00181149"), do: :fieldof_view_dimensions

  # (0018,1150) ExposureTime dvIS
  # VR values: ["IS"]
  def name("00181150"), do: :exposure_time

  # (0018,1151) X_RayTubeCurrent dvIS
  # VR values: ["IS"]
  def name("00181151"), do: :x_ray_tube_current

  # (0018,1152) Exposure dvIS
  # VR values: ["IS"]
  def name("00181152"), do: :exposure

  # (0018,1153) ExposureinuAs dvIS
  # VR values: ["IS"]
  def name("00181153"), do: :exposureinu_as

  # (0018,1154) AveragePulseWidth dvDS
  # VR values: ["DS"]
  def name("00181154"), do: :average_pulse_width

  # (0018,1155) RadiationSetting dvCS
  # VR values: ["CS"]
  def name("00181155"), do: :radiation_setting

  # (0018,1156) RectificationType dvCS
  # VR values: ["CS"]
  def name("00181156"), do: :rectification_type

  # (0018,115A) RadiationMode dvCS
  # VR values: ["CS"]
  def name("0018115A"), do: :radiation_mode

  # (0018,115E) ImageandFluoroscopyAreaDoseProduct dvDS
  # VR values: ["DS"]
  def name("0018115E"), do: :imageand_fluoroscopy_area_dose_product

  # (0018,1160) FilterType dvSH
  # VR values: ["SH"]
  def name("00181160"), do: :filter_type

  # (0018,1161) TypeofFilters dvLO
  # VR values: ["LO"]
  def name("00181161"), do: :typeof_filters

  # (0018,1162) IntensifierSize dvDS
  # VR values: ["DS"]
  def name("00181162"), do: :intensifier_size

  # (0018,1164) ImagerPixelSpacing dvDS
  # VR values: ["DS"]
  def name("00181164"), do: :imager_pixel_spacing

  # (0018,1166) Grid dvCS
  # VR values: ["CS"]
  def name("00181166"), do: :grid

  # (0018,1170) GeneratorPower dvIS
  # VR values: ["IS"]
  def name("00181170"), do: :generator_power

  # (0018,1180) Collimator/gridName dvSH
  # VR values: ["SH"]
  def name("00181180"), do: :collimator_grid_name

  # (0018,1181) CollimatorType dvCS
  # VR values: ["CS"]
  def name("00181181"), do: :collimator_type

  # (0018,1182) FocalDistance dvIS
  # VR values: ["IS"]
  def name("00181182"), do: :focal_distance

  # (0018,1183) XFocusCenter dvDS
  # VR values: ["DS"]
  def name("00181183"), do: :x_focus_center

  # (0018,1184) YFocusCenter dvDS
  # VR values: ["DS"]
  def name("00181184"), do: :y_focus_center

  # (0018,1190) FocalSpot(s) dvDS
  # VR values: ["DS"]
  def name("00181190"), do: :focal_spots

  # (0018,1191) AnodeTargetMaterial dvCS
  # VR values: ["CS"]
  def name("00181191"), do: :anode_target_material

  # (0018,11A0) BodyPartThickness dvDS
  # VR values: ["DS"]
  def name("001811A0"), do: :body_part_thickness

  # (0018,11A2) CompressionForce dvDS
  # VR values: ["DS"]
  def name("001811A2"), do: :compression_force

  # (0018,11A4) PaddleDescription dvLO
  # VR values: ["LO"]
  def name("001811A4"), do: :paddle_description

  # (0018,1200) DateofLastCalibration dvDA
  # VR values: ["DA"]
  def name("00181200"), do: :dateof_last_calibration

  # (0018,1201) TimeofLastCalibration dvTM
  # VR values: ["TM"]
  def name("00181201"), do: :timeof_last_calibration

  # (0018,1202) Date/TimeofLastCalibration dvDT
  # VR values: ["DT"]
  def name("00181202"), do: :date__timeof_last_calibration

  # (0018,1210) ConvolutionKernel dvSH
  # VR values: ["SH"]
  def name("00181210"), do: :convolution_kernel

  # (0018,1240) Upper/LowerPixelValues dvIS
  # VR values: ["IS"]
  def name("00181240"), do: :upper__lower_pixel_values

  # (0018,1242) ActualFrameDuration dvIS
  # VR values: ["IS"]
  def name("00181242"), do: :actual_frame_duration

  # (0018,1243) CountRate dvIS
  # VR values: ["IS"]
  def name("00181243"), do: :count_rate

  # (0018,1244) PreferredPlaybackSequencing dvUS
  # VR values: ["US"]
  def name("00181244"), do: :preferred_playback_sequencing

  # (0018,1250) ReceiveCoilName dvSH
  # VR values: ["SH"]
  def name("00181250"), do: :receive_coil_name

  # (0018,1251) TransmitCoilName dvSH
  # VR values: ["SH"]
  def name("00181251"), do: :transmit_coil_name

  # (0018,1260) PlateType dvSH
  # VR values: ["SH"]
  def name("00181260"), do: :plate_type

  # (0018,1261) PhosphorType dvLO
  # VR values: ["LO"]
  def name("00181261"), do: :phosphor_type

  # (0018,1300) ScanVelocity dvDS
  # VR values: ["DS"]
  def name("00181300"), do: :scan_velocity

  # (0018,1301) WholeBodyTechnique dvCS
  # VR values: ["CS"]
  def name("00181301"), do: :whole_body_technique

  # (0018,1302) ScanLength dvIS
  # VR values: ["IS"]
  def name("00181302"), do: :scan_length

  # (0018,1310) AcquisitionMatrix dvUS
  # VR values: ["US"]
  def name("00181310"), do: :acquisition_matrix

  # (0018,1312) In_planePhaseEncodingDirection dvCS
  # VR values: ["CS"]
  def name("00181312"), do: :in_plane_phase_encoding_direction

  # (0018,1314) FlipAngle dvDS
  # VR values: ["DS"]
  def name("00181314"), do: :flip_angle

  # (0018,1315) VariableFlipAngleFlag dvCS
  # VR values: ["CS"]
  def name("00181315"), do: :variable_flip_angle_flag

  # (0018,1316) SAR dvDS
  # VR values: ["DS"]
  def name("00181316"), do: :sar

  # (0018,1318) dB/dt dvDS
  # VR values: ["DS"]
  def name("00181318"), do: :d_b_dt

  # (0018,1400) AcquisitionDeviceProcessingDescription dvLO
  # VR values: ["LO"]
  def name("00181400"), do: :acquisition_device_processing_description

  # (0018,1401) AcquisitionDeviceProcessingCode dvLO
  # VR values: ["LO"]
  def name("00181401"), do: :acquisition_device_processing_code

  # (0018,1402) CassetteOrientation dvCS
  # VR values: ["CS"]
  def name("00181402"), do: :cassette_orientation

  # (0018,1403) CassetteSize dvCS
  # VR values: ["CS"]
  def name("00181403"), do: :cassette_size

  # (0018,1404) ExposuresonPlate dvUS
  # VR values: ["US"]
  def name("00181404"), do: :exposureson_plate

  # (0018,1405) RelativeX_RayExposure dvIS
  # VR values: ["IS"]
  def name("00181405"), do: :relativex_ray_exposure

  # (0018,1411) ExposureIndex dvDS
  # VR values: ["DS"]
  def name("00181411"), do: :exposure_index

  # (0018,1412) TargetExposureIndex dvDS
  # VR values: ["DS"]
  def name("00181412"), do: :target_exposure_index

  # (0018,1413) DeviationIndex dvDS
  # VR values: ["DS"]
  def name("00181413"), do: :deviation_index

  # (0018,1450) ColumnAngulation dvDS
  # VR values: ["DS"]
  def name("00181450"), do: :column_angulation

  # (0018,1460) TomoLayerHeight dvDS
  # VR values: ["DS"]
  def name("00181460"), do: :tomo_layer_height

  # (0018,1470) TomoAngle dvDS
  # VR values: ["DS"]
  def name("00181470"), do: :tomo_angle

  # (0018,1480) TomoTime dvDS
  # VR values: ["DS"]
  def name("00181480"), do: :tomo_time

  # (0018,1490) TomoType dvCS
  # VR values: ["CS"]
  def name("00181490"), do: :tomo_type

  # (0018,1491) TomoClass dvCS
  # VR values: ["CS"]
  def name("00181491"), do: :tomo_class

  # (0018,1495) NumberofTomosynthesisSourceImages dvIS
  # VR values: ["IS"]
  def name("00181495"), do: :numberof_tomosynthesis_source_images

  # (0018,1500) PositionerMotion dvCS
  # VR values: ["CS"]
  def name("00181500"), do: :positioner_motion

  # (0018,1508) PositionerType dvCS
  # VR values: ["CS"]
  def name("00181508"), do: :positioner_type

  # (0018,1510) PositionerPrimaryAngle dvDS
  # VR values: ["DS"]
  def name("00181510"), do: :positioner_primary_angle

  # (0018,1511) PositionerSecondaryAngle dvDS
  # VR values: ["DS"]
  def name("00181511"), do: :positioner_secondary_angle

  # (0018,1520) PositionerPrimaryAngleIncrement dvDS
  # VR values: ["DS"]
  def name("00181520"), do: :positioner_primary_angle_increment

  # (0018,1521) PositionerSecondaryAngleIncrement dvDS
  # VR values: ["DS"]
  def name("00181521"), do: :positioner_secondary_angle_increment

  # (0018,1530) DetectorPrimaryAngle dvDS
  # VR values: ["DS"]
  def name("00181530"), do: :detector_primary_angle

  # (0018,1531) DetectorSecondaryAngle dvDS
  # VR values: ["DS"]
  def name("00181531"), do: :detector_secondary_angle

  # (0018,1600) ShutterShape dvCS
  # VR values: ["CS"]
  def name("00181600"), do: :shutter_shape

  # (0018,1602) ShutterLeftVerticalEdge dvIS
  # VR values: ["IS"]
  def name("00181602"), do: :shutter_left_vertical_edge

  # (0018,1604) ShutterRightVerticalEdge dvIS
  # VR values: ["IS"]
  def name("00181604"), do: :shutter_right_vertical_edge

  # (0018,1606) ShutterUpperHorizontalEdge dvIS
  # VR values: ["IS"]
  def name("00181606"), do: :shutter_upper_horizontal_edge

  # (0018,1608) ShutterLowerHorizontalEdge dvIS
  # VR values: ["IS"]
  def name("00181608"), do: :shutter_lower_horizontal_edge

  # (0018,1610) CenterofCircularShutter dvIS
  # VR values: ["IS"]
  def name("00181610"), do: :centerof_circular_shutter

  # (0018,1612) RadiusofCircularShutter dvIS
  # VR values: ["IS"]
  def name("00181612"), do: :radiusof_circular_shutter

  # (0018,1620) VerticesofthePolygonalShutter dvIS
  # VR values: ["IS"]
  def name("00181620"), do: :verticesofthe_polygonal_shutter

  # (0018,1622) ShutterPresentationValue dvUS
  # VR values: ["US"]
  def name("00181622"), do: :shutter_presentation_value

  # (0018,1623) ShutterOverlayGroup dvUS
  # VR values: ["US"]
  def name("00181623"), do: :shutter_overlay_group

  # (0018,1624) ShutterPresentationColorCIELabValue dvUS
  # VR values: ["US"]
  def name("00181624"), do: :shutter_presentation_color_cie_lab_value

  # (0018,1700) CollimatorShape dvCS
  # VR values: ["CS"]
  def name("00181700"), do: :collimator_shape

  # (0018,1702) CollimatorLeftVerticalEdge dvIS
  # VR values: ["IS"]
  def name("00181702"), do: :collimator_left_vertical_edge

  # (0018,1704) CollimatorRightVerticalEdge dvIS
  # VR values: ["IS"]
  def name("00181704"), do: :collimator_right_vertical_edge

  # (0018,1706) CollimatorUpperHorizontalEdge dvIS
  # VR values: ["IS"]
  def name("00181706"), do: :collimator_upper_horizontal_edge

  # (0018,1708) CollimatorLowerHorizontalEdge dvIS
  # VR values: ["IS"]
  def name("00181708"), do: :collimator_lower_horizontal_edge

  # (0018,1710) CenterofCircularCollimator dvIS
  # VR values: ["IS"]
  def name("00181710"), do: :centerof_circular_collimator

  # (0018,1712) RadiusofCircularCollimator dvIS
  # VR values: ["IS"]
  def name("00181712"), do: :radiusof_circular_collimator

  # (0018,1720) VerticesofthePolygonalCollimator dvIS
  # VR values: ["IS"]
  def name("00181720"), do: :verticesofthe_polygonal_collimator

  # (0018,1800) AcquisitionTimeSynchronized dvCS
  # VR values: ["CS"]
  def name("00181800"), do: :acquisition_time_synchronized

  # (0018,1801) TimeSource dvSH
  # VR values: ["SH"]
  def name("00181801"), do: :time_source

  # (0018,1802) TimeDistributionProtocol dvCS
  # VR values: ["CS"]
  def name("00181802"), do: :time_distribution_protocol

  # (0018,1803) NTPSourceAddress dvLO
  # VR values: ["LO"]
  def name("00181803"), do: :ntp_source_address

  # (0018,2001) PageNumberVector dvIS
  # VR values: ["IS"]
  def name("00182001"), do: :page_number_vector

  # (0018,2002) FrameLabelVector dvSH
  # VR values: ["SH"]
  def name("00182002"), do: :frame_label_vector

  # (0018,2003) FramePrimaryAngleVector dvDS
  # VR values: ["DS"]
  def name("00182003"), do: :frame_primary_angle_vector

  # (0018,2004) FrameSecondaryAngleVector dvDS
  # VR values: ["DS"]
  def name("00182004"), do: :frame_secondary_angle_vector

  # (0018,2005) SliceLocationVector dvDS
  # VR values: ["DS"]
  def name("00182005"), do: :slice_location_vector

  # (0018,2006) DisplayWindowLabelVector dvSH
  # VR values: ["SH"]
  def name("00182006"), do: :display_window_label_vector

  # (0018,2010) NominalScannedPixelSpacing dvDS
  # VR values: ["DS"]
  def name("00182010"), do: :nominal_scanned_pixel_spacing

  # (0018,2020) DigitizingDeviceTransportDirection dvCS
  # VR values: ["CS"]
  def name("00182020"), do: :digitizing_device_transport_direction

  # (0018,2030) RotationofScannedFilm dvDS
  # VR values: ["DS"]
  def name("00182030"), do: :rotationof_scanned_film

  # (0018,2041) BiopsyTargetSequence dvSQ
  # VR values: ["SQ"]
  def name("00182041"), do: :biopsy_target_sequence

  # (0018,2042) TargetUID dvUI
  # VR values: ["UI"]
  def name("00182042"), do: :target_uid

  # (0018,2043) LocalizingCursorPosition dvFL
  # VR values: ["FL"]
  def name("00182043"), do: :localizing_cursor_position

  # (0018,2044) CalculatedTargetPosition dvFL
  # VR values: ["FL"]
  def name("00182044"), do: :calculated_target_position

  # (0018,2045) TargetLabel dvSH
  # VR values: ["SH"]
  def name("00182045"), do: :target_label

  # (0018,2046) DisplayedZValue dvFL
  # VR values: ["FL"]
  def name("00182046"), do: :displayed_z_value

  # (0018,3100) IVUSAcquisition dvCS
  # VR values: ["CS"]
  def name("00183100"), do: :ivus_acquisition

  # (0018,3101) IVUSPullbackRate dvDS
  # VR values: ["DS"]
  def name("00183101"), do: :ivus_pullback_rate

  # (0018,3102) IVUSGatedRate dvDS
  # VR values: ["DS"]
  def name("00183102"), do: :ivus_gated_rate

  # (0018,3103) IVUSPullbackStartFrameNumber dvIS
  # VR values: ["IS"]
  def name("00183103"), do: :ivus_pullback_start_frame_number

  # (0018,3104) IVUSPullbackStopFrameNumber dvIS
  # VR values: ["IS"]
  def name("00183104"), do: :ivus_pullback_stop_frame_number

  # (0018,3105) LesionNumber dvIS
  # VR values: ["IS"]
  def name("00183105"), do: :lesion_number

  # (0018,4000) AcquisitionComments dvLT
  # VR values: ["LT"]
  def name("00184000"), do: :acquisition_comments

  # (0018,5000) OutputPower dvSH
  # VR values: ["SH"]
  def name("00185000"), do: :output_power

  # (0018,5010) TransducerData dvLO
  # VR values: ["LO"]
  def name("00185010"), do: :transducer_data

  # (0018,5012) FocusDepth dvDS
  # VR values: ["DS"]
  def name("00185012"), do: :focus_depth

  # (0018,5020) ProcessingFunction dvLO
  # VR values: ["LO"]
  def name("00185020"), do: :processing_function

  # (0018,5021) PostprocessingFunction dvLO
  # VR values: ["LO"]
  def name("00185021"), do: :postprocessing_function

  # (0018,5022) MechanicalIndex dvDS
  # VR values: ["DS"]
  def name("00185022"), do: :mechanical_index

  # (0018,5024) BoneThermalIndex dvDS
  # VR values: ["DS"]
  def name("00185024"), do: :bone_thermal_index

  # (0018,5026) CranialThermalIndex dvDS
  # VR values: ["DS"]
  def name("00185026"), do: :cranial_thermal_index

  # (0018,5027) SoftTissueThermalIndex dvDS
  # VR values: ["DS"]
  def name("00185027"), do: :soft_tissue_thermal_index

  # (0018,5028) SoftTissue_focusThermalIndex dvDS
  # VR values: ["DS"]
  def name("00185028"), do: :soft_tissue_focus_thermal_index

  # (0018,5029) SoftTissue_surfaceThermalIndex dvDS
  # VR values: ["DS"]
  def name("00185029"), do: :soft_tissue_surface_thermal_index

  # (0018,5030) DynamicRange dvDS
  # VR values: ["DS"]
  def name("00185030"), do: :dynamic_range

  # (0018,5040) TotalGain dvDS
  # VR values: ["DS"]
  def name("00185040"), do: :total_gain

  # (0018,5050) DepthofScanField dvIS
  # VR values: ["IS"]
  def name("00185050"), do: :depthof_scan_field

  # (0018,5100) PatientPosition dvCS
  # VR values: ["CS"]
  def name("00185100"), do: :patient_position

  # (0018,5101) ViewPosition dvCS
  # VR values: ["CS"]
  def name("00185101"), do: :view_position

  # (0018,5104) ProjectionEponymousNameCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00185104"), do: :projection_eponymous_name_code_sequence

  # (0018,5210) ImageTransformationMatrix dvDS
  # VR values: ["DS"]
  def name("00185210"), do: :image_transformation_matrix

  # (0018,5212) ImageTranslationVector dvDS
  # VR values: ["DS"]
  def name("00185212"), do: :image_translation_vector

  # (0018,6000) Sensitivity dvDS
  # VR values: ["DS"]
  def name("00186000"), do: :sensitivity

  # (0018,6011) SequenceofUltrasoundRegions dvSQ
  # VR values: ["SQ"]
  def name("00186011"), do: :sequenceof_ultrasound_regions

  # (0018,6012) RegionSpatialFormat dvUS
  # VR values: ["US"]
  def name("00186012"), do: :region_spatial_format

  # (0018,6014) RegionDataType dvUS
  # VR values: ["US"]
  def name("00186014"), do: :region_data_type

  # (0018,6016) RegionFlags dvUL
  # VR values: ["UL"]
  def name("00186016"), do: :region_flags

  # (0018,6018) RegionLocationMinX0 dvUL
  # VR values: ["UL"]
  def name("00186018"), do: :region_location_min_x0

  # (0018,601A) RegionLocationMinY0 dvUL
  # VR values: ["UL"]
  def name("0018601A"), do: :region_location_min_y0

  # (0018,601C) RegionLocationMaxX1 dvUL
  # VR values: ["UL"]
  def name("0018601C"), do: :region_location_max_x1

  # (0018,601E) RegionLocationMaxY1 dvUL
  # VR values: ["UL"]
  def name("0018601E"), do: :region_location_max_y1

  # (0018,6020) ReferencePixelX0 dvSL
  # VR values: ["SL"]
  def name("00186020"), do: :reference_pixel_x0

  # (0018,6022) ReferencePixelY0 dvSL
  # VR values: ["SL"]
  def name("00186022"), do: :reference_pixel_y0

  # (0018,6024) PhysicalUnitsXDirection dvUS
  # VR values: ["US"]
  def name("00186024"), do: :physical_units_x_direction

  # (0018,6026) PhysicalUnitsYDirection dvUS
  # VR values: ["US"]
  def name("00186026"), do: :physical_units_y_direction

  # (0018,6028) ReferencePixelPhysicalValueX dvFD
  # VR values: ["FD"]
  def name("00186028"), do: :reference_pixel_physical_value_x

  # (0018,602A) ReferencePixelPhysicalValueY dvFD
  # VR values: ["FD"]
  def name("0018602A"), do: :reference_pixel_physical_value_y

  # (0018,602C) PhysicalDeltaX dvFD
  # VR values: ["FD"]
  def name("0018602C"), do: :physical_delta_x

  # (0018,602E) PhysicalDeltaY dvFD
  # VR values: ["FD"]
  def name("0018602E"), do: :physical_delta_y

  # (0018,6030) TransducerFrequency dvUL
  # VR values: ["UL"]
  def name("00186030"), do: :transducer_frequency

  # (0018,6031) TransducerType dvCS
  # VR values: ["CS"]
  def name("00186031"), do: :transducer_type

  # (0018,6032) PulseRepetitionFrequency dvUL
  # VR values: ["UL"]
  def name("00186032"), do: :pulse_repetition_frequency

  # (0018,6034) DopplerCorrectionAngle dvFD
  # VR values: ["FD"]
  def name("00186034"), do: :doppler_correction_angle

  # (0018,6036) SteeringAngle dvFD
  # VR values: ["FD"]
  def name("00186036"), do: :steering_angle

  # (0018,6038) DopplerSampleVolumeXPosition(Retired) dvUL
  # VR values: ["UL"]
  def name("00186038"), do: :doppler_sample_volume_x_position_retired

  # (0018,6039) DopplerSampleVolumeXPosition dvSL
  # VR values: ["SL"]
  def name("00186039"), do: :doppler_sample_volume_x_position

  # (0018,603A) DopplerSampleVolumeYPosition(Retired) dvUL
  # VR values: ["UL"]
  def name("0018603A"), do: :doppler_sample_volume_y_position_retired

  # (0018,603B) DopplerSampleVolumeYPosition dvSL
  # VR values: ["SL"]
  def name("0018603B"), do: :doppler_sample_volume_y_position

  # (0018,603C) TM_LinePositionX0(Retired) dvUL
  # VR values: ["UL"]
  def name("0018603C"), do: :tm_line_position_x0_retired

  # (0018,603D) TM_LinePositionX0 dvSL
  # VR values: ["SL"]
  def name("0018603D"), do: :tm_line_position_x0

  # (0018,603E) TM_LinePositionY0(Retired) dvUL
  # VR values: ["UL"]
  def name("0018603E"), do: :tm_line_position_y0_retired

  # (0018,603F) TM_LinePositionY0 dvSL
  # VR values: ["SL"]
  def name("0018603F"), do: :tm_line_position_y0

  # (0018,6040) TM_LinePositionX1(Retired) dvUL
  # VR values: ["UL"]
  def name("00186040"), do: :tm_line_position_x1_retired

  # (0018,6041) TM_LinePositionX1 dvSL
  # VR values: ["SL"]
  def name("00186041"), do: :tm_line_position_x1

  # (0018,6042) TM_LinePositionY1(Retired) dvUL
  # VR values: ["UL"]
  def name("00186042"), do: :tm_line_position_y1_retired

  # (0018,6043) TM_LinePositionY1 dvSL
  # VR values: ["SL"]
  def name("00186043"), do: :tm_line_position_y1

  # (0018,6044) PixelComponentOrganization dvUS
  # VR values: ["US"]
  def name("00186044"), do: :pixel_component_organization

  # (0018,6046) PixelComponentMask dvUL
  # VR values: ["UL"]
  def name("00186046"), do: :pixel_component_mask

  # (0018,6048) PixelComponentRangeStart dvUL
  # VR values: ["UL"]
  def name("00186048"), do: :pixel_component_range_start

  # (0018,604A) PixelComponentRangeStop dvUL
  # VR values: ["UL"]
  def name("0018604A"), do: :pixel_component_range_stop

  # (0018,604C) PixelComponentPhysicalUnits dvUS
  # VR values: ["US"]
  def name("0018604C"), do: :pixel_component_physical_units

  # (0018,604E) PixelComponentDataType dvUS
  # VR values: ["US"]
  def name("0018604E"), do: :pixel_component_data_type

  # (0018,6050) NumberofTableBreakPoints dvUL
  # VR values: ["UL"]
  def name("00186050"), do: :numberof_table_break_points

  # (0018,6052) TableofXBreakPoints dvUL
  # VR values: ["UL"]
  def name("00186052"), do: :tableof_x_break_points

  # (0018,6054) TableofYBreakPoints dvFD
  # VR values: ["FD"]
  def name("00186054"), do: :tableof_y_break_points

  # (0018,6056) NumberofTableEntries dvUL
  # VR values: ["UL"]
  def name("00186056"), do: :numberof_table_entries

  # (0018,6058) TableofPixelValues dvUL
  # VR values: ["UL"]
  def name("00186058"), do: :tableof_pixel_values

  # (0018,605A) TableofParameterValues dvFL
  # VR values: ["FL"]
  def name("0018605A"), do: :tableof_parameter_values

  # (0018,6060) RWaveTimeVector dvFL
  # VR values: ["FL"]
  def name("00186060"), do: :r_wave_time_vector

  # (0018,7000) DetectorConditionsNominalFlag dvCS
  # VR values: ["CS"]
  def name("00187000"), do: :detector_conditions_nominal_flag

  # (0018,7001) DetectorTemperature dvDS
  # VR values: ["DS"]
  def name("00187001"), do: :detector_temperature

  # (0018,7004) DetectorType dvCS
  # VR values: ["CS"]
  def name("00187004"), do: :detector_type

  # (0018,7005) DetectorConfiguration dvCS
  # VR values: ["CS"]
  def name("00187005"), do: :detector_configuration

  # (0018,7006) DetectorDescription dvLT
  # VR values: ["LT"]
  def name("00187006"), do: :detector_description

  # (0018,7008) DetectorMode dvLT
  # VR values: ["LT"]
  def name("00187008"), do: :detector_mode

  # (0018,700A) DetectorID dvSH
  # VR values: ["SH"]
  def name("0018700A"), do: :detector_id

  # (0018,700C) DateofLastDetectorCalibration dvDA
  # VR values: ["DA"]
  def name("0018700C"), do: :dateof_last_detector_calibration

  # (0018,700E) TimeofLastDetectorCalibration dvTM
  # VR values: ["TM"]
  def name("0018700E"), do: :timeof_last_detector_calibration

  # (0018,7010) ExposuresonDetectorSinceLastCalibration dvIS
  # VR values: ["IS"]
  def name("00187010"), do: :exposureson_detector_since_last_calibration

  # (0018,7011) ExposuresonDetectorSinceManufactured dvIS
  # VR values: ["IS"]
  def name("00187011"), do: :exposureson_detector_since_manufactured

  # (0018,7012) DetectorTimeSinceLastExposure dvDS
  # VR values: ["DS"]
  def name("00187012"), do: :detector_time_since_last_exposure

  # (0018,7014) DetectorActiveTime dvDS
  # VR values: ["DS"]
  def name("00187014"), do: :detector_active_time

  # (0018,7016) DetectorActivationOffsetFromExposure dvDS
  # VR values: ["DS"]
  def name("00187016"), do: :detector_activation_offset_from_exposure

  # (0018,701A) DetectorBinning dvDS
  # VR values: ["DS"]
  def name("0018701A"), do: :detector_binning

  # (0018,7020) DetectorElementPhysicalSize dvDS
  # VR values: ["DS"]
  def name("00187020"), do: :detector_element_physical_size

  # (0018,7022) DetectorElementSpacing dvDS
  # VR values: ["DS"]
  def name("00187022"), do: :detector_element_spacing

  # (0018,7024) DetectorActiveShape dvCS
  # VR values: ["CS"]
  def name("00187024"), do: :detector_active_shape

  # (0018,7026) DetectorActiveDimension(s) dvDS
  # VR values: ["DS"]
  def name("00187026"), do: :detector_active_dimensions

  # (0018,7028) DetectorActiveOrigin dvDS
  # VR values: ["DS"]
  def name("00187028"), do: :detector_active_origin

  # (0018,702A) DetectorManufacturerName dvLO
  # VR values: ["LO"]
  def name("0018702A"), do: :detector_manufacturer_name

  # (0018,702B) DetectorManufacturer'sModelName dvLO
  # VR values: ["LO"]
  def name("0018702B"), do: :detector_manufacturers_model_name

  # (0018,7030) FieldofViewOrigin dvDS
  # VR values: ["DS"]
  def name("00187030"), do: :fieldof_view_origin

  # (0018,7032) FieldofViewRotation dvDS
  # VR values: ["DS"]
  def name("00187032"), do: :fieldof_view_rotation

  # (0018,7034) FieldofViewHorizontalFlip dvCS
  # VR values: ["CS"]
  def name("00187034"), do: :fieldof_view_horizontal_flip

  # (0018,7036) PixelDataAreaOriginRelativetoFOV dvFL
  # VR values: ["FL"]
  def name("00187036"), do: :pixel_data_area_origin_relativeto_fov

  # (0018,7038) PixelDataAreaRotationAngleRelativetoFOV dvFL
  # VR values: ["FL"]
  def name("00187038"), do: :pixel_data_area_rotation_angle_relativeto_fov

  # (0018,7040) GridAbsorbingMaterial dvLT
  # VR values: ["LT"]
  def name("00187040"), do: :grid_absorbing_material

  # (0018,7041) GridSpacingMaterial dvLT
  # VR values: ["LT"]
  def name("00187041"), do: :grid_spacing_material

  # (0018,7042) GridThickness dvDS
  # VR values: ["DS"]
  def name("00187042"), do: :grid_thickness

  # (0018,7044) GridPitch dvDS
  # VR values: ["DS"]
  def name("00187044"), do: :grid_pitch

  # (0018,7046) GridAspectRatio dvIS
  # VR values: ["IS"]
  def name("00187046"), do: :grid_aspect_ratio

  # (0018,7048) GridPeriod dvDS
  # VR values: ["DS"]
  def name("00187048"), do: :grid_period

  # (0018,704C) GridFocalDistance dvDS
  # VR values: ["DS"]
  def name("0018704C"), do: :grid_focal_distance

  # (0018,7050) FilterMaterial dvCS
  # VR values: ["CS"]
  def name("00187050"), do: :filter_material

  # (0018,7052) FilterThicknessMinimum dvDS
  # VR values: ["DS"]
  def name("00187052"), do: :filter_thickness_minimum

  # (0018,7054) FilterThicknessMaximum dvDS
  # VR values: ["DS"]
  def name("00187054"), do: :filter_thickness_maximum

  # (0018,7056) FilterBeamPathLengthMinimum dvFL
  # VR values: ["FL"]
  def name("00187056"), do: :filter_beam_path_length_minimum

  # (0018,7058) FilterBeamPathLengthMaximum dvFL
  # VR values: ["FL"]
  def name("00187058"), do: :filter_beam_path_length_maximum

  # (0018,7060) ExposureControlMode dvCS
  # VR values: ["CS"]
  def name("00187060"), do: :exposure_control_mode

  # (0018,7062) ExposureControlModeDescription dvLT
  # VR values: ["LT"]
  def name("00187062"), do: :exposure_control_mode_description

  # (0018,7064) ExposureStatus dvCS
  # VR values: ["CS"]
  def name("00187064"), do: :exposure_status

  # (0018,7065) PhototimerSetting dvDS
  # VR values: ["DS"]
  def name("00187065"), do: :phototimer_setting

  # (0018,8150) ExposureTimeinuS dvDS
  # VR values: ["DS"]
  def name("00188150"), do: :exposure_timeinu_s

  # (0018,8151) X_RayTubeCurrentinuA dvDS
  # VR values: ["DS"]
  def name("00188151"), do: :x_ray_tube_currentinu_a

  # (0018,9004) ContentQualification dvCS
  # VR values: ["CS"]
  def name("00189004"), do: :content_qualification

  # (0018,9005) PulseSequenceName dvSH
  # VR values: ["SH"]
  def name("00189005"), do: :pulse_sequence_name

  # (0018,9006) MRImagingModifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00189006"), do: :mr_imaging_modifier_sequence

  # (0018,9008) EchoPulseSequence dvCS
  # VR values: ["CS"]
  def name("00189008"), do: :echo_pulse_sequence

  # (0018,9009) InversionRecovery dvCS
  # VR values: ["CS"]
  def name("00189009"), do: :inversion_recovery

  # (0018,9010) FlowCompensation dvCS
  # VR values: ["CS"]
  def name("00189010"), do: :flow_compensation

  # (0018,9011) MultipleSpinEcho dvCS
  # VR values: ["CS"]
  def name("00189011"), do: :multiple_spin_echo

  # (0018,9012) Multi_planarExcitation dvCS
  # VR values: ["CS"]
  def name("00189012"), do: :multi_planar_excitation

  # (0018,9014) PhaseContrast dvCS
  # VR values: ["CS"]
  def name("00189014"), do: :phase_contrast

  # (0018,9015) TimeofFlightContrast dvCS
  # VR values: ["CS"]
  def name("00189015"), do: :timeof_flight_contrast

  # (0018,9016) Spoiling dvCS
  # VR values: ["CS"]
  def name("00189016"), do: :spoiling

  # (0018,9017) SteadyStatePulseSequence dvCS
  # VR values: ["CS"]
  def name("00189017"), do: :steady_state_pulse_sequence

  # (0018,9018) EchoPlanarPulseSequence dvCS
  # VR values: ["CS"]
  def name("00189018"), do: :echo_planar_pulse_sequence

  # (0018,9019) TagAngleFirstAxis dvFD
  # VR values: ["FD"]
  def name("00189019"), do: :tag_angle_first_axis

  # (0018,9020) MagnetizationTransfer dvCS
  # VR values: ["CS"]
  def name("00189020"), do: :magnetization_transfer

  # (0018,9021) T2Preparation dvCS
  # VR values: ["CS"]
  def name("00189021"), do: :t2_preparation

  # (0018,9022) BloodSignalNulling dvCS
  # VR values: ["CS"]
  def name("00189022"), do: :blood_signal_nulling

  # (0018,9024) SaturationRecovery dvCS
  # VR values: ["CS"]
  def name("00189024"), do: :saturation_recovery

  # (0018,9025) SpectrallySelectedSuppression dvCS
  # VR values: ["CS"]
  def name("00189025"), do: :spectrally_selected_suppression

  # (0018,9026) SpectrallySelectedExcitation dvCS
  # VR values: ["CS"]
  def name("00189026"), do: :spectrally_selected_excitation

  # (0018,9027) SpatialPre_saturation dvCS
  # VR values: ["CS"]
  def name("00189027"), do: :spatial_pre_saturation

  # (0018,9028) Tagging dvCS
  # VR values: ["CS"]
  def name("00189028"), do: :tagging

  # (0018,9029) OversamplingPhase dvCS
  # VR values: ["CS"]
  def name("00189029"), do: :oversampling_phase

  # (0018,9030) TagSpacingFirstDimension dvFD
  # VR values: ["FD"]
  def name("00189030"), do: :tag_spacing_first_dimension

  # (0018,9032) Geometryofk_SpaceTraversal dvCS
  # VR values: ["CS"]
  def name("00189032"), do: :geometryofk_space_traversal

  # (0018,9033) Segmentedk_SpaceTraversal dvCS
  # VR values: ["CS"]
  def name("00189033"), do: :segmentedk_space_traversal

  # (0018,9034) RectilinearPhaseEncodeReordering dvCS
  # VR values: ["CS"]
  def name("00189034"), do: :rectilinear_phase_encode_reordering

  # (0018,9035) TagThickness dvFD
  # VR values: ["FD"]
  def name("00189035"), do: :tag_thickness

  # (0018,9036) PartialFourierDirection dvCS
  # VR values: ["CS"]
  def name("00189036"), do: :partial_fourier_direction

  # (0018,9037) CardiacSynchronizationTechnique dvCS
  # VR values: ["CS"]
  def name("00189037"), do: :cardiac_synchronization_technique

  # (0018,9041) ReceiveCoilManufacturerName dvLO
  # VR values: ["LO"]
  def name("00189041"), do: :receive_coil_manufacturer_name

  # (0018,9042) MRReceiveCoilSequence dvSQ
  # VR values: ["SQ"]
  def name("00189042"), do: :mr_receive_coil_sequence

  # (0018,9043) ReceiveCoilType dvCS
  # VR values: ["CS"]
  def name("00189043"), do: :receive_coil_type

  # (0018,9044) QuadratureReceiveCoil dvCS
  # VR values: ["CS"]
  def name("00189044"), do: :quadrature_receive_coil

  # (0018,9045) Multi_CoilDefinitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189045"), do: :multi_coil_definition_sequence

  # (0018,9046) Multi_CoilConfiguration dvLO
  # VR values: ["LO"]
  def name("00189046"), do: :multi_coil_configuration

  # (0018,9047) Multi_CoilElementName dvSH
  # VR values: ["SH"]
  def name("00189047"), do: :multi_coil_element_name

  # (0018,9048) Multi_CoilElementUsed dvCS
  # VR values: ["CS"]
  def name("00189048"), do: :multi_coil_element_used

  # (0018,9049) MRTransmitCoilSequence dvSQ
  # VR values: ["SQ"]
  def name("00189049"), do: :mr_transmit_coil_sequence

  # (0018,9050) TransmitCoilManufacturerName dvLO
  # VR values: ["LO"]
  def name("00189050"), do: :transmit_coil_manufacturer_name

  # (0018,9051) TransmitCoilType dvCS
  # VR values: ["CS"]
  def name("00189051"), do: :transmit_coil_type

  # (0018,9052) SpectralWidth dvFD
  # VR values: ["FD"]
  def name("00189052"), do: :spectral_width

  # (0018,9053) ChemicalShiftReference dvFD
  # VR values: ["FD"]
  def name("00189053"), do: :chemical_shift_reference

  # (0018,9054) VolumeLocalizationTechnique dvCS
  # VR values: ["CS"]
  def name("00189054"), do: :volume_localization_technique

  # (0018,9058) MRAcquisitionFrequencyEncodingSteps dvUS
  # VR values: ["US"]
  def name("00189058"), do: :mr_acquisition_frequency_encoding_steps

  # (0018,9059) De-coupling dvCS
  # VR values: ["CS"]
  def name("00189059"), do: :de_coupling

  # (0018,9060) De_coupledNucleus dvCS
  # VR values: ["CS"]
  def name("00189060"), do: :de_coupled_nucleus

  # (0018,9061) De_couplingFrequency dvFD
  # VR values: ["FD"]
  def name("00189061"), do: :de_coupling_frequency

  # (0018,9062) De_couplingMethod dvCS
  # VR values: ["CS"]
  def name("00189062"), do: :de_coupling_method

  # (0018,9063) De_couplingChemicalShiftReference dvFD
  # VR values: ["FD"]
  def name("00189063"), do: :de_coupling_chemical_shift_reference

  # (0018,9064) k_spaceFiltering dvCS
  # VR values: ["CS"]
  def name("00189064"), do: :k_space_filtering

  # (0018,9065) TimeDomainFiltering dvCS
  # VR values: ["CS"]
  def name("00189065"), do: :time_domain_filtering

  # (0018,9066) NumberofZeroFills dvUS
  # VR values: ["US"]
  def name("00189066"), do: :numberof_zero_fills

  # (0018,9067) BaselineCorrection dvCS
  # VR values: ["CS"]
  def name("00189067"), do: :baseline_correction

  # (0018,9069) ParallelReductionFactorIn_plane dvFD
  # VR values: ["FD"]
  def name("00189069"), do: :parallel_reduction_factor_in_plane

  # (0018,9070) CardiacR_RIntervalSpecified dvFD
  # VR values: ["FD"]
  def name("00189070"), do: :cardiacr_r_interval_specified

  # (0018,9073) AcquisitionDuration dvFD
  # VR values: ["FD"]
  def name("00189073"), do: :acquisition_duration

  # (0018,9074) FrameAcquisitionDate/Time dvDT
  # VR values: ["DT"]
  def name("00189074"), do: :frame_acquisition_date__time

  # (0018,9075) DiffusionDirectionality dvCS
  # VR values: ["CS"]
  def name("00189075"), do: :diffusion_directionality

  # (0018,9076) DiffusionGradientDirectionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189076"), do: :diffusion_gradient_direction_sequence

  # (0018,9077) ParallelAcquisition dvCS
  # VR values: ["CS"]
  def name("00189077"), do: :parallel_acquisition

  # (0018,9078) ParallelAcquisitionTechnique dvCS
  # VR values: ["CS"]
  def name("00189078"), do: :parallel_acquisition_technique

  # (0018,9079) InversionTimes dvFD
  # VR values: ["FD"]
  def name("00189079"), do: :inversion_times

  # (0018,9080) MetaboliteMapDescription dvST
  # VR values: ["ST"]
  def name("00189080"), do: :metabolite_map_description

  # (0018,9081) PartialFourier dvCS
  # VR values: ["CS"]
  def name("00189081"), do: :partial_fourier

  # (0018,9082) EffectiveEchoTime dvFD
  # VR values: ["FD"]
  def name("00189082"), do: :effective_echo_time

  # (0018,9083) MetaboliteMapCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189083"), do: :metabolite_map_code_sequence

  # (0018,9084) ChemicalShiftSequence dvSQ
  # VR values: ["SQ"]
  def name("00189084"), do: :chemical_shift_sequence

  # (0018,9085) CardiacSignalSource dvCS
  # VR values: ["CS"]
  def name("00189085"), do: :cardiac_signal_source

  # (0018,9087) Diffusionb_value dvFD
  # VR values: ["FD"]
  def name("00189087"), do: :diffusionb_value

  # (0018,9089) DiffusionGradientOrientation dvFD
  # VR values: ["FD"]
  def name("00189089"), do: :diffusion_gradient_orientation

  # (0018,9090) VelocityEncodingDirection dvFD
  # VR values: ["FD"]
  def name("00189090"), do: :velocity_encoding_direction

  # (0018,9091) VelocityEncodingMinimumValue dvFD
  # VR values: ["FD"]
  def name("00189091"), do: :velocity_encoding_minimum_value

  # (0018,9092) VelocityEncodingAcquisitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189092"), do: :velocity_encoding_acquisition_sequence

  # (0018,9093) Numberofk_SpaceTrajectories dvUS
  # VR values: ["US"]
  def name("00189093"), do: :numberofk_space_trajectories

  # (0018,9094) Coverageofk_Space dvCS
  # VR values: ["CS"]
  def name("00189094"), do: :coverageofk_space

  # (0018,9095) SpectroscopyAcquisitionPhaseRows dvUL
  # VR values: ["UL"]
  def name("00189095"), do: :spectroscopy_acquisition_phase_rows

  # (0018,9096) ParallelReductionFactorIn_plane(Retired) dvFD
  # VR values: ["FD"]
  def name("00189096"), do: :parallel_reduction_factor_in_plane_retired

  # (0018,9098) TransmitterFrequency dvFD
  # VR values: ["FD"]
  def name("00189098"), do: :transmitter_frequency

  # (0018,9100) ResonantNucleus dvCS
  # VR values: ["CS"]
  def name("00189100"), do: :resonant_nucleus

  # (0018,9101) FrequencyCorrection dvCS
  # VR values: ["CS"]
  def name("00189101"), do: :frequency_correction

  # (0018,9103) MRSpectroscopyFOV/GeometrySequence dvSQ
  # VR values: ["SQ"]
  def name("00189103"), do: :mr_spectroscopy_fo_v__geometry_sequence

  # (0018,9104) SlabThickness dvFD
  # VR values: ["FD"]
  def name("00189104"), do: :slab_thickness

  # (0018,9105) SlabOrientation dvFD
  # VR values: ["FD"]
  def name("00189105"), do: :slab_orientation

  # (0018,9106) MidSlabPosition dvFD
  # VR values: ["FD"]
  def name("00189106"), do: :mid_slab_position

  # (0018,9107) MRSpatialSaturationSequence dvSQ
  # VR values: ["SQ"]
  def name("00189107"), do: :mr_spatial_saturation_sequence

  # (0018,9112) MRTimingandRelatedParametersSequence dvSQ
  # VR values: ["SQ"]
  def name("00189112"), do: :mr_timingand_related_parameters_sequence

  # (0018,9114) MREchoSequence dvSQ
  # VR values: ["SQ"]
  def name("00189114"), do: :mr_echo_sequence

  # (0018,9115) MRModifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00189115"), do: :mr_modifier_sequence

  # (0018,9117) MRDiffusionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189117"), do: :mr_diffusion_sequence

  # (0018,9118) CardiacSynchronizationSequence dvSQ
  # VR values: ["SQ"]
  def name("00189118"), do: :cardiac_synchronization_sequence

  # (0018,9119) MRAveragesSequence dvSQ
  # VR values: ["SQ"]
  def name("00189119"), do: :mr_averages_sequence

  # (0018,9125) MRFOV/GeometrySequence dvSQ
  # VR values: ["SQ"]
  def name("00189125"), do: :mrfo_v__geometry_sequence

  # (0018,9126) VolumeLocalizationSequence dvSQ
  # VR values: ["SQ"]
  def name("00189126"), do: :volume_localization_sequence

  # (0018,9127) SpectroscopyAcquisitionDataColumns dvUL
  # VR values: ["UL"]
  def name("00189127"), do: :spectroscopy_acquisition_data_columns

  # (0018,9147) DiffusionAnisotropyType dvCS
  # VR values: ["CS"]
  def name("00189147"), do: :diffusion_anisotropy_type

  # (0018,9151) FrameReferenceDate/Time dvDT
  # VR values: ["DT"]
  def name("00189151"), do: :frame_reference_date__time

  # (0018,9152) MRMetaboliteMapSequence dvSQ
  # VR values: ["SQ"]
  def name("00189152"), do: :mr_metabolite_map_sequence

  # (0018,9155) ParallelReductionFactorout_of_plane dvFD
  # VR values: ["FD"]
  def name("00189155"), do: :parallel_reduction_factorout_of_plane

  # (0018,9159) SpectroscopyAcquisitionOut_of_planePhaseSteps dvUL
  # VR values: ["UL"]
  def name("00189159"), do: :spectroscopy_acquisition_out_of_plane_phase_steps

  # (0018,9166) BulkMotionStatus dvCS
  # VR values: ["CS"]
  def name("00189166"), do: :bulk_motion_status

  # (0018,9168) ParallelReductionFactorSecondIn_plane dvFD
  # VR values: ["FD"]
  def name("00189168"), do: :parallel_reduction_factor_second_in_plane

  # (0018,9169) CardiacBeatRejectionTechnique dvCS
  # VR values: ["CS"]
  def name("00189169"), do: :cardiac_beat_rejection_technique

  # (0018,9170) RespiratoryMotionCompensationTechnique dvCS
  # VR values: ["CS"]
  def name("00189170"), do: :respiratory_motion_compensation_technique

  # (0018,9171) RespiratorySignalSource dvCS
  # VR values: ["CS"]
  def name("00189171"), do: :respiratory_signal_source

  # (0018,9172) BulkMotionCompensationTechnique dvCS
  # VR values: ["CS"]
  def name("00189172"), do: :bulk_motion_compensation_technique

  # (0018,9173) BulkMotionSignalSource dvCS
  # VR values: ["CS"]
  def name("00189173"), do: :bulk_motion_signal_source

  # (0018,9174) ApplicableSafetyStandardAgency dvCS
  # VR values: ["CS"]
  def name("00189174"), do: :applicable_safety_standard_agency

  # (0018,9175) ApplicableSafetyStandardDescription dvLO
  # VR values: ["LO"]
  def name("00189175"), do: :applicable_safety_standard_description

  # (0018,9176) OperatingModeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189176"), do: :operating_mode_sequence

  # (0018,9177) OperatingModeType dvCS
  # VR values: ["CS"]
  def name("00189177"), do: :operating_mode_type

  # (0018,9178) OperatingMode dvCS
  # VR values: ["CS"]
  def name("00189178"), do: :operating_mode

  # (0018,9179) SpecificAbsorptionRateDefinition dvCS
  # VR values: ["CS"]
  def name("00189179"), do: :specific_absorption_rate_definition

  # (0018,9180) GradientOutputType dvCS
  # VR values: ["CS"]
  def name("00189180"), do: :gradient_output_type

  # (0018,9181) SpecificAbsorptionRateValue dvFD
  # VR values: ["FD"]
  def name("00189181"), do: :specific_absorption_rate_value

  # (0018,9182) GradientOutput dvFD
  # VR values: ["FD"]
  def name("00189182"), do: :gradient_output

  # (0018,9183) FlowCompensationDirection dvCS
  # VR values: ["CS"]
  def name("00189183"), do: :flow_compensation_direction

  # (0018,9184) TaggingDelay dvFD
  # VR values: ["FD"]
  def name("00189184"), do: :tagging_delay

  # (0018,9185) RespiratoryMotionCompensationTechniqueDescription dvST
  # VR values: ["ST"]
  def name("00189185"), do: :respiratory_motion_compensation_technique_description

  # (0018,9186) RespiratorySignalSourceID dvSH
  # VR values: ["SH"]
  def name("00189186"), do: :respiratory_signal_source_id

  # (0018,9195) ChemicalShiftMinimumIntegrationLimitinHz dvFD
  # VR values: ["FD"]
  def name("00189195"), do: :chemical_shift_minimum_integration_limitin_hz

  # (0018,9196) ChemicalShiftMaximumIntegrationLimitinHz dvFD
  # VR values: ["FD"]
  def name("00189196"), do: :chemical_shift_maximum_integration_limitin_hz

  # (0018,9197) MRVelocityEncodingSequence dvSQ
  # VR values: ["SQ"]
  def name("00189197"), do: :mr_velocity_encoding_sequence

  # (0018,9198) FirstOrderPhaseCorrection dvCS
  # VR values: ["CS"]
  def name("00189198"), do: :first_order_phase_correction

  # (0018,9199) WaterReferencedPhaseCorrection dvCS
  # VR values: ["CS"]
  def name("00189199"), do: :water_referenced_phase_correction

  # (0018,9200) MRSpectroscopyAcquisitionType dvCS
  # VR values: ["CS"]
  def name("00189200"), do: :mr_spectroscopy_acquisition_type

  # (0018,9214) RespiratoryCyclePosition dvCS
  # VR values: ["CS"]
  def name("00189214"), do: :respiratory_cycle_position

  # (0018,9217) VelocityEncodingMaximumValue dvFD
  # VR values: ["FD"]
  def name("00189217"), do: :velocity_encoding_maximum_value

  # (0018,9218) TagSpacingSecondDimension dvFD
  # VR values: ["FD"]
  def name("00189218"), do: :tag_spacing_second_dimension

  # (0018,9219) TagAngleSecondAxis dvSS
  # VR values: ["SS"]
  def name("00189219"), do: :tag_angle_second_axis

  # (0018,9220) FrameAcquisitionDuration dvFD
  # VR values: ["FD"]
  def name("00189220"), do: :frame_acquisition_duration

  # (0018,9226) MRImageFrameTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189226"), do: :mr_image_frame_type_sequence

  # (0018,9227) MRSpectroscopyFrameTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189227"), do: :mr_spectroscopy_frame_type_sequence

  # (0018,9231) MRAcquisitionPhaseEncodingStepsin_plane dvUS
  # VR values: ["US"]
  def name("00189231"), do: :mr_acquisition_phase_encoding_stepsin_plane

  # (0018,9232) MRAcquisitionPhaseEncodingStepsout_of_plane dvUS
  # VR values: ["US"]
  def name("00189232"), do: :mr_acquisition_phase_encoding_stepsout_of_plane

  # (0018,9234) SpectroscopyAcquisitionPhaseColumns dvUL
  # VR values: ["UL"]
  def name("00189234"), do: :spectroscopy_acquisition_phase_columns

  # (0018,9236) CardiacCyclePosition dvCS
  # VR values: ["CS"]
  def name("00189236"), do: :cardiac_cycle_position

  # (0018,9239) SpecificAbsorptionRateSequence dvSQ
  # VR values: ["SQ"]
  def name("00189239"), do: :specific_absorption_rate_sequence

  # (0018,9240) RFEchoTrainLength dvUS
  # VR values: ["US"]
  def name("00189240"), do: :rf_echo_train_length

  # (0018,9241) GradientEchoTrainLength dvUS
  # VR values: ["US"]
  def name("00189241"), do: :gradient_echo_train_length

  # (0018,9250) ArterialSpinLabelingContrast dvCS
  # VR values: ["CS"]
  def name("00189250"), do: :arterial_spin_labeling_contrast

  # (0018,9251) MRArterialSpinLabelingSequence dvSQ
  # VR values: ["SQ"]
  def name("00189251"), do: :mr_arterial_spin_labeling_sequence

  # (0018,9252) ASLTechniqueDescription dvLO
  # VR values: ["LO"]
  def name("00189252"), do: :asl_technique_description

  # (0018,9253) ASLSlabNumber dvUS
  # VR values: ["US"]
  def name("00189253"), do: :asl_slab_number

  # (0018,9254) ASLSlabThickness dvFD
  # VR values: ["FD"]
  def name("00189254"), do: :asl_slab_thickness

  # (0018,9255) ASLSlabOrientation dvFD
  # VR values: ["FD"]
  def name("00189255"), do: :asl_slab_orientation

  # (0018,9256) ASLMidSlabPosition dvFD
  # VR values: ["FD"]
  def name("00189256"), do: :asl_mid_slab_position

  # (0018,9257) ASLContext dvCS
  # VR values: ["CS"]
  def name("00189257"), do: :asl_context

  # (0018,9258) ASLPulseTrainDuration dvUL
  # VR values: ["UL"]
  def name("00189258"), do: :asl_pulse_train_duration

  # (0018,9259) ASLCrusherFlag dvCS
  # VR values: ["CS"]
  def name("00189259"), do: :asl_crusher_flag

  # (0018,925A) ASLCrusherFlowLimit dvFD
  # VR values: ["FD"]
  def name("0018925A"), do: :asl_crusher_flow_limit

  # (0018,925B) ASLCrusherDescription dvLO
  # VR values: ["LO"]
  def name("0018925B"), do: :asl_crusher_description

  # (0018,925C) ASLBolusCut_offFlag dvCS
  # VR values: ["CS"]
  def name("0018925C"), do: :asl_bolus_cut_off_flag

  # (0018,925D) ASLBolusCut_offTimingSequence dvSQ
  # VR values: ["SQ"]
  def name("0018925D"), do: :asl_bolus_cut_off_timing_sequence

  # (0018,925E) ASLBolusCut_offTechnique dvLO
  # VR values: ["LO"]
  def name("0018925E"), do: :asl_bolus_cut_off_technique

  # (0018,925F) ASLBolusCut_offDelayTime dvUL
  # VR values: ["UL"]
  def name("0018925F"), do: :asl_bolus_cut_off_delay_time

  # (0018,9260) ASLSlabSequence dvSQ
  # VR values: ["SQ"]
  def name("00189260"), do: :asl_slab_sequence

  # (0018,9295) ChemicalShiftMinimumIntegrationLimitinppm dvFD
  # VR values: ["FD"]
  def name("00189295"), do: :chemical_shift_minimum_integration_limitinppm

  # (0018,9296) ChemicalShiftMaximumIntegrationLimitinppm dvFD
  # VR values: ["FD"]
  def name("00189296"), do: :chemical_shift_maximum_integration_limitinppm

  # (0018,9297) WaterReferenceAcquisition dvCS
  # VR values: ["CS"]
  def name("00189297"), do: :water_reference_acquisition

  # (0018,9298) EchoPeakPosition dvIS
  # VR values: ["IS"]
  def name("00189298"), do: :echo_peak_position

  # (0018,9301) CTAcquisitionTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189301"), do: :ct_acquisition_type_sequence

  # (0018,9302) AcquisitionType dvCS
  # VR values: ["CS"]
  def name("00189302"), do: :acquisition_type

  # (0018,9303) TubeAngle dvFD
  # VR values: ["FD"]
  def name("00189303"), do: :tube_angle

  # (0018,9304) CTAcquisitionDetailsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189304"), do: :ct_acquisition_details_sequence

  # (0018,9305) RevolutionTime dvFD
  # VR values: ["FD"]
  def name("00189305"), do: :revolution_time

  # (0018,9306) SingleCollimationWidth dvFD
  # VR values: ["FD"]
  def name("00189306"), do: :single_collimation_width

  # (0018,9307) TotalCollimationWidth dvFD
  # VR values: ["FD"]
  def name("00189307"), do: :total_collimation_width

  # (0018,9308) CTTableDynamicsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189308"), do: :ct_table_dynamics_sequence

  # (0018,9309) TableSpeed dvFD
  # VR values: ["FD"]
  def name("00189309"), do: :table_speed

  # (0018,9310) TableFeedperRotation dvFD
  # VR values: ["FD"]
  def name("00189310"), do: :table_feedper_rotation

  # (0018,9311) SpiralPitchFactor dvFD
  # VR values: ["FD"]
  def name("00189311"), do: :spiral_pitch_factor

  # (0018,9312) CTGeometrySequence dvSQ
  # VR values: ["SQ"]
  def name("00189312"), do: :ct_geometry_sequence

  # (0018,9313) DataCollectionCenter(Patient) dvFD
  # VR values: ["FD"]
  def name("00189313"), do: :data_collection_center_patient

  # (0018,9314) CTReconstructionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189314"), do: :ct_reconstruction_sequence

  # (0018,9315) ReconstructionAlgorithm dvCS
  # VR values: ["CS"]
  def name("00189315"), do: :reconstruction_algorithm

  # (0018,9316) ConvolutionKernelGroup dvCS
  # VR values: ["CS"]
  def name("00189316"), do: :convolution_kernel_group

  # (0018,9317) ReconstructionFieldofView dvFD
  # VR values: ["FD"]
  def name("00189317"), do: :reconstruction_fieldof_view

  # (0018,9318) ReconstructionTargetCenter(Patient) dvFD
  # VR values: ["FD"]
  def name("00189318"), do: :reconstruction_target_center_patient

  # (0018,9319) ReconstructionAngle dvFD
  # VR values: ["FD"]
  def name("00189319"), do: :reconstruction_angle

  # (0018,9320) ImageFilter dvSH
  # VR values: ["SH"]
  def name("00189320"), do: :image_filter

  # (0018,9321) CTExposureSequence dvSQ
  # VR values: ["SQ"]
  def name("00189321"), do: :ct_exposure_sequence

  # (0018,9322) ReconstructionPixelSpacing dvFD
  # VR values: ["FD"]
  def name("00189322"), do: :reconstruction_pixel_spacing

  # (0018,9323) ExposureModulationType dvCS
  # VR values: ["CS"]
  def name("00189323"), do: :exposure_modulation_type

  # (0018,9324) EstimatedDoseSaving dvFD
  # VR values: ["FD"]
  def name("00189324"), do: :estimated_dose_saving

  # (0018,9325) CTX_RayDetailsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189325"), do: :ctx_ray_details_sequence

  # (0018,9326) CTPositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189326"), do: :ct_position_sequence

  # (0018,9327) TablePosition dvFD
  # VR values: ["FD"]
  def name("00189327"), do: :table_position

  # (0018,9328) ExposureTimeinms dvFD
  # VR values: ["FD"]
  def name("00189328"), do: :exposure_timeinms

  # (0018,9329) CTImageFrameTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189329"), do: :ct_image_frame_type_sequence

  # (0018,9330) X_RayTubeCurrentinmA dvFD
  # VR values: ["FD"]
  def name("00189330"), do: :x_ray_tube_currentinm_a

  # (0018,9332) ExposureinmAs dvFD
  # VR values: ["FD"]
  def name("00189332"), do: :exposureinm_as

  # (0018,9333) ConstantVolumeFlag dvCS
  # VR values: ["CS"]
  def name("00189333"), do: :constant_volume_flag

  # (0018,9334) FluoroscopyFlag dvCS
  # VR values: ["CS"]
  def name("00189334"), do: :fluoroscopy_flag

  # (0018,9335) DistanceSourcetoDataCollectionCenter dvFD
  # VR values: ["FD"]
  def name("00189335"), do: :distance_sourceto_data_collection_center

  # (0018,9337) Contrast/BolusAgentNumber dvUS
  # VR values: ["US"]
  def name("00189337"), do: :contrast__bolus_agent_number

  # (0018,9338) Contrast/BolusIngredientCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189338"), do: :contrast__bolus_ingredient_code_sequence

  # (0018,9340) ContrastAdministrationProfileSequence dvSQ
  # VR values: ["SQ"]
  def name("00189340"), do: :contrast_administration_profile_sequence

  # (0018,9341) Contrast/BolusUsageSequence dvSQ
  # VR values: ["SQ"]
  def name("00189341"), do: :contrast__bolus_usage_sequence

  # (0018,9342) Contrast/BolusAgentAdministered dvCS
  # VR values: ["CS"]
  def name("00189342"), do: :contrast__bolus_agent_administered

  # (0018,9343) Contrast/BolusAgentDetected dvCS
  # VR values: ["CS"]
  def name("00189343"), do: :contrast__bolus_agent_detected

  # (0018,9344) Contrast/BolusAgentPhase dvCS
  # VR values: ["CS"]
  def name("00189344"), do: :contrast__bolus_agent_phase

  # (0018,9345) CTDIvol dvFD
  # VR values: ["FD"]
  def name("00189345"), do: :ctd_ivol

  # (0018,9346) CTDIPhantomTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189346"), do: :ctdi_phantom_type_code_sequence

  # (0018,9351) CalciumScoringMassFactorPatient dvFL
  # VR values: ["FL"]
  def name("00189351"), do: :calcium_scoring_mass_factor_patient

  # (0018,9352) CalciumScoringMassFactorDevice dvFL
  # VR values: ["FL"]
  def name("00189352"), do: :calcium_scoring_mass_factor_device

  # (0018,9353) EnergyWeightingFactor dvFL
  # VR values: ["FL"]
  def name("00189353"), do: :energy_weighting_factor

  # (0018,9360) CTAdditionalX_RaySourceSequence dvSQ
  # VR values: ["SQ"]
  def name("00189360"), do: :ct_additionalx_ray_source_sequence

  # (0018,9401) ProjectionPixelCalibrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00189401"), do: :projection_pixel_calibration_sequence

  # (0018,9402) DistanceSourcetoIsocenter dvFL
  # VR values: ["FL"]
  def name("00189402"), do: :distance_sourceto_isocenter

  # (0018,9403) DistanceObjecttoTableTop dvFL
  # VR values: ["FL"]
  def name("00189403"), do: :distance_objectto_table_top

  # (0018,9404) ObjectPixelSpacinginCenterofBeam dvFL
  # VR values: ["FL"]
  def name("00189404"), do: :object_pixel_spacingin_centerof_beam

  # (0018,9405) PositionerPositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189405"), do: :positioner_position_sequence

  # (0018,9406) TablePositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189406"), do: :table_position_sequence

  # (0018,9407) CollimatorShapeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189407"), do: :collimator_shape_sequence

  # (0018,9410) PlanesinAcquisition dvCS
  # VR values: ["CS"]
  def name("00189410"), do: :planesin_acquisition

  # (0018,9412) XA/XRFFrameCharacteristicsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189412"), do: :x_a__xrf_frame_characteristics_sequence

  # (0018,9417) FrameAcquisitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189417"), do: :frame_acquisition_sequence

  # (0018,9420) X_RayReceptorType dvCS
  # VR values: ["CS"]
  def name("00189420"), do: :x_ray_receptor_type

  # (0018,9423) AcquisitionProtocolName dvLO
  # VR values: ["LO"]
  def name("00189423"), do: :acquisition_protocol_name

  # (0018,9424) AcquisitionProtocolDescription dvLT
  # VR values: ["LT"]
  def name("00189424"), do: :acquisition_protocol_description

  # (0018,9425) Contrast/BolusIngredientOpaque dvCS
  # VR values: ["CS"]
  def name("00189425"), do: :contrast__bolus_ingredient_opaque

  # (0018,9426) DistanceReceptorPlanetoDetectorHousing dvFL
  # VR values: ["FL"]
  def name("00189426"), do: :distance_receptor_planeto_detector_housing

  # (0018,9427) IntensifierActiveShape dvCS
  # VR values: ["CS"]
  def name("00189427"), do: :intensifier_active_shape

  # (0018,9428) IntensifierActiveDimension(s) dvFL
  # VR values: ["FL"]
  def name("00189428"), do: :intensifier_active_dimensions

  # (0018,9429) PhysicalDetectorSize dvFL
  # VR values: ["FL"]
  def name("00189429"), do: :physical_detector_size

  # (0018,9430) PositionofIsocenterProjection dvFL
  # VR values: ["FL"]
  def name("00189430"), do: :positionof_isocenter_projection

  # (0018,9432) FieldofViewSequence dvSQ
  # VR values: ["SQ"]
  def name("00189432"), do: :fieldof_view_sequence

  # (0018,9433) FieldofViewDescription dvLO
  # VR values: ["LO"]
  def name("00189433"), do: :fieldof_view_description

  # (0018,9434) ExposureControlSensingRegionsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189434"), do: :exposure_control_sensing_regions_sequence

  # (0018,9435) ExposureControlSensingRegionShape dvCS
  # VR values: ["CS"]
  def name("00189435"), do: :exposure_control_sensing_region_shape

  # (0018,9436) ExposureControlSensingRegionLeftVerticalEdge dvSS
  # VR values: ["SS"]
  def name("00189436"), do: :exposure_control_sensing_region_left_vertical_edge

  # (0018,9437) ExposureControlSensingRegionRightVerticalEdge dvSS
  # VR values: ["SS"]
  def name("00189437"), do: :exposure_control_sensing_region_right_vertical_edge

  # (0018,9438) ExposureControlSensingRegionUpperHorizontalEdge dvSS
  # VR values: ["SS"]
  def name("00189438"), do: :exposure_control_sensing_region_upper_horizontal_edge

  # (0018,9439) ExposureControlSensingRegionLowerHorizontalEdge dvSS
  # VR values: ["SS"]
  def name("00189439"), do: :exposure_control_sensing_region_lower_horizontal_edge

  # (0018,9440) CenterofCircularExposureControlSensingRegion dvSS
  # VR values: ["SS"]
  def name("00189440"), do: :centerof_circular_exposure_control_sensing_region

  # (0018,9441) RadiusofCircularExposureControlSensingRegion dvUS
  # VR values: ["US"]
  def name("00189441"), do: :radiusof_circular_exposure_control_sensing_region

  # (0018,9442) VerticesofthePolygonalExposureControlSensingRegion dvSS
  # VR values: ["SS"]
  def name("00189442"), do: :verticesofthe_polygonal_exposure_control_sensing_region

  # (0018,9445) Undocumented dvUnknown
  # VR values: []
  def name("00189445"), do: :undocumented

  # (0018,9447) ColumnAngulation(Patient) dvFL
  # VR values: ["FL"]
  def name("00189447"), do: :column_angulation_patient

  # (0018,9449) BeamAngle dvFL
  # VR values: ["FL"]
  def name("00189449"), do: :beam_angle

  # (0018,9451) FrameDetectorParametersSequence dvSQ
  # VR values: ["SQ"]
  def name("00189451"), do: :frame_detector_parameters_sequence

  # (0018,9452) CalculatedAnatomyThickness dvFL
  # VR values: ["FL"]
  def name("00189452"), do: :calculated_anatomy_thickness

  # (0018,9455) CalibrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00189455"), do: :calibration_sequence

  # (0018,9456) ObjectThicknessSequence dvSQ
  # VR values: ["SQ"]
  def name("00189456"), do: :object_thickness_sequence

  # (0018,9457) PlaneIdentification dvCS
  # VR values: ["CS"]
  def name("00189457"), do: :plane_identification

  # (0018,9461) FieldofViewDimension(s)inFloat dvFL
  # VR values: ["FL"]
  def name("00189461"), do: :fieldof_view_dimensionsin_float

  # (0018,9462) IsocenterReferenceSystemSequence dvSQ
  # VR values: ["SQ"]
  def name("00189462"), do: :isocenter_reference_system_sequence

  # (0018,9463) PositionerIsocenterPrimaryAngle dvFL
  # VR values: ["FL"]
  def name("00189463"), do: :positioner_isocenter_primary_angle

  # (0018,9464) PositionerIsocenterSecondaryAngle dvFL
  # VR values: ["FL"]
  def name("00189464"), do: :positioner_isocenter_secondary_angle

  # (0018,9465) PositionerIsocenterDetectorRotationAngle dvFL
  # VR values: ["FL"]
  def name("00189465"), do: :positioner_isocenter_detector_rotation_angle

  # (0018,9466) TableXPositiontoIsocenter dvFL
  # VR values: ["FL"]
  def name("00189466"), do: :table_x_positionto_isocenter

  # (0018,9467) TableYPositiontoIsocenter dvFL
  # VR values: ["FL"]
  def name("00189467"), do: :table_y_positionto_isocenter

  # (0018,9468) TableZPositiontoIsocenter dvFL
  # VR values: ["FL"]
  def name("00189468"), do: :table_z_positionto_isocenter

  # (0018,9469) TableHorizontalRotationAngle dvFL
  # VR values: ["FL"]
  def name("00189469"), do: :table_horizontal_rotation_angle

  # (0018,9470) TableHeadTiltAngle dvFL
  # VR values: ["FL"]
  def name("00189470"), do: :table_head_tilt_angle

  # (0018,9471) TableCradleTiltAngle dvFL
  # VR values: ["FL"]
  def name("00189471"), do: :table_cradle_tilt_angle

  # (0018,9472) FrameDisplayShutterSequence dvSQ
  # VR values: ["SQ"]
  def name("00189472"), do: :frame_display_shutter_sequence

  # (0018,9473) AcquiredImageAreaDoseProduct dvFL
  # VR values: ["FL"]
  def name("00189473"), do: :acquired_image_area_dose_product

  # (0018,9474) C_armPositionerTabletopRelationship dvCS
  # VR values: ["CS"]
  def name("00189474"), do: :c_arm_positioner_tabletop_relationship

  # (0018,9476) X_RayGeometrySequence dvSQ
  # VR values: ["SQ"]
  def name("00189476"), do: :x_ray_geometry_sequence

  # (0018,9477) IrradiationEventIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00189477"), do: :irradiation_event_identification_sequence

  # (0018,9504) X_Ray3DFrameTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189504"), do: :x_ray3_d_frame_type_sequence

  # (0018,9506) ContributingSourcesSequence dvSQ
  # VR values: ["SQ"]
  def name("00189506"), do: :contributing_sources_sequence

  # (0018,9507) X_Ray3DAcquisitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189507"), do: :x_ray3_d_acquisition_sequence

  # (0018,9508) PrimaryPositionerScanArc dvFL
  # VR values: ["FL"]
  def name("00189508"), do: :primary_positioner_scan_arc

  # (0018,9509) SecondaryPositionerScanArc dvFL
  # VR values: ["FL"]
  def name("00189509"), do: :secondary_positioner_scan_arc

  # (0018,9510) PrimaryPositionerScanStartAngle dvFL
  # VR values: ["FL"]
  def name("00189510"), do: :primary_positioner_scan_start_angle

  # (0018,9511) SecondaryPositionerScanStartAngle dvFL
  # VR values: ["FL"]
  def name("00189511"), do: :secondary_positioner_scan_start_angle

  # (0018,9514) PrimaryPositionerIncrement dvFL
  # VR values: ["FL"]
  def name("00189514"), do: :primary_positioner_increment

  # (0018,9515) SecondaryPositionerIncrement dvFL
  # VR values: ["FL"]
  def name("00189515"), do: :secondary_positioner_increment

  # (0018,9516) StartAcquisitionDate/Time dvDT
  # VR values: ["DT"]
  def name("00189516"), do: :start_acquisition_date__time

  # (0018,9517) EndAcquisitionDate/Time dvDT
  # VR values: ["DT"]
  def name("00189517"), do: :end_acquisition_date__time

  # (0018,9518) PrimaryPositionerIncrementSign dvSS
  # VR values: ["SS"]
  def name("00189518"), do: :primary_positioner_increment_sign

  # (0018,9519) SecondaryPositionerIncrementSign dvSS
  # VR values: ["SS"]
  def name("00189519"), do: :secondary_positioner_increment_sign

  # (0018,9524) ApplicationName dvLO
  # VR values: ["LO"]
  def name("00189524"), do: :application_name

  # (0018,9525) ApplicationVersion dvLO
  # VR values: ["LO"]
  def name("00189525"), do: :application_version

  # (0018,9526) ApplicationManufacturer dvLO
  # VR values: ["LO"]
  def name("00189526"), do: :application_manufacturer

  # (0018,9527) AlgorithmType dvCS
  # VR values: ["CS"]
  def name("00189527"), do: :algorithm_type

  # (0018,9528) AlgorithmDescription dvLO
  # VR values: ["LO"]
  def name("00189528"), do: :algorithm_description

  # (0018,9530) X_Ray3DReconstructionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189530"), do: :x_ray3_d_reconstruction_sequence

  # (0018,9531) ReconstructionDescription dvLO
  # VR values: ["LO"]
  def name("00189531"), do: :reconstruction_description

  # (0018,9538) PerProjectionAcquisitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189538"), do: :per_projection_acquisition_sequence

  # (0018,9541) DetectorPositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189541"), do: :detector_position_sequence

  # (0018,9542) X_RayAcquisitionDoseSequence dvSQ
  # VR values: ["SQ"]
  def name("00189542"), do: :x_ray_acquisition_dose_sequence

  # (0018,9543) X_RaySourceIsocenterPrimaryAngle dvFD
  # VR values: ["FD"]
  def name("00189543"), do: :x_ray_source_isocenter_primary_angle

  # (0018,9544) X_RaySourceIsocenterSecondaryAngle dvFD
  # VR values: ["FD"]
  def name("00189544"), do: :x_ray_source_isocenter_secondary_angle

  # (0018,9545) BreastSupportIsocenterPrimaryAngle dvFD
  # VR values: ["FD"]
  def name("00189545"), do: :breast_support_isocenter_primary_angle

  # (0018,9546) BreastSupportIsocenterSecondaryAngle dvFD
  # VR values: ["FD"]
  def name("00189546"), do: :breast_support_isocenter_secondary_angle

  # (0018,9547) BreastSupportXPositiontoIsocenter dvFD
  # VR values: ["FD"]
  def name("00189547"), do: :breast_support_x_positionto_isocenter

  # (0018,9548) BreastSupportYPositiontoIsocenter dvFD
  # VR values: ["FD"]
  def name("00189548"), do: :breast_support_y_positionto_isocenter

  # (0018,9549) BreastSupportZPositiontoIsocenter dvFD
  # VR values: ["FD"]
  def name("00189549"), do: :breast_support_z_positionto_isocenter

  # (0018,9550) DetectorIsocenterPrimaryAngle dvFD
  # VR values: ["FD"]
  def name("00189550"), do: :detector_isocenter_primary_angle

  # (0018,9551) DetectorIsocenterSecondaryAngle dvFD
  # VR values: ["FD"]
  def name("00189551"), do: :detector_isocenter_secondary_angle

  # (0018,9552) DetectorXPositiontoIsocenter dvFD
  # VR values: ["FD"]
  def name("00189552"), do: :detector_x_positionto_isocenter

  # (0018,9553) DetectorYPositiontoIsocenter dvFD
  # VR values: ["FD"]
  def name("00189553"), do: :detector_y_positionto_isocenter

  # (0018,9554) DetectorZPositiontoIsocenter dvFD
  # VR values: ["FD"]
  def name("00189554"), do: :detector_z_positionto_isocenter

  # (0018,9555) X_RayGridSequence dvSQ
  # VR values: ["SQ"]
  def name("00189555"), do: :x_ray_grid_sequence

  # (0018,9556) X_RayFilterSequence dvSQ
  # VR values: ["SQ"]
  def name("00189556"), do: :x_ray_filter_sequence

  # (0018,9557) DetectorActiveAreaTLHCPosition dvFD
  # VR values: ["FD"]
  def name("00189557"), do: :detector_active_area_tlhc_position

  # (0018,9558) DetectorActiveAreaOrientation dvFD
  # VR values: ["FD"]
  def name("00189558"), do: :detector_active_area_orientation

  # (0018,9559) PositionerPrimaryAngleDirection dvCS
  # VR values: ["CS"]
  def name("00189559"), do: :positioner_primary_angle_direction

  # (0018,9601) Diffusionb_matrixSequence dvSQ
  # VR values: ["SQ"]
  def name("00189601"), do: :diffusionb_matrix_sequence

  # (0018,9602) Diffusionb_valueXX dvFD
  # VR values: ["FD"]
  def name("00189602"), do: :diffusionb_value_xx

  # (0018,9603) Diffusionb_valueXY dvFD
  # VR values: ["FD"]
  def name("00189603"), do: :diffusionb_value_xy

  # (0018,9604) Diffusionb_valueXZ dvFD
  # VR values: ["FD"]
  def name("00189604"), do: :diffusionb_value_xz

  # (0018,9605) Diffusionb_valueYY dvFD
  # VR values: ["FD"]
  def name("00189605"), do: :diffusionb_value_yy

  # (0018,9606) Diffusionb_valueYZ dvFD
  # VR values: ["FD"]
  def name("00189606"), do: :diffusionb_value_yz

  # (0018,9607) Diffusionb_valueZZ dvFD
  # VR values: ["FD"]
  def name("00189607"), do: :diffusionb_value_zz

  # (0018,9701) DecayCorrectionDate/Time dvDT
  # VR values: ["DT"]
  def name("00189701"), do: :decay_correction_date__time

  # (0018,9715) StartDensityThreshold dvFD
  # VR values: ["FD"]
  def name("00189715"), do: :start_density_threshold

  # (0018,9716) StartRelativeDensityDifferenceThreshold dvFD
  # VR values: ["FD"]
  def name("00189716"), do: :start_relative_density_difference_threshold

  # (0018,9717) StartCardiacTriggerCountThreshold dvFD
  # VR values: ["FD"]
  def name("00189717"), do: :start_cardiac_trigger_count_threshold

  # (0018,9718) StartRespiratoryTriggerCountThreshold dvFD
  # VR values: ["FD"]
  def name("00189718"), do: :start_respiratory_trigger_count_threshold

  # (0018,9719) TerminationCountsThreshold dvFD
  # VR values: ["FD"]
  def name("00189719"), do: :termination_counts_threshold

  # (0018,9720) TerminationDensityThreshold dvFD
  # VR values: ["FD"]
  def name("00189720"), do: :termination_density_threshold

  # (0018,9721) TerminationRelativeDensityThreshold dvFD
  # VR values: ["FD"]
  def name("00189721"), do: :termination_relative_density_threshold

  # (0018,9722) TerminationTimeThreshold dvFD
  # VR values: ["FD"]
  def name("00189722"), do: :termination_time_threshold

  # (0018,9723) TerminationCardiacTriggerCountThreshold dvFD
  # VR values: ["FD"]
  def name("00189723"), do: :termination_cardiac_trigger_count_threshold

  # (0018,9724) TerminationRespiratoryTriggerCountThreshold dvFD
  # VR values: ["FD"]
  def name("00189724"), do: :termination_respiratory_trigger_count_threshold

  # (0018,9725) DetectorGeometry dvCS
  # VR values: ["CS"]
  def name("00189725"), do: :detector_geometry

  # (0018,9726) TransverseDetectorSeparation dvFD
  # VR values: ["FD"]
  def name("00189726"), do: :transverse_detector_separation

  # (0018,9727) AxialDetectorDimension dvFD
  # VR values: ["FD"]
  def name("00189727"), do: :axial_detector_dimension

  # (0018,9729) RadiopharmaceuticalAgentNumber dvUS
  # VR values: ["US"]
  def name("00189729"), do: :radiopharmaceutical_agent_number

  # (0018,9732) PETFrameAcquisitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189732"), do: :pet_frame_acquisition_sequence

  # (0018,9733) PETDetectorMotionDetailsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189733"), do: :pet_detector_motion_details_sequence

  # (0018,9734) PETTableDynamicsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189734"), do: :pet_table_dynamics_sequence

  # (0018,9735) PETPositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189735"), do: :pet_position_sequence

  # (0018,9736) PETFrameCorrectionFactorsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189736"), do: :pet_frame_correction_factors_sequence

  # (0018,9737) RadiopharmaceuticalUsageSequence dvSQ
  # VR values: ["SQ"]
  def name("00189737"), do: :radiopharmaceutical_usage_sequence

  # (0018,9738) AttenuationCorrectionSource dvCS
  # VR values: ["CS"]
  def name("00189738"), do: :attenuation_correction_source

  # (0018,9739) NumberofIterations dvUS
  # VR values: ["US"]
  def name("00189739"), do: :numberof_iterations

  # (0018,9740) NumberofSubsets dvUS
  # VR values: ["US"]
  def name("00189740"), do: :numberof_subsets

  # (0018,9749) PETReconstructionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189749"), do: :pet_reconstruction_sequence

  # (0018,9751) PETFrameTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189751"), do: :pet_frame_type_sequence

  # (0018,9755) TimeofFlightInformationUsed dvCS
  # VR values: ["CS"]
  def name("00189755"), do: :timeof_flight_information_used

  # (0018,9756) ReconstructionType dvCS
  # VR values: ["CS"]
  def name("00189756"), do: :reconstruction_type

  # (0018,9758) DecayCorrected dvCS
  # VR values: ["CS"]
  def name("00189758"), do: :decay_corrected

  # (0018,9759) AttenuationCorrected dvCS
  # VR values: ["CS"]
  def name("00189759"), do: :attenuation_corrected

  # (0018,9760) ScatterCorrected dvCS
  # VR values: ["CS"]
  def name("00189760"), do: :scatter_corrected

  # (0018,9761) DeadTimeCorrected dvCS
  # VR values: ["CS"]
  def name("00189761"), do: :dead_time_corrected

  # (0018,9762) GantryMotionCorrected dvCS
  # VR values: ["CS"]
  def name("00189762"), do: :gantry_motion_corrected

  # (0018,9763) PatientMotionCorrected dvCS
  # VR values: ["CS"]
  def name("00189763"), do: :patient_motion_corrected

  # (0018,9764) CountLossNormalizationCorrected dvCS
  # VR values: ["CS"]
  def name("00189764"), do: :count_loss_normalization_corrected

  # (0018,9765) RandomsCorrected dvCS
  # VR values: ["CS"]
  def name("00189765"), do: :randoms_corrected

  # (0018,9766) Non_uniformRadialSamplingCorrected dvCS
  # VR values: ["CS"]
  def name("00189766"), do: :non_uniform_radial_sampling_corrected

  # (0018,9767) SensitivityCalibrated dvCS
  # VR values: ["CS"]
  def name("00189767"), do: :sensitivity_calibrated

  # (0018,9768) DetectorNormalizationCorrection dvCS
  # VR values: ["CS"]
  def name("00189768"), do: :detector_normalization_correction

  # (0018,9769) IterativeReconstructionMethod dvCS
  # VR values: ["CS"]
  def name("00189769"), do: :iterative_reconstruction_method

  # (0018,9770) AttenuationCorrectionTemporalRelationship dvCS
  # VR values: ["CS"]
  def name("00189770"), do: :attenuation_correction_temporal_relationship

  # (0018,9771) PatientPhysiologicalStateSequence dvSQ
  # VR values: ["SQ"]
  def name("00189771"), do: :patient_physiological_state_sequence

  # (0018,9772) PatientPhysiologicalStateCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189772"), do: :patient_physiological_state_code_sequence

  # (0018,9801) Depth(s)ofFocus dvFD
  # VR values: ["FD"]
  def name("00189801"), do: :depthsof_focus

  # (0018,9803) ExcludedIntervalsSequence dvSQ
  # VR values: ["SQ"]
  def name("00189803"), do: :excluded_intervals_sequence

  # (0018,9804) ExclusionStartDate/Time dvDT
  # VR values: ["DT"]
  def name("00189804"), do: :exclusion_start_date__time

  # (0018,9805) ExclusionDuration dvFD
  # VR values: ["FD"]
  def name("00189805"), do: :exclusion_duration

  # (0018,9806) USImageDescriptionSequence dvSQ
  # VR values: ["SQ"]
  def name("00189806"), do: :us_image_description_sequence

  # (0018,9807) ImageDataTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189807"), do: :image_data_type_sequence

  # (0018,9808) DataType dvCS
  # VR values: ["CS"]
  def name("00189808"), do: :data_type

  # (0018,9809) TransducerScanPatternCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00189809"), do: :transducer_scan_pattern_code_sequence

  # (0018,980B) AliasedDataType dvCS
  # VR values: ["CS"]
  def name("0018980B"), do: :aliased_data_type

  # (0018,980C) PositionMeasuringDeviceUsed dvCS
  # VR values: ["CS"]
  def name("0018980C"), do: :position_measuring_device_used

  # (0018,980D) TransducerGeometryCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0018980D"), do: :transducer_geometry_code_sequence

  # (0018,980E) TransducerBeamSteeringCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0018980E"), do: :transducer_beam_steering_code_sequence

  # (0018,980F) TransducerApplicationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0018980F"), do: :transducer_application_code_sequence

  # (0018,9810) ZeroVelocityPixelValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00189810"), do: :zero_velocity_pixel_value

  # (0018,A001) ContributingEquipmentSequence dvSQ
  # VR values: ["SQ"]
  def name("0018A001"), do: :contributing_equipment_sequence

  # (0018,A002) ContributionDate/Time dvDT
  # VR values: ["DT"]
  def name("0018A002"), do: :contribution_date__time

  # (0018,A003) ContributionDescription dvST
  # VR values: ["ST"]
  def name("0018A003"), do: :contribution_description

  # (0019,0000) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190000"), do: :undocumented

  # (0019,0001) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190001"), do: :undocumented

  # (0019,0002) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190002"), do: :undocumented

  # (0019,0003) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190003"), do: :undocumented

  # (0019,0004) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190004"), do: :undocumented

  # (0019,0005) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190005"), do: :undocumented

  # (0019,0006) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190006"), do: :undocumented

  # (0019,0007) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190007"), do: :undocumented

  # (0019,0008) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190008"), do: :undocumented

  # (0019,0009) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190009"), do: :undocumented

  # (0019,000A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019000A"), do: :undocumented

  # (0019,000B) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019000B"), do: :undocumented

  # (0019,000C) Undocumented dvUS
  # VR values: ["US"]
  def name("0019000C"), do: :undocumented

  # (0019,000D) Undocumented dvTM
  # VR values: ["TM"]
  def name("0019000D"), do: :undocumented

  # (0019,000E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019000E"), do: :undocumented

  # (0019,000F) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019000F"), do: :undocumented

  # (0019,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190010"), do: :undocumented

  # (0019,0011) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190011"), do: :undocumented

  # (0019,0012) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190012"), do: :undocumented

  # (0019,0013) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190013"), do: :undocumented

  # (0019,0014) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190014"), do: :undocumented

  # (0019,0015) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190015"), do: :undocumented

  # (0019,0016) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190016"), do: :undocumented

  # (0019,0017) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190017"), do: :undocumented

  # (0019,0018) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190018"), do: :undocumented

  # (0019,0019) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190019"), do: :undocumented

  # (0019,001A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019001A"), do: :undocumented

  # (0019,001B) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019001B"), do: :undocumented

  # (0019,001C) Undocumented dvCS
  # VR values: ["CS"]
  def name("0019001C"), do: :undocumented

  # (0019,001D) Undocumented dvIS
  # VR values: ["IS"]
  def name("0019001D"), do: :undocumented

  # (0019,001E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019001E"), do: :undocumented

  # (0019,001F) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019001F"), do: :undocumented

  # (0019,0020) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190020"), do: :undocumented

  # (0019,0021) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190021"), do: :undocumented

  # (0019,0022) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190022"), do: :undocumented

  # (0019,0023) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190023"), do: :undocumented

  # (0019,0024) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190024"), do: :undocumented

  # (0019,0025) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190025"), do: :undocumented

  # (0019,0026) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190026"), do: :undocumented

  # (0019,0027) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190027"), do: :undocumented

  # (0019,0028) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190028"), do: :undocumented

  # (0019,0029) Undocumented dvIS
  # VR values: ["IS"]
  def name("00190029"), do: :undocumented

  # (0019,002A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019002A"), do: :undocumented

  # (0019,002B) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019002B"), do: :undocumented

  # (0019,002C) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019002C"), do: :undocumented

  # (0019,002D) Undocumented dvUS
  # VR values: ["US"]
  def name("0019002D"), do: :undocumented

  # (0019,002E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019002E"), do: :undocumented

  # (0019,002F) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019002F"), do: :undocumented

  # (0019,0030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190030"), do: :undocumented

  # (0019,0031) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190031"), do: :undocumented

  # (0019,0032) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190032"), do: :undocumented

  # (0019,0033) Undocumented dvUN
  # VR values: ["UN"]
  def name("00190033"), do: :undocumented

  # (0019,0034) Undocumented dvUS
  # VR values: ["US"]
  def name("00190034"), do: :undocumented

  # (0019,0036) Undocumented dvUS
  # VR values: ["US"]
  def name("00190036"), do: :undocumented

  # (0019,0038) Undocumented dvUS
  # VR values: ["US"]
  def name("00190038"), do: :undocumented

  # (0019,0039) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190039"), do: :undocumented

  # (0019,003A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019003A"), do: :undocumented

  # (0019,003B) Undocumented dvLT
  # VR values: ["LT"]
  def name("0019003B"), do: :undocumented

  # (0019,003C) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019003C"), do: :undocumented

  # (0019,003E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019003E"), do: :undocumented

  # (0019,003F) Undocumented dvUN
  # VR values: ["UN"]
  def name("0019003F"), do: :undocumented

  # (0019,0040) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190040"), do: :undocumented

  # (0019,0041) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190041"), do: :undocumented

  # (0019,0042) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190042"), do: :undocumented

  # (0019,0043) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190043"), do: :undocumented

  # (0019,0044) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190044"), do: :undocumented

  # (0019,0045) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190045"), do: :undocumented

  # (0019,0046) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190046"), do: :undocumented

  # (0019,0047) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190047"), do: :undocumented

  # (0019,0048) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190048"), do: :undocumented

  # (0019,0049) Undocumented dvUS
  # VR values: ["US"]
  def name("00190049"), do: :undocumented

  # (0019,004A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019004A"), do: :undocumented

  # (0019,004B) Undocumented dvSL
  # VR values: ["SL"]
  def name("0019004B"), do: :undocumented

  # (0019,004C) Undocumented dvUS
  # VR values: ["US"]
  def name("0019004C"), do: :undocumented

  # (0019,004E) Undocumented dvUS
  # VR values: ["US"]
  def name("0019004E"), do: :undocumented

  # (0019,0050) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190050"), do: :undocumented

  # (0019,0051) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190051"), do: :undocumented

  # (0019,0052) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190052"), do: :undocumented

  # (0019,0053) Undocumented dvLT
  # VR values: ["LT"]
  def name("00190053"), do: :undocumented

  # (0019,0054) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190054"), do: :undocumented

  # (0019,0055) Undocumented dvDS
  # VR values: ["DS"]
  def name("00190055"), do: :undocumented

  # (0019,0056) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190056"), do: :undocumented

  # (0019,0057) Undocumented dvSS
  # VR values: ["SS"]
  def name("00190057"), do: :undocumented

  # (0019,0058) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190058"), do: :undocumented

  # (0019,005A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019005A"), do: :undocumented

  # (0019,005C) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019005C"), do: :undocumented

  # (0019,005D) Undocumented dvUS
  # VR values: ["US"]
  def name("0019005D"), do: :undocumented

  # (0019,005E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019005E"), do: :undocumented

  # (0019,005F) Undocumented dvSL
  # VR values: ["SL"]
  def name("0019005F"), do: :undocumented

  # (0019,0060) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190060"), do: :undocumented

  # (0019,0061) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190061"), do: :undocumented

  # (0019,0062) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190062"), do: :undocumented

  # (0019,0063) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190063"), do: :undocumented

  # (0019,0064) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190064"), do: :undocumented

  # (0019,0065) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190065"), do: :undocumented

  # (0019,0066) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190066"), do: :undocumented

  # (0019,0067) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190067"), do: :undocumented

  # (0019,0068) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190068"), do: :undocumented

  # (0019,0069) Undocumented dvUL
  # VR values: ["UL"]
  def name("00190069"), do: :undocumented

  # (0019,006A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019006A"), do: :undocumented

  # (0019,006B) Undocumented dvSS
  # VR values: ["SS"]
  def name("0019006B"), do: :undocumented

  # (0019,006C) Undocumented dvUS
  # VR values: ["US"]
  def name("0019006C"), do: :undocumented

  # (0019,006E) Undocumented dvUS
  # VR values: ["US"]
  def name("0019006E"), do: :undocumented

  # (0019,0070) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190070"), do: :undocumented

  # (0019,0071) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190071"), do: :undocumented

  # (0019,0072) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190072"), do: :undocumented

  # (0019,0073) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190073"), do: :undocumented

  # (0019,0074) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190074"), do: :undocumented

  # (0019,0075) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190075"), do: :undocumented

  # (0019,0076) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190076"), do: :undocumented

  # (0019,0077) Undocumented dvUS
  # VR values: ["US"]
  def name("00190077"), do: :undocumented

  # (0019,0078) Undocumented dvUS
  # VR values: ["US"]
  def name("00190078"), do: :undocumented

  # (0019,007A) Undocumented dvUS
  # VR values: ["US"]
  def name("0019007A"), do: :undocumented

  # (0019,007C) Undocumented dvUS
  # VR values: ["US"]
  def name("0019007C"), do: :undocumented

  # (0019,007D) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019007D"), do: :undocumented

  # (0019,007E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019007E"), do: :undocumented

  # (0019,007F) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019007F"), do: :undocumented

  # (0019,0080) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190080"), do: :undocumented

  # (0019,0081) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190081"), do: :undocumented

  # (0019,0082) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190082"), do: :undocumented

  # (0019,0083) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190083"), do: :undocumented

  # (0019,0084) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190084"), do: :undocumented

  # (0019,0085) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190085"), do: :undocumented

  # (0019,0086) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190086"), do: :undocumented

  # (0019,0087) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190087"), do: :undocumented

  # (0019,0088) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190088"), do: :undocumented

  # (0019,008A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019008A"), do: :undocumented

  # (0019,008B) Undocumented dvSS
  # VR values: ["SS"]
  def name("0019008B"), do: :undocumented

  # (0019,008C) Undocumented dvUS
  # VR values: ["US"]
  def name("0019008C"), do: :undocumented

  # (0019,008D) Undocumented dvDS
  # VR values: ["DS"]
  def name("0019008D"), do: :undocumented

  # (0019,008E) Undocumented dvUS
  # VR values: ["US"]
  def name("0019008E"), do: :undocumented

  # (0019,008F) Undocumented dvSS
  # VR values: ["SS"]
  def name("0019008F"), do: :undocumented

  # (0019,0090) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190090"), do: :undocumented

  # (0019,0091) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190091"), do: :undocumented

  # (0019,0092) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190092"), do: :undocumented

  # (0019,0093) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190093"), do: :undocumented

  # (0019,0094) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190094"), do: :undocumented

  # (0019,0095) Undocumented dvSS
  # VR values: ["SS"]
  def name("00190095"), do: :undocumented

  # (0019,0096) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190096"), do: :undocumented

  # (0019,0097) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190097"), do: :undocumented

  # (0019,0098) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00190098"), do: :undocumented

  # (0019,0099) Undocumented dvUS
  # VR values: ["US"]
  def name("00190099"), do: :undocumented

  # (0019,009A) Undocumented dvUS
  # VR values: ["US"]
  def name("0019009A"), do: :undocumented

  # (0019,009B) Undocumented dvSS
  # VR values: ["SS"]
  def name("0019009B"), do: :undocumented

  # (0019,009C) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019009C"), do: :undocumented

  # (0019,009D) Undocumented dvDT
  # VR values: ["DT"]
  def name("0019009D"), do: :undocumented

  # (0019,009E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019009E"), do: :undocumented

  # (0019,009F) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0019009F"), do: :undocumented

  # (0019,00A0) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A0"), do: :undocumented

  # (0019,00A1) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A1"), do: :undocumented

  # (0019,00A2) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A2"), do: :undocumented

  # (0019,00A3) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A3"), do: :undocumented

  # (0019,00A4) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A4"), do: :undocumented

  # (0019,00A5) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A5"), do: :undocumented

  # (0019,00A6) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A6"), do: :undocumented

  # (0019,00A7) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A7"), do: :undocumented

  # (0019,00A8) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A8"), do: :undocumented

  # (0019,00A9) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900A9"), do: :undocumented

  # (0019,00AA) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900AA"), do: :undocumented

  # (0019,00AB) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900AB"), do: :undocumented

  # (0019,00AC) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900AC"), do: :undocumented

  # (0019,00AD) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900AD"), do: :undocumented

  # (0019,00AE) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900AE"), do: :undocumented

  # (0019,00AF) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900AF"), do: :undocumented

  # (0019,00B0) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900B0"), do: :undocumented

  # (0019,00B1) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900B1"), do: :undocumented

  # (0019,00B2) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900B2"), do: :undocumented

  # (0019,00B3) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900B3"), do: :undocumented

  # (0019,00B4) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900B4"), do: :undocumented

  # (0019,00B5) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900B5"), do: :undocumented

  # (0019,00B6) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900B6"), do: :undocumented

  # (0019,00B7) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900B7"), do: :undocumented

  # (0019,00B8) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900B8"), do: :undocumented

  # (0019,00B9) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900B9"), do: :undocumented

  # (0019,00BA) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900BA"), do: :undocumented

  # (0019,00BB) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900BB"), do: :undocumented

  # (0019,00BC) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900BC"), do: :undocumented

  # (0019,00BD) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900BD"), do: :undocumented

  # (0019,00BE) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900BE"), do: :undocumented

  # (0019,00C0) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900C0"), do: :undocumented

  # (0019,00C1) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900C1"), do: :undocumented

  # (0019,00C2) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900C2"), do: :undocumented

  # (0019,00C3) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900C3"), do: :undocumented

  # (0019,00C4) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900C4"), do: :undocumented

  # (0019,00C5) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900C5"), do: :undocumented

  # (0019,00C6) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900C6"), do: :undocumented

  # (0019,00C7) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900C7"), do: :undocumented

  # (0019,00C8) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900C8"), do: :undocumented

  # (0019,00C9) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900C9"), do: :undocumented

  # (0019,00CA) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900CA"), do: :undocumented

  # (0019,00CB) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900CB"), do: :undocumented

  # (0019,00CC) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900CC"), do: :undocumented

  # (0019,00CD) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900CD"), do: :undocumented

  # (0019,00CE) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900CE"), do: :undocumented

  # (0019,00CF) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900CF"), do: :undocumented

  # (0019,00D0) Undocumented dvSH
  # VR values: ["SH"]
  def name("001900D0"), do: :undocumented

  # (0019,00D1) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900D1"), do: :undocumented

  # (0019,00D2) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D2"), do: :undocumented

  # (0019,00D3) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D3"), do: :undocumented

  # (0019,00D4) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D4"), do: :undocumented

  # (0019,00D5) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D5"), do: :undocumented

  # (0019,00D6) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D6"), do: :undocumented

  # (0019,00D7) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D7"), do: :undocumented

  # (0019,00D8) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D8"), do: :undocumented

  # (0019,00D9) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900D9"), do: :undocumented

  # (0019,00DA) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900DA"), do: :undocumented

  # (0019,00DB) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900DB"), do: :undocumented

  # (0019,00DC) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900DC"), do: :undocumented

  # (0019,00DD) Undocumented dvSS
  # VR values: ["SS"]
  def name("001900DD"), do: :undocumented

  # (0019,00DE) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900DE"), do: :undocumented

  # (0019,00DF) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900DF"), do: :undocumented

  # (0019,00E0) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900E0"), do: :undocumented

  # (0019,00E1) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900E1"), do: :undocumented

  # (0019,00E2) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900E2"), do: :undocumented

  # (0019,00E3) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900E3"), do: :undocumented

  # (0019,00E4) Undocumented dvLT
  # VR values: ["LT"]
  def name("001900E4"), do: :undocumented

  # (0019,00E5) Undocumented dvIS
  # VR values: ["IS"]
  def name("001900E5"), do: :undocumented

  # (0019,00E6) Undocumented dvUS
  # VR values: ["US"]
  def name("001900E6"), do: :undocumented

  # (0019,00E8) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900E8"), do: :undocumented

  # (0019,00E9) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900E9"), do: :undocumented

  # (0019,00EB) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900EB"), do: :undocumented

  # (0019,00EC) Undocumented dvUS
  # VR values: ["US"]
  def name("001900EC"), do: :undocumented

  # (0019,00F0) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900F0"), do: :undocumented

  # (0019,00F1) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900F1"), do: :undocumented

  # (0019,00F2) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900F2"), do: :undocumented

  # (0019,00F3) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("001900F3"), do: :undocumented

  # (0019,00F4) Undocumented dvLT
  # VR values: ["LT"]
  def name("001900F4"), do: :undocumented

  # (0019,00F9) Undocumented dvDS
  # VR values: ["DS"]
  def name("001900F9"), do: :undocumented

  # (0019,1015) StartNumberforEnhancedScans dvUN
  # VR values: ["UN"]
  def name("00191015"), do: :start_numberfor_enhanced_scans

  # (0020,0000) ImageGroupLength dvUL
  # VR values: ["UL"]
  def name("00200000"), do: :image_group_length

  # (0020,000D) StudyInstanceUID dvUI
  # VR values: ["UI"]
  def name("0020000D"), do: :study_instance_uid

  # (0020,000E) SeriesInstanceUID dvUI
  # VR values: ["UI"]
  def name("0020000E"), do: :series_instance_uid

  # (0020,0010) StudyID dvSH
  # VR values: ["SH"]
  def name("00200010"), do: :study_id

  # (0020,0011) SeriesNumber dvIS
  # VR values: ["IS"]
  def name("00200011"), do: :series_number

  # (0020,0012) AcquisitionNumber dvIS
  # VR values: ["IS"]
  def name("00200012"), do: :acquisition_number

  # (0020,0013) InstanceNumber dvIS
  # VR values: ["IS"]
  def name("00200013"), do: :instance_number

  # (0020,0014) IsotopeNumber dvIS
  # VR values: ["IS"]
  def name("00200014"), do: :isotope_number

  # (0020,0015) PhaseNumber dvIS
  # VR values: ["IS"]
  def name("00200015"), do: :phase_number

  # (0020,0016) IntervalNumber dvIS
  # VR values: ["IS"]
  def name("00200016"), do: :interval_number

  # (0020,0017) TimeSlotNumber dvIS
  # VR values: ["IS"]
  def name("00200017"), do: :time_slot_number

  # (0020,0018) AngleNumber dvIS
  # VR values: ["IS"]
  def name("00200018"), do: :angle_number

  # (0020,0019) ItemNumber dvIS
  # VR values: ["IS"]
  def name("00200019"), do: :item_number

  # (0020,0020) PatientOrientation dvCS
  # VR values: ["CS"]
  def name("00200020"), do: :patient_orientation

  # (0020,0022) OverlayNumber dvIS
  # VR values: ["IS"]
  def name("00200022"), do: :overlay_number

  # (0020,0024) CurveNumber dvIS
  # VR values: ["IS"]
  def name("00200024"), do: :curve_number

  # (0020,0026) LUTNumber dvIS
  # VR values: ["IS"]
  def name("00200026"), do: :lut_number

  # (0020,0030) ImagePosition dvDS
  # VR values: ["DS"]
  def name("00200030"), do: :image_position

  # (0020,0032) ImagePosition(Patient) dvDS
  # VR values: ["DS"]
  def name("00200032"), do: :image_position_patient

  # (0020,0035) ImageOrientation dvDS
  # VR values: ["DS"]
  def name("00200035"), do: :image_orientation

  # (0020,0037) ImageOrientation(Patient) dvDS
  # VR values: ["DS"]
  def name("00200037"), do: :image_orientation_patient

  # (0020,0050) Location dvDS
  # VR values: ["DS"]
  def name("00200050"), do: :location

  # (0020,0052) FrameofReferenceUID dvUI
  # VR values: ["UI"]
  def name("00200052"), do: :frameof_reference_uid

  # (0020,0060) Laterality dvCS
  # VR values: ["CS"]
  def name("00200060"), do: :laterality

  # (0020,0062) ImageLaterality dvCS
  # VR values: ["CS"]
  def name("00200062"), do: :image_laterality

  # (0020,0070) ImageGeometryType dvLO
  # VR values: ["LO"]
  def name("00200070"), do: :image_geometry_type

  # (0020,0080) MaskingImage dvCS
  # VR values: ["CS"]
  def name("00200080"), do: :masking_image

  # (0020,00AA) ReportNumber dvIS
  # VR values: ["IS"]
  def name("002000AA"), do: :report_number

  # (0020,0100) TemporalPositionIdentifier dvIS
  # VR values: ["IS"]
  def name("00200100"), do: :temporal_position_identifier

  # (0020,0105) NumberofTemporalPositions dvIS
  # VR values: ["IS"]
  def name("00200105"), do: :numberof_temporal_positions

  # (0020,0110) TemporalResolution dvDS
  # VR values: ["DS"]
  def name("00200110"), do: :temporal_resolution

  # (0020,0200) SynchronizationFrameofReferenceUID dvUI
  # VR values: ["UI"]
  def name("00200200"), do: :synchronization_frameof_reference_uid

  # (0020,0242) SOPInstanceUIDofConcatenationSource dvUI
  # VR values: ["UI"]
  def name("00200242"), do: :sop_instance_ui_dof_concatenation_source

  # (0020,1000) SeriesinStudy dvIS
  # VR values: ["IS"]
  def name("00201000"), do: :seriesin_study

  # (0020,1001) AcquisitionsinSeries dvIS
  # VR values: ["IS"]
  def name("00201001"), do: :acquisitionsin_series

  # (0020,1002) ImagesinAcquisition dvIS
  # VR values: ["IS"]
  def name("00201002"), do: :imagesin_acquisition

  # (0020,1003) ImagesinSeries dvIS
  # VR values: ["IS"]
  def name("00201003"), do: :imagesin_series

  # (0020,1004) AcquisitionsinStudy dvIS
  # VR values: ["IS"]
  def name("00201004"), do: :acquisitionsin_study

  # (0020,1005) ImagesinStudy dvIS
  # VR values: ["IS"]
  def name("00201005"), do: :imagesin_study

  # (0020,1020) Reference dvLO
  # VR values: ["LO"]
  def name("00201020"), do: :reference

  # (0020,1040) PositionReferenceIndicator dvLO
  # VR values: ["LO"]
  def name("00201040"), do: :position_reference_indicator

  # (0020,1041) SliceLocation dvDS
  # VR values: ["DS"]
  def name("00201041"), do: :slice_location

  # (0020,1070) OtherStudyNumbers dvIS
  # VR values: ["IS"]
  def name("00201070"), do: :other_study_numbers

  # (0020,1200) NumberofPatientRelatedStudies dvIS
  # VR values: ["IS"]
  def name("00201200"), do: :numberof_patient_related_studies

  # (0020,1202) NumberofPatientRelatedSeries dvIS
  # VR values: ["IS"]
  def name("00201202"), do: :numberof_patient_related_series

  # (0020,1204) NumberofPatientRelatedInstances dvIS
  # VR values: ["IS"]
  def name("00201204"), do: :numberof_patient_related_instances

  # (0020,1206) NumberofStudyRelatedSeries dvIS
  # VR values: ["IS"]
  def name("00201206"), do: :numberof_study_related_series

  # (0020,1208) NumberofStudyRelatedInstances dvIS
  # VR values: ["IS"]
  def name("00201208"), do: :numberof_study_related_instances

  # (0020,1209) NumberofSeriesRelatedInstances dvIS
  # VR values: ["IS"]
  def name("00201209"), do: :numberof_series_related_instances

  # (0020,3100) SourceImageIDs dvCS
  # VR values: ["CS"]
  def name("00203100"), do: :source_image_ids

  # (0020,3401) ModifyingDeviceID dvCS
  # VR values: ["CS"]
  def name("00203401"), do: :modifying_device_id

  # (0020,3402) ModifiedImageID dvCS
  # VR values: ["CS"]
  def name("00203402"), do: :modified_image_id

  # (0020,3403) ModifiedImageDate dvDA
  # VR values: ["DA"]
  def name("00203403"), do: :modified_image_date

  # (0020,3404) ModifyingDeviceManufacturer dvLO
  # VR values: ["LO"]
  def name("00203404"), do: :modifying_device_manufacturer

  # (0020,3405) ModifiedImageTime dvTM
  # VR values: ["TM"]
  def name("00203405"), do: :modified_image_time

  # (0020,3406) ModifiedImageDescription dvLO
  # VR values: ["LO"]
  def name("00203406"), do: :modified_image_description

  # (0020,4000) ImageComments dvLT
  # VR values: ["LT"]
  def name("00204000"), do: :image_comments

  # (0020,5000) OriginalImageIdentification dvAT
  # VR values: ["AT"]
  def name("00205000"), do: :original_image_identification

  # (0020,5002) OriginalImageIdentificationNomenclature dvLO
  # VR values: ["LO"]
  def name("00205002"), do: :original_image_identification_nomenclature

  # (0020,9056) StackID dvSH
  # VR values: ["SH"]
  def name("00209056"), do: :stack_id

  # (0020,9057) In_StackPositionNumber dvUL
  # VR values: ["UL"]
  def name("00209057"), do: :in_stack_position_number

  # (0020,9071) FrameAnatomySequence dvSQ
  # VR values: ["SQ"]
  def name("00209071"), do: :frame_anatomy_sequence

  # (0020,9072) FrameLaterality dvCS
  # VR values: ["CS"]
  def name("00209072"), do: :frame_laterality

  # (0020,9110) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00209110"), do: :undocumented

  # (0020,9111) FrameContentSequence dvSQ
  # VR values: ["SQ"]
  def name("00209111"), do: :frame_content_sequence

  # (0020,9113) PlanePositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00209113"), do: :plane_position_sequence

  # (0020,9116) PlaneOrientationSequence dvSQ
  # VR values: ["SQ"]
  def name("00209116"), do: :plane_orientation_sequence

  # (0020,9128) TemporalPositionIndex dvUL
  # VR values: ["UL"]
  def name("00209128"), do: :temporal_position_index

  # (0020,9153) NominalCardiacTriggerDelayTime dvFD
  # VR values: ["FD"]
  def name("00209153"), do: :nominal_cardiac_trigger_delay_time

  # (0020,9154) NominalCardiacTriggerTimePriortoR_Peak dvFL
  # VR values: ["FL"]
  def name("00209154"), do: :nominal_cardiac_trigger_time_priortor_peak

  # (0020,9155) ActualCardiacTriggerTimePriortoR_Peak dvFL
  # VR values: ["FL"]
  def name("00209155"), do: :actual_cardiac_trigger_time_priortor_peak

  # (0020,9156) FrameAcquisitionNumber dvUS
  # VR values: ["US"]
  def name("00209156"), do: :frame_acquisition_number

  # (0020,9157) DimensionIndexValues dvUL
  # VR values: ["UL"]
  def name("00209157"), do: :dimension_index_values

  # (0020,9158) FrameComments dvLT
  # VR values: ["LT"]
  def name("00209158"), do: :frame_comments

  # (0020,9161) ConcatenationUID dvUI
  # VR values: ["UI"]
  def name("00209161"), do: :concatenation_uid

  # (0020,9162) In_concatenationNumber dvUS
  # VR values: ["US"]
  def name("00209162"), do: :in_concatenation_number

  # (0020,9163) In_concatenationTotalNumber dvUS
  # VR values: ["US"]
  def name("00209163"), do: :in_concatenation_total_number

  # (0020,9164) DimensionOrganizationUID dvUI
  # VR values: ["UI"]
  def name("00209164"), do: :dimension_organization_uid

  # (0020,9165) DimensionIndexPointer dvAT
  # VR values: ["AT"]
  def name("00209165"), do: :dimension_index_pointer

  # (0020,9167) FunctionalGroupPointer dvAT
  # VR values: ["AT"]
  def name("00209167"), do: :functional_group_pointer

  # (0020,9170) UnassignedSharedConvertedAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("00209170"), do: :unassigned_shared_converted_attributes_sequence

  # (0020,9171) UnassignedPer_FrameConvertedAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("00209171"), do: :unassigned_per_frame_converted_attributes_sequence

  # (0020,9172) ConversionSourceAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("00209172"), do: :conversion_source_attributes_sequence

  # (0020,9213) DimensionIndexPrivateCreator dvLO
  # VR values: ["LO"]
  def name("00209213"), do: :dimension_index_private_creator

  # (0020,9221) DimensionOrganizationSequence dvSQ
  # VR values: ["SQ"]
  def name("00209221"), do: :dimension_organization_sequence

  # (0020,9222) DimensionIndexSequence dvSQ
  # VR values: ["SQ"]
  def name("00209222"), do: :dimension_index_sequence

  # (0020,9228) ConcatenationFrameOffsetNumber dvUL
  # VR values: ["UL"]
  def name("00209228"), do: :concatenation_frame_offset_number

  # (0020,9238) FunctionalGroupPrivateCreator dvLO
  # VR values: ["LO"]
  def name("00209238"), do: :functional_group_private_creator

  # (0020,9241) NominalPercentageofCardiacPhase dvFL
  # VR values: ["FL"]
  def name("00209241"), do: :nominal_percentageof_cardiac_phase

  # (0020,9245) NominalPercentageofRespiratoryPhase dvFL
  # VR values: ["FL"]
  def name("00209245"), do: :nominal_percentageof_respiratory_phase

  # (0020,9246) StartingRespiratoryAmplitude dvFL
  # VR values: ["FL"]
  def name("00209246"), do: :starting_respiratory_amplitude

  # (0020,9247) StartingRespiratoryPhase dvCS
  # VR values: ["CS"]
  def name("00209247"), do: :starting_respiratory_phase

  # (0020,9248) EndingRespiratoryAmplitude dvFL
  # VR values: ["FL"]
  def name("00209248"), do: :ending_respiratory_amplitude

  # (0020,9249) EndingRespiratoryPhase dvCS
  # VR values: ["CS"]
  def name("00209249"), do: :ending_respiratory_phase

  # (0020,9250) RespiratoryTriggerType dvCS
  # VR values: ["CS"]
  def name("00209250"), do: :respiratory_trigger_type

  # (0020,9251) R_RIntervalTimeNominal dvFD
  # VR values: ["FD"]
  def name("00209251"), do: :r_r_interval_time_nominal

  # (0020,9252) ActualCardiacTriggerDelayTime dvFD
  # VR values: ["FD"]
  def name("00209252"), do: :actual_cardiac_trigger_delay_time

  # (0020,9253) RespiratorySynchronizationSequence dvSQ
  # VR values: ["SQ"]
  def name("00209253"), do: :respiratory_synchronization_sequence

  # (0020,9254) RespiratoryIntervalTime dvFD
  # VR values: ["FD"]
  def name("00209254"), do: :respiratory_interval_time

  # (0020,9255) NominalRespiratoryTriggerDelayTime dvFD
  # VR values: ["FD"]
  def name("00209255"), do: :nominal_respiratory_trigger_delay_time

  # (0020,9256) RespiratoryTriggerDelayThreshold dvFD
  # VR values: ["FD"]
  def name("00209256"), do: :respiratory_trigger_delay_threshold

  # (0020,9257) ActualRespiratoryTriggerDelayTime dvFD
  # VR values: ["FD"]
  def name("00209257"), do: :actual_respiratory_trigger_delay_time

  # (0020,9301) ImagePosition(Volume) dvFD
  # VR values: ["FD"]
  def name("00209301"), do: :image_position_volume

  # (0020,9302) ImageOrientation(Volume) dvFD
  # VR values: ["FD"]
  def name("00209302"), do: :image_orientation_volume

  # (0020,9307) UltrasoundAcquisitionGeometry dvCS
  # VR values: ["CS"]
  def name("00209307"), do: :ultrasound_acquisition_geometry

  # (0020,9308) ApexPosition dvFD
  # VR values: ["FD"]
  def name("00209308"), do: :apex_position

  # (0020,9309) VolumetoTransducerMappingMatrix dvFD
  # VR values: ["FD"]
  def name("00209309"), do: :volumeto_transducer_mapping_matrix

  # (0020,930A) VolumetoTableMappingMatrix dvFD
  # VR values: ["FD"]
  def name("0020930A"), do: :volumeto_table_mapping_matrix

  # (0020,930B) VolumetoTransducerRelationship dvCS
  # VR values: ["CS"]
  def name("0020930B"), do: :volumeto_transducer_relationship

  # (0020,930C) PatientFrameofReferenceSource dvCS
  # VR values: ["CS"]
  def name("0020930C"), do: :patient_frameof_reference_source

  # (0020,930D) TemporalPositionTimeOffset dvFD
  # VR values: ["FD"]
  def name("0020930D"), do: :temporal_position_time_offset

  # (0020,930E) PlanePosition(Volume)Sequence dvSQ
  # VR values: ["SQ"]
  def name("0020930E"), do: :plane_position_volume_sequence

  # (0020,930F) PlaneOrientation(Volume)Sequence dvSQ
  # VR values: ["SQ"]
  def name("0020930F"), do: :plane_orientation_volume_sequence

  # (0020,9310) TemporalPositionSequence dvSQ
  # VR values: ["SQ"]
  def name("00209310"), do: :temporal_position_sequence

  # (0020,9311) DimensionOrganizationType dvCS
  # VR values: ["CS"]
  def name("00209311"), do: :dimension_organization_type

  # (0020,9312) VolumeFrameofReferenceUID dvUI
  # VR values: ["UI"]
  def name("00209312"), do: :volume_frameof_reference_uid

  # (0020,9313) TableFrameofReferenceUID dvUI
  # VR values: ["UI"]
  def name("00209313"), do: :table_frameof_reference_uid

  # (0020,9421) DimensionDescriptionLabel dvLO
  # VR values: ["LO"]
  def name("00209421"), do: :dimension_description_label

  # (0020,9450) PatientOrientationinFrameSequence dvSQ
  # VR values: ["SQ"]
  def name("00209450"), do: :patient_orientationin_frame_sequence

  # (0020,9453) FrameLabel dvLO
  # VR values: ["LO"]
  def name("00209453"), do: :frame_label

  # (0020,9518) AcquisitionIndex dvUS
  # VR values: ["US"]
  def name("00209518"), do: :acquisition_index

  # (0020,9529) ContributingSOPInstancesReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("00209529"), do: :contributing_sop_instances_reference_sequence

  # (0020,9536) ReconstructionIndex dvUS
  # VR values: ["US"]
  def name("00209536"), do: :reconstruction_index

  # (0021,0000) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210000"), do: :undocumented

  # (0021,0001) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210001"), do: :undocumented

  # (0021,0002) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210002"), do: :undocumented

  # (0021,0003) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210003"), do: :undocumented

  # (0021,0004) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210004"), do: :undocumented

  # (0021,0005) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210005"), do: :undocumented

  # (0021,0006) Undocumented dvIS
  # VR values: ["IS"]
  def name("00210006"), do: :undocumented

  # (0021,0007) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210007"), do: :undocumented

  # (0021,0008) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210008"), do: :undocumented

  # (0021,0009) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210009"), do: :undocumented

  # (0021,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210010"), do: :undocumented

  # (0021,0011) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210011"), do: :undocumented

  # (0021,0012) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210012"), do: :undocumented

  # (0021,0013) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210013"), do: :undocumented

  # (0021,0014) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210014"), do: :undocumented

  # (0021,0015) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210015"), do: :undocumented

  # (0021,0016) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210016"), do: :undocumented

  # (0021,0017) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210017"), do: :undocumented

  # (0021,0018) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210018"), do: :undocumented

  # (0021,0019) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210019"), do: :undocumented

  # (0021,0020) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210020"), do: :undocumented

  # (0021,0021) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210021"), do: :undocumented

  # (0021,0022) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210022"), do: :undocumented

  # (0021,0024) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210024"), do: :undocumented

  # (0021,0025) Undocumented dvUS
  # VR values: ["US"]
  def name("00210025"), do: :undocumented

  # (0021,0026) Undocumented dvIS
  # VR values: ["IS"]
  def name("00210026"), do: :undocumented

  # (0021,0030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210030"), do: :undocumented

  # (0021,0031) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210031"), do: :undocumented

  # (0021,0032) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210032"), do: :undocumented

  # (0021,0034) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210034"), do: :undocumented

  # (0021,0035) Undocumented dvSS
  # VR values: ["SS"]
  def name("00210035"), do: :undocumented

  # (0021,0036) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210036"), do: :undocumented

  # (0021,0037) Undocumented dvSS
  # VR values: ["SS"]
  def name("00210037"), do: :undocumented

  # (0021,0039) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210039"), do: :undocumented

  # (0021,0040) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210040"), do: :undocumented

  # (0021,0041) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210041"), do: :undocumented

  # (0021,0042) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210042"), do: :undocumented

  # (0021,0043) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210043"), do: :undocumented

  # (0021,0044) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210044"), do: :undocumented

  # (0021,0045) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210045"), do: :undocumented

  # (0021,0046) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210046"), do: :undocumented

  # (0021,0047) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210047"), do: :undocumented

  # (0021,0048) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210048"), do: :undocumented

  # (0021,0049) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210049"), do: :undocumented

  # (0021,004A) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0021004A"), do: :undocumented

  # (0021,004E) Undocumented dvUS
  # VR values: ["US"]
  def name("0021004E"), do: :undocumented

  # (0021,004F) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0021004F"), do: :undocumented

  # (0021,0050) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210050"), do: :undocumented

  # (0021,0051) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210051"), do: :undocumented

  # (0021,0052) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210052"), do: :undocumented

  # (0021,0053) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210053"), do: :undocumented

  # (0021,0054) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210054"), do: :undocumented

  # (0021,0055) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210055"), do: :undocumented

  # (0021,0056) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210056"), do: :undocumented

  # (0021,0057) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210057"), do: :undocumented

  # (0021,0058) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210058"), do: :undocumented

  # (0021,0059) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210059"), do: :undocumented

  # (0021,005A) Undocumented dvSL
  # VR values: ["SL"]
  def name("0021005A"), do: :undocumented

  # (0021,005B) Undocumented dvDS
  # VR values: ["DS"]
  def name("0021005B"), do: :undocumented

  # (0021,005C) Undocumented dvDS
  # VR values: ["DS"]
  def name("0021005C"), do: :undocumented

  # (0021,005D) Undocumented dvDS
  # VR values: ["DS"]
  def name("0021005D"), do: :undocumented

  # (0021,005E) Undocumented dvDS
  # VR values: ["DS"]
  def name("0021005E"), do: :undocumented

  # (0021,005F) Undocumented dvDS
  # VR values: ["DS"]
  def name("0021005F"), do: :undocumented

  # (0021,0060) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210060"), do: :undocumented

  # (0021,0061) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210061"), do: :undocumented

  # (0021,0062) Undocumented dvIS
  # VR values: ["IS"]
  def name("00210062"), do: :undocumented

  # (0021,0063) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210063"), do: :undocumented

  # (0021,0065) Undocumented dvUS
  # VR values: ["US"]
  def name("00210065"), do: :undocumented

  # (0021,006A) Undocumented dvDS
  # VR values: ["DS"]
  def name("0021006A"), do: :undocumented

  # (0021,006B) Undocumented dvDS
  # VR values: ["DS"]
  def name("0021006B"), do: :undocumented

  # (0021,0070) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210070"), do: :undocumented

  # (0021,0071) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210071"), do: :undocumented

  # (0021,0072) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210072"), do: :undocumented

  # (0021,0073) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210073"), do: :undocumented

  # (0021,0075) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210075"), do: :undocumented

  # (0021,0076) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210076"), do: :undocumented

  # (0021,007A) Undocumented dvIS
  # VR values: ["IS"]
  def name("0021007A"), do: :undocumented

  # (0021,007B) Undocumented dvIS
  # VR values: ["IS"]
  def name("0021007B"), do: :undocumented

  # (0021,007C) Undocumented dvIS
  # VR values: ["IS"]
  def name("0021007C"), do: :undocumented

  # (0021,0080) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210080"), do: :undocumented

  # (0021,0081) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210081"), do: :undocumented

  # (0021,0082) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210082"), do: :undocumented

  # (0021,0083) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210083"), do: :undocumented

  # (0021,0084) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210084"), do: :undocumented

  # (0021,0090) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210090"), do: :undocumented

  # (0021,0091) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210091"), do: :undocumented

  # (0021,0092) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210092"), do: :undocumented

  # (0021,0093) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00210093"), do: :undocumented

  # (0021,0094) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210094"), do: :undocumented

  # (0021,0095) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210095"), do: :undocumented

  # (0021,0096) Undocumented dvDS
  # VR values: ["DS"]
  def name("00210096"), do: :undocumented

  # (0021,00A0) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("002100A0"), do: :undocumented

  # (0021,00A1) Undocumented dvDS
  # VR values: ["DS"]
  def name("002100A1"), do: :undocumented

  # (0021,00A2) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("002100A2"), do: :undocumented

  # (0021,00A3) Undocumented dvLT
  # VR values: ["LT"]
  def name("002100A3"), do: :undocumented

  # (0021,00A4) Undocumented dvLT
  # VR values: ["LT"]
  def name("002100A4"), do: :undocumented

  # (0021,00A7) Undocumented dvLT
  # VR values: ["LT"]
  def name("002100A7"), do: :undocumented

  # (0021,00B0) Undocumented dvIS
  # VR values: ["IS"]
  def name("002100B0"), do: :undocumented

  # (0021,00C0) Undocumented dvIS
  # VR values: ["IS"]
  def name("002100C0"), do: :undocumented

  # (0022,0001) LightPathFilterPass_ThroughWavelength dvUS
  # VR values: ["US"]
  def name("00220001"), do: :light_path_filter_pass_through_wavelength

  # (0022,0002) LightPathFilterPassBand dvUS
  # VR values: ["US"]
  def name("00220002"), do: :light_path_filter_pass_band

  # (0022,0003) ImagePathFilterPass_ThroughWavelength dvUS
  # VR values: ["US"]
  def name("00220003"), do: :image_path_filter_pass_through_wavelength

  # (0022,0004) ImagePathFilterPassBand dvUS
  # VR values: ["US"]
  def name("00220004"), do: :image_path_filter_pass_band

  # (0022,0005) PatientEyeMovementCommanded dvCS
  # VR values: ["CS"]
  def name("00220005"), do: :patient_eye_movement_commanded

  # (0022,0006) PatientEyeMovementCommandCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00220006"), do: :patient_eye_movement_command_code_sequence

  # (0022,0007) SphericalLensPower dvFL
  # VR values: ["FL"]
  def name("00220007"), do: :spherical_lens_power

  # (0022,0008) CylinderLensPower dvFL
  # VR values: ["FL"]
  def name("00220008"), do: :cylinder_lens_power

  # (0022,0009) CylinderAxis dvFL
  # VR values: ["FL"]
  def name("00220009"), do: :cylinder_axis

  # (0022,000A) EmmetropicMagnification dvFL
  # VR values: ["FL"]
  def name("0022000A"), do: :emmetropic_magnification

  # (0022,000B) IntraOcularPressure dvFL
  # VR values: ["FL"]
  def name("0022000B"), do: :intra_ocular_pressure

  # (0022,000C) HorizontalFieldofView dvFL
  # VR values: ["FL"]
  def name("0022000C"), do: :horizontal_fieldof_view

  # (0022,000D) PupilDilated dvCS
  # VR values: ["CS"]
  def name("0022000D"), do: :pupil_dilated

  # (0022,000E) DegreeofDilation dvFL
  # VR values: ["FL"]
  def name("0022000E"), do: :degreeof_dilation

  # (0022,0010) StereoBaselineAngle dvFL
  # VR values: ["FL"]
  def name("00220010"), do: :stereo_baseline_angle

  # (0022,0011) StereoBaselineDisplacement dvFL
  # VR values: ["FL"]
  def name("00220011"), do: :stereo_baseline_displacement

  # (0022,0012) StereoHorizontalPixelOffset dvFL
  # VR values: ["FL"]
  def name("00220012"), do: :stereo_horizontal_pixel_offset

  # (0022,0013) StereoVerticalPixelOffset dvFL
  # VR values: ["FL"]
  def name("00220013"), do: :stereo_vertical_pixel_offset

  # (0022,0014) StereoRotation dvFL
  # VR values: ["FL"]
  def name("00220014"), do: :stereo_rotation

  # (0022,0015) AcquisitionDeviceTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00220015"), do: :acquisition_device_type_code_sequence

  # (0022,0016) IlluminationTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00220016"), do: :illumination_type_code_sequence

  # (0022,0017) LightPathFilterTypeStackCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00220017"), do: :light_path_filter_type_stack_code_sequence

  # (0022,0018) ImagePathFilterTypeStackCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00220018"), do: :image_path_filter_type_stack_code_sequence

  # (0022,0019) LensesCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00220019"), do: :lenses_code_sequence

  # (0022,001A) ChannelDescriptionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0022001A"), do: :channel_description_code_sequence

  # (0022,001B) RefractiveStateSequence dvSQ
  # VR values: ["SQ"]
  def name("0022001B"), do: :refractive_state_sequence

  # (0022,001C) MydriaticAgentCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0022001C"), do: :mydriatic_agent_code_sequence

  # (0022,001D) RelativeImagePositionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0022001D"), do: :relative_image_position_code_sequence

  # (0022,001E) CameraAngleofView dvFL
  # VR values: ["FL"]
  def name("0022001E"), do: :camera_angleof_view

  # (0022,0020) StereoPairsSequence dvSQ
  # VR values: ["SQ"]
  def name("00220020"), do: :stereo_pairs_sequence

  # (0022,0021) LeftImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00220021"), do: :left_image_sequence

  # (0022,0022) RightImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00220022"), do: :right_image_sequence

  # (0022,0030) AxialLengthoftheEye dvFL
  # VR values: ["FL"]
  def name("00220030"), do: :axial_lengthofthe_eye

  # (0022,0031) OphthalmicFrameLocationSequence dvSQ
  # VR values: ["SQ"]
  def name("00220031"), do: :ophthalmic_frame_location_sequence

  # (0022,0032) ReferenceCoordinates dvFL
  # VR values: ["FL"]
  def name("00220032"), do: :reference_coordinates

  # (0022,0035) DepthSpatialResolution dvFL
  # VR values: ["FL"]
  def name("00220035"), do: :depth_spatial_resolution

  # (0022,0036) MaximumDepthDistortion dvFL
  # VR values: ["FL"]
  def name("00220036"), do: :maximum_depth_distortion

  # (0022,0037) Along_scanSpatialResolution dvFL
  # VR values: ["FL"]
  def name("00220037"), do: :along_scan_spatial_resolution

  # (0022,0038) MaximumAlong_scanDistortion dvFL
  # VR values: ["FL"]
  def name("00220038"), do: :maximum_along_scan_distortion

  # (0022,0039) OphthalmicImageOrientation dvCS
  # VR values: ["CS"]
  def name("00220039"), do: :ophthalmic_image_orientation

  # (0022,0041) DepthofTransverseImage dvFL
  # VR values: ["FL"]
  def name("00220041"), do: :depthof_transverse_image

  # (0022,0042) MydriaticAgentConcentrationUnitsSequence dvSQ
  # VR values: ["SQ"]
  def name("00220042"), do: :mydriatic_agent_concentration_units_sequence

  # (0022,0048) Across_scanSpatialResolution dvFL
  # VR values: ["FL"]
  def name("00220048"), do: :across_scan_spatial_resolution

  # (0022,0049) MaximumAcross_scanDistortion dvFL
  # VR values: ["FL"]
  def name("00220049"), do: :maximum_across_scan_distortion

  # (0022,004E) MydriaticAgentConcentration dvDS
  # VR values: ["DS"]
  def name("0022004E"), do: :mydriatic_agent_concentration

  # (0022,0055) IlluminationWaveLength dvFL
  # VR values: ["FL"]
  def name("00220055"), do: :illumination_wave_length

  # (0022,0056) IlluminationPower dvFL
  # VR values: ["FL"]
  def name("00220056"), do: :illumination_power

  # (0022,0057) IlluminationBandwidth dvFL
  # VR values: ["FL"]
  def name("00220057"), do: :illumination_bandwidth

  # (0022,0058) MydriaticAgentSequence dvSQ
  # VR values: ["SQ"]
  def name("00220058"), do: :mydriatic_agent_sequence

  # (0022,1007) OphthalmicAxialMeasurementsRightEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221007"), do: :ophthalmic_axial_measurements_right_eye_sequence

  # (0022,1008) OphthalmicAxialMeasurementsLeftEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221008"), do: :ophthalmic_axial_measurements_left_eye_sequence

  # (0022,1009) OphthalmicAxialMeasurementsDeviceType dvCS
  # VR values: ["CS"]
  def name("00221009"), do: :ophthalmic_axial_measurements_device_type

  # (0022,1010) OphthalmicAxialLengthMeasurementsType dvCS
  # VR values: ["CS"]
  def name("00221010"), do: :ophthalmic_axial_length_measurements_type

  # (0022,1012) OphthalmicAxialLengthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221012"), do: :ophthalmic_axial_length_sequence

  # (0022,1019) OphthalmicAxialLength dvFL
  # VR values: ["FL"]
  def name("00221019"), do: :ophthalmic_axial_length

  # (0022,1024) LensStatusCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221024"), do: :lens_status_code_sequence

  # (0022,1025) VitreousStatusCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221025"), do: :vitreous_status_code_sequence

  # (0022,1028) IOLFormulaCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221028"), do: :iol_formula_code_sequence

  # (0022,1029) IOLFormulaDetail dvLO
  # VR values: ["LO"]
  def name("00221029"), do: :iol_formula_detail

  # (0022,1033) KeratometerIndex dvFL
  # VR values: ["FL"]
  def name("00221033"), do: :keratometer_index

  # (0022,1035) SourceofOphthalmicAxialLengthCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221035"), do: :sourceof_ophthalmic_axial_length_code_sequence

  # (0022,1037) TargetRefraction dvFL
  # VR values: ["FL"]
  def name("00221037"), do: :target_refraction

  # (0022,1039) RefractiveProcedureOccurred dvCS
  # VR values: ["CS"]
  def name("00221039"), do: :refractive_procedure_occurred

  # (0022,1040) RefractiveSurgeryTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221040"), do: :refractive_surgery_type_code_sequence

  # (0022,1044) OphthalmicUltrasoundMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221044"), do: :ophthalmic_ultrasound_method_code_sequence

  # (0022,1050) OphthalmicAxialLengthMeasurementsSequence dvSQ
  # VR values: ["SQ"]
  def name("00221050"), do: :ophthalmic_axial_length_measurements_sequence

  # (0022,1053) IOLPower dvFL
  # VR values: ["FL"]
  def name("00221053"), do: :iol_power

  # (0022,1054) PredictedRefractiveError dvFL
  # VR values: ["FL"]
  def name("00221054"), do: :predicted_refractive_error

  # (0022,1059) OphthalmicAxialLengthVelocity dvFL
  # VR values: ["FL"]
  def name("00221059"), do: :ophthalmic_axial_length_velocity

  # (0022,1065) LensStatusDescription dvLO
  # VR values: ["LO"]
  def name("00221065"), do: :lens_status_description

  # (0022,1066) VitreousStatusDescription dvLO
  # VR values: ["LO"]
  def name("00221066"), do: :vitreous_status_description

  # (0022,1090) IOLPowerSequence dvSQ
  # VR values: ["SQ"]
  def name("00221090"), do: :iol_power_sequence

  # (0022,1092) LensConstantSequence dvSQ
  # VR values: ["SQ"]
  def name("00221092"), do: :lens_constant_sequence

  # (0022,1093) IOLManufacturer dvLO
  # VR values: ["LO"]
  def name("00221093"), do: :iol_manufacturer

  # (0022,1094) LensConstantDescription dvLO
  # VR values: ["LO"]
  def name("00221094"), do: :lens_constant_description

  # (0022,1095) ImplantName dvLO
  # VR values: ["LO"]
  def name("00221095"), do: :implant_name

  # (0022,1096) KeratometryMeasurementTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221096"), do: :keratometry_measurement_type_code_sequence

  # (0022,1097) ImplantPartNumber dvLO
  # VR values: ["LO"]
  def name("00221097"), do: :implant_part_number

  # (0022,1100) ReferencedOphthalmicAxialMeasurementsSequence dvSQ
  # VR values: ["SQ"]
  def name("00221100"), do: :referenced_ophthalmic_axial_measurements_sequence

  # (0022,1101) OphthalmicAxialLengthMeasurementsSegmentNameCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221101"), do: :ophthalmic_axial_length_measurements_segment_name_code_sequence

  # (0022,1103) RefractiveErrorBeforeRefractiveSurgeryCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221103"), do: :refractive_error_before_refractive_surgery_code_sequence

  # (0022,1121) IOLPowerforExactEmmetropia dvFL
  # VR values: ["FL"]
  def name("00221121"), do: :iol_powerfor_exact_emmetropia

  # (0022,1122) IOLPowerforExactTargetRefraction dvFL
  # VR values: ["FL"]
  def name("00221122"), do: :iol_powerfor_exact_target_refraction

  # (0022,1125) AnteriorChamberDepthDefinitionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221125"), do: :anterior_chamber_depth_definition_code_sequence

  # (0022,1127) LensThicknessSequence dvSQ
  # VR values: ["SQ"]
  def name("00221127"), do: :lens_thickness_sequence

  # (0022,1128) AnteriorChamberDepthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221128"), do: :anterior_chamber_depth_sequence

  # (0022,1130) LensThickness dvFL
  # VR values: ["FL"]
  def name("00221130"), do: :lens_thickness

  # (0022,1131) AnteriorChamberDepth dvFL
  # VR values: ["FL"]
  def name("00221131"), do: :anterior_chamber_depth

  # (0022,1132) SourceofLensThicknessDataCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221132"), do: :sourceof_lens_thickness_data_code_sequence

  # (0022,1133) SourceofAnteriorChamberDepthDataCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221133"), do: :sourceof_anterior_chamber_depth_data_code_sequence

  # (0022,1134) SourceofRefractiveMeasurementsSequence dvSQ
  # VR values: ["SQ"]
  def name("00221134"), do: :sourceof_refractive_measurements_sequence

  # (0022,1135) SourceofRefractiveMeasurementsCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221135"), do: :sourceof_refractive_measurements_code_sequence

  # (0022,1140) OphthalmicAxialLengthMeasurementModified dvCS
  # VR values: ["CS"]
  def name("00221140"), do: :ophthalmic_axial_length_measurement_modified

  # (0022,1150) OphthalmicAxialLengthDataSourceCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221150"), do: :ophthalmic_axial_length_data_source_code_sequence

  # (0022,1153) OphthalmicAxialLengthAcquisitionMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221153"), do: :ophthalmic_axial_length_acquisition_method_code_sequence

  # (0022,1155) SignaltoNoiseRatio dvFL
  # VR values: ["FL"]
  def name("00221155"), do: :signalto_noise_ratio

  # (0022,1159) OphthalmicAxialLengthDataSourceDescription dvLO
  # VR values: ["LO"]
  def name("00221159"), do: :ophthalmic_axial_length_data_source_description

  # (0022,1210) OphthalmicAxialLengthMeasurementsTotalLengthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221210"), do: :ophthalmic_axial_length_measurements_total_length_sequence

  # (0022,1211) OphthalmicAxialLengthMeasurementsSegmentalLengthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221211"), do: :ophthalmic_axial_length_measurements_segmental_length_sequence

  # (0022,1212) OphthalmicAxialLengthMeasurementsLengthSummationSequence dvSQ
  # VR values: ["SQ"]
  def name("00221212"), do: :ophthalmic_axial_length_measurements_length_summation_sequence

  # (0022,1220) UltrasoundOphthalmicAxialLengthMeasurementsSequence dvSQ
  # VR values: ["SQ"]
  def name("00221220"), do: :ultrasound_ophthalmic_axial_length_measurements_sequence

  # (0022,1225) OpticalOphthalmicAxialLengthMeasurementsSequence dvSQ
  # VR values: ["SQ"]
  def name("00221225"), do: :optical_ophthalmic_axial_length_measurements_sequence

  # (0022,1230) UltrasoundSelectedOphthalmicAxialLengthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221230"), do: :ultrasound_selected_ophthalmic_axial_length_sequence

  # (0022,1250) OphthalmicAxialLengthSelectionMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221250"), do: :ophthalmic_axial_length_selection_method_code_sequence

  # (0022,1255) OpticalSelectedOphthalmicAxialLengthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221255"), do: :optical_selected_ophthalmic_axial_length_sequence

  # (0022,1257) SelectedSegmentalOphthalmicAxialLengthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221257"), do: :selected_segmental_ophthalmic_axial_length_sequence

  # (0022,1260) SelectedTotalOphthalmicAxialLengthSequence dvSQ
  # VR values: ["SQ"]
  def name("00221260"), do: :selected_total_ophthalmic_axial_length_sequence

  # (0022,1262) OphthalmicAxialLengthQualityMetricSequence dvSQ
  # VR values: ["SQ"]
  def name("00221262"), do: :ophthalmic_axial_length_quality_metric_sequence

  # (0022,1265) OphthalmicAxialLengthQualityMetricTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221265"), do: :ophthalmic_axial_length_quality_metric_type_code_sequence

  # (0022,1273) OphthalmicAxialLengthQualityMetricTypeDescription dvLO
  # VR values: ["LO"]
  def name("00221273"), do: :ophthalmic_axial_length_quality_metric_type_description

  # (0022,1300) IntraocularLensCalculationsRightEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221300"), do: :intraocular_lens_calculations_right_eye_sequence

  # (0022,1310) IntraocularLensCalculationsLeftEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221310"), do: :intraocular_lens_calculations_left_eye_sequence

  # (0022,1330) ReferencedOphthalmicAxialLengthMeasurementQCImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00221330"), do: :referenced_ophthalmic_axial_length_measurement_qc_image_sequence

  # (0022,1415) OphthalmicMappingDeviceType dvCS
  # VR values: ["CS"]
  def name("00221415"), do: :ophthalmic_mapping_device_type

  # (0022,1420) AcquisitionMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221420"), do: :acquisition_method_code_sequence

  # (0022,1423) AcquisitionMethodAlgorithmSequence dvSQ
  # VR values: ["SQ"]
  def name("00221423"), do: :acquisition_method_algorithm_sequence

  # (0022,1436) OphthalmicThicknessMapTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221436"), do: :ophthalmic_thickness_map_type_code_sequence

  # (0022,1443) OphthalmicThicknessMappingNormalsSequence dvSQ
  # VR values: ["SQ"]
  def name("00221443"), do: :ophthalmic_thickness_mapping_normals_sequence

  # (0022,1445) RetinalThicknessDefinitionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00221445"), do: :retinal_thickness_definition_code_sequence

  # (0022,1450) PixelValueMappingtoCodedConceptSequence dvSQ
  # VR values: ["SQ"]
  def name("00221450"), do: :pixel_value_mappingto_coded_concept_sequence

  # (0022,1452) MappedPixelValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00221452"), do: :mapped_pixel_value

  # (0022,1454) PixelValueMappingExplanation dvLO
  # VR values: ["LO"]
  def name("00221454"), do: :pixel_value_mapping_explanation

  # (0022,1458) OphthalmicThicknessMapQualityThresholdSequence dvSQ
  # VR values: ["SQ"]
  def name("00221458"), do: :ophthalmic_thickness_map_quality_threshold_sequence

  # (0022,1460) OphthalmicThicknessMapThresholdQualityRating dvFL
  # VR values: ["FL"]
  def name("00221460"), do: :ophthalmic_thickness_map_threshold_quality_rating

  # (0022,1463) AnatomicStructureReferencePoint dvFL
  # VR values: ["FL"]
  def name("00221463"), do: :anatomic_structure_reference_point

  # (0022,1465) RegistrationtoLocalizerSequence dvSQ
  # VR values: ["SQ"]
  def name("00221465"), do: :registrationto_localizer_sequence

  # (0022,1466) RegisteredLocalizerUnits dvCS
  # VR values: ["CS"]
  def name("00221466"), do: :registered_localizer_units

  # (0022,1467) RegisteredLocalizerTopLeftHandCorner dvFL
  # VR values: ["FL"]
  def name("00221467"), do: :registered_localizer_top_left_hand_corner

  # (0022,1468) RegisteredLocalizerBottomRightHandCorner dvFL
  # VR values: ["FL"]
  def name("00221468"), do: :registered_localizer_bottom_right_hand_corner

  # (0022,1470) OphthalmicThicknessMapQualityRatingSequence dvSQ
  # VR values: ["SQ"]
  def name("00221470"), do: :ophthalmic_thickness_map_quality_rating_sequence

  # (0022,1472) RelevantOPTAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("00221472"), do: :relevant_opt_attributes_sequence

  # (0023,0000) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230000"), do: :undocumented

  # (0023,0001) Undocumented dvSL
  # VR values: ["SL"]
  def name("00230001"), do: :undocumented

  # (0023,0002) Undocumented dvSL
  # VR values: ["SL"]
  def name("00230002"), do: :undocumented

  # (0023,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230010"), do: :undocumented

  # (0023,0020) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230020"), do: :undocumented

  # (0023,0030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230030"), do: :undocumented

  # (0023,0040) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230040"), do: :undocumented

  # (0023,0050) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230050"), do: :undocumented

  # (0023,0060) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230060"), do: :undocumented

  # (0023,0070) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230070"), do: :undocumented

  # (0023,0074) Undocumented dvSL
  # VR values: ["SL"]
  def name("00230074"), do: :undocumented

  # (0023,007D) Undocumented dvSS
  # VR values: ["SS"]
  def name("0023007D"), do: :undocumented

  # (0023,0080) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230080"), do: :undocumented

  # (0023,0090) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00230090"), do: :undocumented

  # (0023,00FF) Undocumented dvUS
  # VR values: ["US"]
  def name("002300FF"), do: :undocumented

  # (0024,0010) VisualFieldHorizontalExtent dvFL
  # VR values: ["FL"]
  def name("00240010"), do: :visual_field_horizontal_extent

  # (0024,0011) VisualFieldVerticalExtent dvFL
  # VR values: ["FL"]
  def name("00240011"), do: :visual_field_vertical_extent

  # (0024,0012) VisualFieldShape dvCS
  # VR values: ["CS"]
  def name("00240012"), do: :visual_field_shape

  # (0024,0016) ScreeningTestModeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00240016"), do: :screening_test_mode_code_sequence

  # (0024,0018) MaximumStimulusLuminance dvFL
  # VR values: ["FL"]
  def name("00240018"), do: :maximum_stimulus_luminance

  # (0024,0020) BackgroundLuminance dvFL
  # VR values: ["FL"]
  def name("00240020"), do: :background_luminance

  # (0024,0021) StimulusColorCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00240021"), do: :stimulus_color_code_sequence

  # (0024,0024) BackgroundIlluminationColorCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00240024"), do: :background_illumination_color_code_sequence

  # (0024,0025) StimulusArea dvFL
  # VR values: ["FL"]
  def name("00240025"), do: :stimulus_area

  # (0024,0028) StimulusPresentationTime dvFL
  # VR values: ["FL"]
  def name("00240028"), do: :stimulus_presentation_time

  # (0024,0032) FixationSequence dvSQ
  # VR values: ["SQ"]
  def name("00240032"), do: :fixation_sequence

  # (0024,0033) FixationMonitoringCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00240033"), do: :fixation_monitoring_code_sequence

  # (0024,0034) VisualFieldCatchTrialSequence dvSQ
  # VR values: ["SQ"]
  def name("00240034"), do: :visual_field_catch_trial_sequence

  # (0024,0035) FixationCheckedQuantity dvUS
  # VR values: ["US"]
  def name("00240035"), do: :fixation_checked_quantity

  # (0024,0036) PatientNotProperlyFixatedQuantity dvUS
  # VR values: ["US"]
  def name("00240036"), do: :patient_not_properly_fixated_quantity

  # (0024,0037) PresentedVisualStimuliDataFlag dvCS
  # VR values: ["CS"]
  def name("00240037"), do: :presented_visual_stimuli_data_flag

  # (0024,0038) NumberofVisualStimuli dvUS
  # VR values: ["US"]
  def name("00240038"), do: :numberof_visual_stimuli

  # (0024,0039) ExcessiveFixationLossesDataFlag dvCS
  # VR values: ["CS"]
  def name("00240039"), do: :excessive_fixation_losses_data_flag

  # (0024,0040) ExcessiveFixationLosses dvCS
  # VR values: ["CS"]
  def name("00240040"), do: :excessive_fixation_losses

  # (0024,0042) StimuliRetestingQuantity dvUS
  # VR values: ["US"]
  def name("00240042"), do: :stimuli_retesting_quantity

  # (0024,0044) CommentsonPatient'sPerformanceofVisualField dvLT
  # VR values: ["LT"]
  def name("00240044"), do: :commentson_patients_performanceof_visual_field

  # (0024,0045) FalseNegativesEstimateFlag dvCS
  # VR values: ["CS"]
  def name("00240045"), do: :false_negatives_estimate_flag

  # (0024,0046) FalseNegativesEstimate dvFL
  # VR values: ["FL"]
  def name("00240046"), do: :false_negatives_estimate

  # (0024,0048) NegativeCatchTrialsQuantity dvUS
  # VR values: ["US"]
  def name("00240048"), do: :negative_catch_trials_quantity

  # (0024,0050) FalseNegativesQuantity dvUS
  # VR values: ["US"]
  def name("00240050"), do: :false_negatives_quantity

  # (0024,0051) ExcessiveFalseNegativesDataFlag dvCS
  # VR values: ["CS"]
  def name("00240051"), do: :excessive_false_negatives_data_flag

  # (0024,0052) ExcessiveFalseNegatives dvCS
  # VR values: ["CS"]
  def name("00240052"), do: :excessive_false_negatives

  # (0024,0053) FalsePositivesEstimateFlag dvCS
  # VR values: ["CS"]
  def name("00240053"), do: :false_positives_estimate_flag

  # (0024,0054) FalsePositivesEstimate dvFL
  # VR values: ["FL"]
  def name("00240054"), do: :false_positives_estimate

  # (0024,0055) CatchTrialsDataFlag dvCS
  # VR values: ["CS"]
  def name("00240055"), do: :catch_trials_data_flag

  # (0024,0056) PositiveCatchTrialsQuantity dvUS
  # VR values: ["US"]
  def name("00240056"), do: :positive_catch_trials_quantity

  # (0024,0057) TestPointNormalsDataFlag dvCS
  # VR values: ["CS"]
  def name("00240057"), do: :test_point_normals_data_flag

  # (0024,0058) TestPointNormalsSequence dvSQ
  # VR values: ["SQ"]
  def name("00240058"), do: :test_point_normals_sequence

  # (0024,0059) GlobalDeviationProbabilityNormalsFlag dvCS
  # VR values: ["CS"]
  def name("00240059"), do: :global_deviation_probability_normals_flag

  # (0024,0060) FalsePositivesQuantity dvUS
  # VR values: ["US"]
  def name("00240060"), do: :false_positives_quantity

  # (0024,0061) ExcessiveFalsePositivesDataFlag dvCS
  # VR values: ["CS"]
  def name("00240061"), do: :excessive_false_positives_data_flag

  # (0024,0062) ExcessiveFalsePositives dvCS
  # VR values: ["CS"]
  def name("00240062"), do: :excessive_false_positives

  # (0024,0063) VisualFieldTestNormalsFlag dvCS
  # VR values: ["CS"]
  def name("00240063"), do: :visual_field_test_normals_flag

  # (0024,0064) ResultsNormalsSequence dvSQ
  # VR values: ["SQ"]
  def name("00240064"), do: :results_normals_sequence

  # (0024,0065) AgeCorrectedSensitivityDeviationAlgorithmSequence dvSQ
  # VR values: ["SQ"]
  def name("00240065"), do: :age_corrected_sensitivity_deviation_algorithm_sequence

  # (0024,0066) GlobalDeviationFromNormal dvFL
  # VR values: ["FL"]
  def name("00240066"), do: :global_deviation_from_normal

  # (0024,0067) GeneralizedDefectSensitivityDeviationAlgorithmSequence dvSQ
  # VR values: ["SQ"]
  def name("00240067"), do: :generalized_defect_sensitivity_deviation_algorithm_sequence

  # (0024,0068) LocalizedDeviationFromNormal dvFL
  # VR values: ["FL"]
  def name("00240068"), do: :localized_deviation_from_normal

  # (0024,0069) PatientReliabilityIndicator dvLO
  # VR values: ["LO"]
  def name("00240069"), do: :patient_reliability_indicator

  # (0024,0070) VisualFieldMeanSensitivity dvFL
  # VR values: ["FL"]
  def name("00240070"), do: :visual_field_mean_sensitivity

  # (0024,0071) GlobalDeviationProbability dvFL
  # VR values: ["FL"]
  def name("00240071"), do: :global_deviation_probability

  # (0024,0072) LocalDeviationProbabilityNormalsFlag dvCS
  # VR values: ["CS"]
  def name("00240072"), do: :local_deviation_probability_normals_flag

  # (0024,0073) LocalizedDeviationProbability dvFL
  # VR values: ["FL"]
  def name("00240073"), do: :localized_deviation_probability

  # (0024,0074) ShortTermFluctuationCalculated dvCS
  # VR values: ["CS"]
  def name("00240074"), do: :short_term_fluctuation_calculated

  # (0024,0075) ShortTermFluctuation dvFL
  # VR values: ["FL"]
  def name("00240075"), do: :short_term_fluctuation

  # (0024,0076) ShortTermFluctuationProbabilityCalculated dvCS
  # VR values: ["CS"]
  def name("00240076"), do: :short_term_fluctuation_probability_calculated

  # (0024,0077) ShortTermFluctuationProbability dvFL
  # VR values: ["FL"]
  def name("00240077"), do: :short_term_fluctuation_probability

  # (0024,0078) CorrectedLocalizedDeviationFromNormalCalculated dvCS
  # VR values: ["CS"]
  def name("00240078"), do: :corrected_localized_deviation_from_normal_calculated

  # (0024,0079) CorrectedLocalizedDeviationFromNormal dvFL
  # VR values: ["FL"]
  def name("00240079"), do: :corrected_localized_deviation_from_normal

  # (0024,0080) CorrectedLocalizedDeviationFromNormalProbabilityCalculated dvCS
  # VR values: ["CS"]
  def name("00240080"), do: :corrected_localized_deviation_from_normal_probability_calculated

  # (0024,0081) CorrectedLocalizedDeviationFromNormalProbability dvFL
  # VR values: ["FL"]
  def name("00240081"), do: :corrected_localized_deviation_from_normal_probability

  # (0024,0083) GlobalDeviationProbabilitySequence dvSQ
  # VR values: ["SQ"]
  def name("00240083"), do: :global_deviation_probability_sequence

  # (0024,0085) LocalizedDeviationProbabilitySequence dvSQ
  # VR values: ["SQ"]
  def name("00240085"), do: :localized_deviation_probability_sequence

  # (0024,0086) FovealSensitivityMeasured dvCS
  # VR values: ["CS"]
  def name("00240086"), do: :foveal_sensitivity_measured

  # (0024,0087) FovealSensitivity dvFL
  # VR values: ["FL"]
  def name("00240087"), do: :foveal_sensitivity

  # (0024,0088) VisualFieldTestDuration dvFL
  # VR values: ["FL"]
  def name("00240088"), do: :visual_field_test_duration

  # (0024,0089) VisualFieldTestPointSequence dvSQ
  # VR values: ["SQ"]
  def name("00240089"), do: :visual_field_test_point_sequence

  # (0024,0090) VisualFieldTestPointX_Coordinate dvFL
  # VR values: ["FL"]
  def name("00240090"), do: :visual_field_test_pointx_coordinate

  # (0024,0091) VisualFieldTestPointY_Coordinate dvFL
  # VR values: ["FL"]
  def name("00240091"), do: :visual_field_test_pointy_coordinate

  # (0024,0092) AgeCorrectedSensitivityDeviationValue dvFL
  # VR values: ["FL"]
  def name("00240092"), do: :age_corrected_sensitivity_deviation_value

  # (0024,0093) StimulusResults dvCS
  # VR values: ["CS"]
  def name("00240093"), do: :stimulus_results

  # (0024,0094) SensitivityValue dvFL
  # VR values: ["FL"]
  def name("00240094"), do: :sensitivity_value

  # (0024,0095) RetestStimulusSeen dvCS
  # VR values: ["CS"]
  def name("00240095"), do: :retest_stimulus_seen

  # (0024,0096) RetestSensitivityValue dvFL
  # VR values: ["FL"]
  def name("00240096"), do: :retest_sensitivity_value

  # (0024,0097) VisualFieldTestPointNormalsSequence dvSQ
  # VR values: ["SQ"]
  def name("00240097"), do: :visual_field_test_point_normals_sequence

  # (0024,0098) QuantifiedDefect dvFL
  # VR values: ["FL"]
  def name("00240098"), do: :quantified_defect

  # (0024,0100) AgeCorrectedSensitivityDeviationProbabilityValue dvFL
  # VR values: ["FL"]
  def name("00240100"), do: :age_corrected_sensitivity_deviation_probability_value

  # (0024,0102) GeneralizedDefectCorrectedSensitivityDeviationFlag dvCS
  # VR values: ["CS"]
  def name("00240102"), do: :generalized_defect_corrected_sensitivity_deviation_flag

  # (0024,0103) GeneralizedDefectCorrectedSensitivityDeviationValue dvFL
  # VR values: ["FL"]
  def name("00240103"), do: :generalized_defect_corrected_sensitivity_deviation_value

  # (0024,0104) GeneralizedDefectCorrectedSensitivityDeviationProbabilityValue dvFL
  # VR values: ["FL"]
  def name("00240104"), do: :generalized_defect_corrected_sensitivity_deviation_probability_value

  # (0024,0105) MinimumSensitivityValue dvFL
  # VR values: ["FL"]
  def name("00240105"), do: :minimum_sensitivity_value

  # (0024,0106) BlindSpotLocalized dvCS
  # VR values: ["CS"]
  def name("00240106"), do: :blind_spot_localized

  # (0024,0107) BlindSpotX_Coordinate dvFL
  # VR values: ["FL"]
  def name("00240107"), do: :blind_spotx_coordinate

  # (0024,0108) BlindSpotY_Coordinate dvFL
  # VR values: ["FL"]
  def name("00240108"), do: :blind_spoty_coordinate

  # (0024,0110) VisualAcuityMeasurementSequence dvSQ
  # VR values: ["SQ"]
  def name("00240110"), do: :visual_acuity_measurement_sequence

  # (0024,0112) RefractiveParametersUsedonPatientSequence dvSQ
  # VR values: ["SQ"]
  def name("00240112"), do: :refractive_parameters_usedon_patient_sequence

  # (0024,0113) MeasurementLaterality dvCS
  # VR values: ["CS"]
  def name("00240113"), do: :measurement_laterality

  # (0024,0114) OphthalmicPatientClinicalInformationLeftEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00240114"), do: :ophthalmic_patient_clinical_information_left_eye_sequence

  # (0024,0115) OphthalmicPatientClinicalInformationRightEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00240115"), do: :ophthalmic_patient_clinical_information_right_eye_sequence

  # (0024,0117) FovealPointNormativeDataFlag dvCS
  # VR values: ["CS"]
  def name("00240117"), do: :foveal_point_normative_data_flag

  # (0024,0118) FovealPointProbabilityValue dvFL
  # VR values: ["FL"]
  def name("00240118"), do: :foveal_point_probability_value

  # (0024,0120) ScreeningBaselineMeasured dvCS
  # VR values: ["CS"]
  def name("00240120"), do: :screening_baseline_measured

  # (0024,0122) ScreeningBaselineMeasuredSequence dvSQ
  # VR values: ["SQ"]
  def name("00240122"), do: :screening_baseline_measured_sequence

  # (0024,0124) ScreeningBaselineType dvCS
  # VR values: ["CS"]
  def name("00240124"), do: :screening_baseline_type

  # (0024,0126) ScreeningBaselineValue dvFL
  # VR values: ["FL"]
  def name("00240126"), do: :screening_baseline_value

  # (0024,0202) AlgorithmSource dvLO
  # VR values: ["LO"]
  def name("00240202"), do: :algorithm_source

  # (0024,0306) DataSetName dvLO
  # VR values: ["LO"]
  def name("00240306"), do: :data_set_name

  # (0024,0307) DataSetVersion dvLO
  # VR values: ["LO"]
  def name("00240307"), do: :data_set_version

  # (0024,0308) DataSetSource dvLO
  # VR values: ["LO"]
  def name("00240308"), do: :data_set_source

  # (0024,0309) DataSetDescription dvLO
  # VR values: ["LO"]
  def name("00240309"), do: :data_set_description

  # (0024,0317) VisualFieldTestReliabilityGlobalIndexSequence dvSQ
  # VR values: ["SQ"]
  def name("00240317"), do: :visual_field_test_reliability_global_index_sequence

  # (0024,0320) VisualFieldGlobalResultsIndexSequence dvSQ
  # VR values: ["SQ"]
  def name("00240320"), do: :visual_field_global_results_index_sequence

  # (0024,0325) DataObservationSequence dvSQ
  # VR values: ["SQ"]
  def name("00240325"), do: :data_observation_sequence

  # (0024,0338) IndexNormalsFlag dvCS
  # VR values: ["CS"]
  def name("00240338"), do: :index_normals_flag

  # (0024,0341) IndexProbability dvFL
  # VR values: ["FL"]
  def name("00240341"), do: :index_probability

  # (0024,0344) IndexProbabilitySequence dvSQ
  # VR values: ["SQ"]
  def name("00240344"), do: :index_probability_sequence

  # (0025,0000) Undocumented dvUL
  # VR values: ["UL"]
  def name("00250000"), do: :undocumented

  # (0025,0006) Undocumented dvSS
  # VR values: ["SS"]
  def name("00250006"), do: :undocumented

  # (0025,0007) Undocumented dvSL
  # VR values: ["SL"]
  def name("00250007"), do: :undocumented

  # (0025,0010) Undocumented dvSS
  # VR values: ["SS"]
  def name("00250010"), do: :undocumented

  # (0025,0011) Undocumented dvSS
  # VR values: ["SS"]
  def name("00250011"), do: :undocumented

  # (0025,0014) Undocumented dvSL
  # VR values: ["SL"]
  def name("00250014"), do: :undocumented

  # (0025,0017) Undocumented dvSL
  # VR values: ["SL"]
  def name("00250017"), do: :undocumented

  # (0025,0018) Undocumented dvSL
  # VR values: ["SL"]
  def name("00250018"), do: :undocumented

  # (0025,0019) Undocumented dvSL
  # VR values: ["SL"]
  def name("00250019"), do: :undocumented

  # (0025,001A) Undocumented dvSH
  # VR values: ["SH"]
  def name("0025001A"), do: :undocumented

  # (0027,0000) Undocumented dvUS
  # VR values: ["US"]
  def name("00270000"), do: :undocumented

  # (0027,0006) Undocumented dvSL
  # VR values: ["SL"]
  def name("00270006"), do: :undocumented

  # (0027,0010) Undocumented dvSS
  # VR values: ["SS"]
  def name("00270010"), do: :undocumented

  # (0027,0011) Undocumented dvUN
  # VR values: ["UN"]
  def name("00270011"), do: :undocumented

  # (0027,0012) Undocumented dvIS
  # VR values: ["IS"]
  def name("00270012"), do: :undocumented

  # (0027,0013) Undocumented dvIS
  # VR values: ["IS"]
  def name("00270013"), do: :undocumented

  # (0027,0014) Undocumented dvIS
  # VR values: ["IS"]
  def name("00270014"), do: :undocumented

  # (0027,0015) Undocumented dvIS
  # VR values: ["IS"]
  def name("00270015"), do: :undocumented

  # (0027,0016) Undocumented dvLT
  # VR values: ["LT"]
  def name("00270016"), do: :undocumented

  # (0027,001C) Undocumented dvSL
  # VR values: ["SL"]
  def name("0027001C"), do: :undocumented

  # (0027,001D) Undocumented dvSS
  # VR values: ["SS"]
  def name("0027001D"), do: :undocumented

  # (0027,001E) Undocumented dvSL
  # VR values: ["SL"]
  def name("0027001E"), do: :undocumented

  # (0027,001F) Undocumented dvSL
  # VR values: ["SL"]
  def name("0027001F"), do: :undocumented

  # (0027,0020) Undocumented dvSS
  # VR values: ["SS"]
  def name("00270020"), do: :undocumented

  # (0027,0030) Undocumented dvSH
  # VR values: ["SH"]
  def name("00270030"), do: :undocumented

  # (0027,0031) Undocumented dvSS
  # VR values: ["SS"]
  def name("00270031"), do: :undocumented

  # (0027,0032) Undocumented dvSS
  # VR values: ["SS"]
  def name("00270032"), do: :undocumented

  # (0027,0033) Undocumented dvSL
  # VR values: ["SL"]
  def name("00270033"), do: :undocumented

  # (0027,0035) Undocumented dvSS
  # VR values: ["SS"]
  def name("00270035"), do: :undocumented

  # (0027,0036) Undocumented dvSL
  # VR values: ["SL"]
  def name("00270036"), do: :undocumented

  # (0027,0040) Undocumented dvSH
  # VR values: ["SH"]
  def name("00270040"), do: :undocumented

  # (0027,0041) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270041"), do: :undocumented

  # (0027,0042) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270042"), do: :undocumented

  # (0027,0043) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270043"), do: :undocumented

  # (0027,0044) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270044"), do: :undocumented

  # (0027,0045) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270045"), do: :undocumented

  # (0027,0046) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270046"), do: :undocumented

  # (0027,0047) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270047"), do: :undocumented

  # (0027,0048) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270048"), do: :undocumented

  # (0027,0049) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270049"), do: :undocumented

  # (0027,004A) Undocumented dvFL
  # VR values: ["FL"]
  def name("0027004A"), do: :undocumented

  # (0027,004B) Undocumented dvFL
  # VR values: ["FL"]
  def name("0027004B"), do: :undocumented

  # (0027,004C) Undocumented dvFL
  # VR values: ["FL"]
  def name("0027004C"), do: :undocumented

  # (0027,004D) Undocumented dvFL
  # VR values: ["FL"]
  def name("0027004D"), do: :undocumented

  # (0027,0050) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270050"), do: :undocumented

  # (0027,0051) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270051"), do: :undocumented

  # (0027,0052) Undocumented dvSH
  # VR values: ["SH"]
  def name("00270052"), do: :undocumented

  # (0027,0053) Undocumented dvSH
  # VR values: ["SH"]
  def name("00270053"), do: :undocumented

  # (0027,0054) Undocumented dvSH
  # VR values: ["SH"]
  def name("00270054"), do: :undocumented

  # (0027,0055) Undocumented dvSH
  # VR values: ["SH"]
  def name("00270055"), do: :undocumented

  # (0027,0060) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270060"), do: :undocumented

  # (0027,0061) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270061"), do: :undocumented

  # (0027,0062) Undocumented dvFL
  # VR values: ["FL"]
  def name("00270062"), do: :undocumented

  # (0028,0000) ImagePresentationGroupLength dvUL
  # VR values: ["UL"]
  def name("00280000"), do: :image_presentation_group_length

  # (0028,0002) SamplesperPixel dvUS
  # VR values: ["US"]
  def name("00280002"), do: :samplesper_pixel

  # (0028,0003) SamplesperPixelUsed dvUS
  # VR values: ["US"]
  def name("00280003"), do: :samplesper_pixel_used

  # (0028,0004) PhotometricInterpretation dvCS
  # VR values: ["CS"]
  def name("00280004"), do: :photometric_interpretation

  # (0028,0005) ImageDimensions dvUS
  # VR values: ["US"]
  def name("00280005"), do: :image_dimensions

  # (0028,0006) PlanarConfiguration dvUS
  # VR values: ["US"]
  def name("00280006"), do: :planar_configuration

  # (0028,0008) NumberofFrames dvIS
  # VR values: ["IS"]
  def name("00280008"), do: :numberof_frames

  # (0028,0009) FrameIncrementPointer dvAT
  # VR values: ["AT"]
  def name("00280009"), do: :frame_increment_pointer

  # (0028,000A) FrameDimensionPointer dvAT
  # VR values: ["AT"]
  def name("0028000A"), do: :frame_dimension_pointer

  # (0028,0010) Rows dvUS
  # VR values: ["US"]
  def name("00280010"), do: :rows

  # (0028,0011) Columns dvUS
  # VR values: ["US"]
  def name("00280011"), do: :columns

  # (0028,0012) Planes dvUS
  # VR values: ["US"]
  def name("00280012"), do: :planes

  # (0028,0014) UltrasoundColorDataPresent dvUS
  # VR values: ["US"]
  def name("00280014"), do: :ultrasound_color_data_present

  # (0028,0020) Undocumented dvUN
  # VR values: ["UN"]
  def name("00280020"), do: :undocumented

  # (0028,0030) PixelSpacing dvDS
  # VR values: ["DS"]
  def name("00280030"), do: :pixel_spacing

  # (0028,0031) ZoomFactor dvDS
  # VR values: ["DS"]
  def name("00280031"), do: :zoom_factor

  # (0028,0032) ZoomCenter dvDS
  # VR values: ["DS"]
  def name("00280032"), do: :zoom_center

  # (0028,0034) PixelAspectRatio dvIS
  # VR values: ["IS"]
  def name("00280034"), do: :pixel_aspect_ratio

  # (0028,0040) ImageFormat dvCS
  # VR values: ["CS"]
  def name("00280040"), do: :image_format

  # (0028,0050) ManipulatedImage dvLO
  # VR values: ["LO"]
  def name("00280050"), do: :manipulated_image

  # (0028,0051) CorrectedImage dvCS
  # VR values: ["CS"]
  def name("00280051"), do: :corrected_image

  # (0028,005F) CompressionRecognitionCode dvLO
  # VR values: ["LO"]
  def name("0028005F"), do: :compression_recognition_code

  # (0028,0060) CompressionCode dvCS
  # VR values: ["CS"]
  def name("00280060"), do: :compression_code

  # (0028,0061) CompressionOriginator dvSH
  # VR values: ["SH"]
  def name("00280061"), do: :compression_originator

  # (0028,0062) CompressionLabel dvLO
  # VR values: ["LO"]
  def name("00280062"), do: :compression_label

  # (0028,0063) CompressionDescription dvSH
  # VR values: ["SH"]
  def name("00280063"), do: :compression_description

  # (0028,0065) CompressionSequence dvCS
  # VR values: ["CS"]
  def name("00280065"), do: :compression_sequence

  # (0028,0066) CompressionStepPointers dvAT
  # VR values: ["AT"]
  def name("00280066"), do: :compression_step_pointers

  # (0028,0068) RepeatInterval dvUS
  # VR values: ["US"]
  def name("00280068"), do: :repeat_interval

  # (0028,0069) BitsGrouped dvUS
  # VR values: ["US"]
  def name("00280069"), do: :bits_grouped

  # (0028,0070) PerimeterTable dvUS
  # VR values: ["US"]
  def name("00280070"), do: :perimeter_table

  # (0028,0071) PerimeterValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280071"), do: :perimeter_value

  # (0028,0080) PredictorRows dvUS
  # VR values: ["US"]
  def name("00280080"), do: :predictor_rows

  # (0028,0081) PredictorColumns dvUS
  # VR values: ["US"]
  def name("00280081"), do: :predictor_columns

  # (0028,0082) PredictorConstants dvUS
  # VR values: ["US"]
  def name("00280082"), do: :predictor_constants

  # (0028,0090) BlockedPixels dvCS
  # VR values: ["CS"]
  def name("00280090"), do: :blocked_pixels

  # (0028,0091) BlockRows dvUS
  # VR values: ["US"]
  def name("00280091"), do: :block_rows

  # (0028,0092) BlockColumns dvUS
  # VR values: ["US"]
  def name("00280092"), do: :block_columns

  # (0028,0093) RowOverlap dvUS
  # VR values: ["US"]
  def name("00280093"), do: :row_overlap

  # (0028,0094) ColumnOverlap dvUS
  # VR values: ["US"]
  def name("00280094"), do: :column_overlap

  # (0028,0100) BitsAllocated dvUS
  # VR values: ["US"]
  def name("00280100"), do: :bits_allocated

  # (0028,0101) BitsStored dvUS
  # VR values: ["US"]
  def name("00280101"), do: :bits_stored

  # (0028,0102) HighBit dvUS
  # VR values: ["US"]
  def name("00280102"), do: :high_bit

  # (0028,0103) PixelRepresentation dvUS
  # VR values: ["US"]
  def name("00280103"), do: :pixel_representation

  # (0028,0104) SmallestValidPixelValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280104"), do: :smallest_valid_pixel_value

  # (0028,0105) LargestValidPixelValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280105"), do: :largest_valid_pixel_value

  # (0028,0106) SmallestImagePixelValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280106"), do: :smallest_image_pixel_value

  # (0028,0107) LargestImagePixelValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280107"), do: :largest_image_pixel_value

  # (0028,0108) SmallestPixelValueinSeries dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280108"), do: :smallest_pixel_valuein_series

  # (0028,0109) LargestPixelValueinSeries dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280109"), do: :largest_pixel_valuein_series

  # (0028,0110) SmallestImagePixelValueinPlane dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280110"), do: :smallest_image_pixel_valuein_plane

  # (0028,0111) LargestImagePixelValueinPlane dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280111"), do: :largest_image_pixel_valuein_plane

  # (0028,0120) PixelPaddingValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280120"), do: :pixel_padding_value

  # (0028,0121) PixelPaddingRangeLimit dvUSorSS
  # VR values: ["US", "SS"]
  def name("00280121"), do: :pixel_padding_range_limit

  # (0028,0200) ImageLocation dvUS
  # VR values: ["US"]
  def name("00280200"), do: :image_location

  # (0028,0300) QualityControlImage dvCS
  # VR values: ["CS"]
  def name("00280300"), do: :quality_control_image

  # (0028,0301) BurnedinAnnotation dvCS
  # VR values: ["CS"]
  def name("00280301"), do: :burnedin_annotation

  # (0028,0302) RecognizableVisualFeatures dvCS
  # VR values: ["CS"]
  def name("00280302"), do: :recognizable_visual_features

  # (0028,0303) LongitudinalTemporalInformationModified dvCS
  # VR values: ["CS"]
  def name("00280303"), do: :longitudinal_temporal_information_modified

  # (0028,0304) ReferencedColorPaletteInstanceUID dvUI
  # VR values: ["UI"]
  def name("00280304"), do: :referenced_color_palette_instance_uid

  # (0028,0400) TransformLabel dvLO
  # VR values: ["LO"]
  def name("00280400"), do: :transform_label

  # (0028,0401) TransformVersionNumber dvLO
  # VR values: ["LO"]
  def name("00280401"), do: :transform_version_number

  # (0028,0402) NumberofTransformSteps dvUS
  # VR values: ["US"]
  def name("00280402"), do: :numberof_transform_steps

  # (0028,0403) SequenceofCompressedData dvLO
  # VR values: ["LO"]
  def name("00280403"), do: :sequenceof_compressed_data

  # (0028,0404) DetailsofCoefficients dvAT
  # VR values: ["AT"]
  def name("00280404"), do: :detailsof_coefficients

  # (0028,0410) RowsforNthOrderCoefficients dvUS
  # VR values: ["US"]
  def name("00280410"), do: :rowsfor_nth_order_coefficients

  # (0028,0411) ColumnsforNthOrderCoefficients dvUS
  # VR values: ["US"]
  def name("00280411"), do: :columnsfor_nth_order_coefficients

  # (0028,0412) CoefficientCoding dvCS
  # VR values: ["CS"]
  def name("00280412"), do: :coefficient_coding

  # (0028,0413) CoefficientCodingPointers dvAT
  # VR values: ["AT"]
  def name("00280413"), do: :coefficient_coding_pointers

  # (0028,0700) DCTLabel dvLO
  # VR values: ["LO"]
  def name("00280700"), do: :dct_label

  # (0028,0701) DataBlockDescription dvCS
  # VR values: ["CS"]
  def name("00280701"), do: :data_block_description

  # (0028,0702) DataBlock dvAT
  # VR values: ["AT"]
  def name("00280702"), do: :data_block

  # (0028,0710) NormalizationFactorFormat dvUS
  # VR values: ["US"]
  def name("00280710"), do: :normalization_factor_format

  # (0028,0720) ZonalMapNumberFormat dvUS
  # VR values: ["US"]
  def name("00280720"), do: :zonal_map_number_format

  # (0028,0721) ZonalMapLocation dvAT
  # VR values: ["AT"]
  def name("00280721"), do: :zonal_map_location

  # (0028,0722) ZonalMapFormat dvUS
  # VR values: ["US"]
  def name("00280722"), do: :zonal_map_format

  # (0028,0730) AdaptiveMapFormat dvUS
  # VR values: ["US"]
  def name("00280730"), do: :adaptive_map_format

  # (0028,0740) CodeNumberFormat dvUS
  # VR values: ["US"]
  def name("00280740"), do: :code_number_format

  # (0028,0800) CodeLabel dvLO
  # VR values: ["LO"]
  def name("00280800"), do: :code_label

  # (0028,0802) NumberofTable dvUS
  # VR values: ["US"]
  def name("00280802"), do: :numberof_table

  # (0028,0803) CodeTableLocation dvAT
  # VR values: ["AT"]
  def name("00280803"), do: :code_table_location

  # (0028,0804) BitsforCodeWord dvUS
  # VR values: ["US"]
  def name("00280804"), do: :bitsfor_code_word

  # (0028,0808) ImageDataLocation dvAT
  # VR values: ["AT"]
  def name("00280808"), do: :image_data_location

  # (0028,0A02) PixelSpacingCalibrationType dvCS
  # VR values: ["CS"]
  def name("00280A02"), do: :pixel_spacing_calibration_type

  # (0028,0A04) PixelSpacingCalibrationDescription dvLO
  # VR values: ["LO"]
  def name("00280A04"), do: :pixel_spacing_calibration_description

  # (0028,1040) PixelIntensityRelationship dvCS
  # VR values: ["CS"]
  def name("00281040"), do: :pixel_intensity_relationship

  # (0028,1041) PixelIntensityRelationshipSign dvSS
  # VR values: ["SS"]
  def name("00281041"), do: :pixel_intensity_relationship_sign

  # (0028,1050) WindowCenter dvDS
  # VR values: ["DS"]
  def name("00281050"), do: :window_center

  # (0028,1051) WindowWidth dvDS
  # VR values: ["DS"]
  def name("00281051"), do: :window_width

  # (0028,1052) RescaleIntercept dvDS
  # VR values: ["DS"]
  def name("00281052"), do: :rescale_intercept

  # (0028,1053) RescaleSlope dvDS
  # VR values: ["DS"]
  def name("00281053"), do: :rescale_slope

  # (0028,1054) RescaleType dvLO
  # VR values: ["LO"]
  def name("00281054"), do: :rescale_type

  # (0028,1055) WindowCenter&WidthExplanation dvLO
  # VR values: ["LO"]
  def name("00281055"), do: :window_center__width_explanation

  # (0028,1056) VOILUTFunction dvCS
  # VR values: ["CS"]
  def name("00281056"), do: :voilut_function

  # (0028,1080) GrayScale dvCS
  # VR values: ["CS"]
  def name("00281080"), do: :gray_scale

  # (0028,1090) RecommendedViewingMode dvCS
  # VR values: ["CS"]
  def name("00281090"), do: :recommended_viewing_mode

  # (0028,1100) GrayLookupTableDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00281100"), do: :gray_lookup_table_descriptor

  # (0028,1101) RedPaletteColorLookupTableDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00281101"), do: :red_palette_color_lookup_table_descriptor

  # (0028,1102) GreenPaletteColorLookupTableDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00281102"), do: :green_palette_color_lookup_table_descriptor

  # (0028,1103) BluePaletteColorLookupTableDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00281103"), do: :blue_palette_color_lookup_table_descriptor

  # (0028,1104) AlphaPaletteColorLookupTableDescriptor dvUS
  # VR values: ["US"]
  def name("00281104"), do: :alpha_palette_color_lookup_table_descriptor

  # (0028,1111) LargeRedPaletteColorLookupTableDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00281111"), do: :large_red_palette_color_lookup_table_descriptor

  # (0028,1112) LargeGreenPaletteColorLookupTableDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00281112"), do: :large_green_palette_color_lookup_table_descriptor

  # (0028,1113) LargeBluePaletteColorLookupTableDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00281113"), do: :large_blue_palette_color_lookup_table_descriptor

  # (0028,1199) PaletteColorLookupTableUID dvUI
  # VR values: ["UI"]
  def name("00281199"), do: :palette_color_lookup_table_uid

  # (0028,1200) GrayLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281200"), do: :gray_lookup_table_data

  # (0028,1201) RedPaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281201"), do: :red_palette_color_lookup_table_data

  # (0028,1202) GreenPaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281202"), do: :green_palette_color_lookup_table_data

  # (0028,1203) BluePaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281203"), do: :blue_palette_color_lookup_table_data

  # (0028,1204) AlphaPaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281204"), do: :alpha_palette_color_lookup_table_data

  # (0028,1211) LargeRedPaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281211"), do: :large_red_palette_color_lookup_table_data

  # (0028,1212) LargeGreenPaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281212"), do: :large_green_palette_color_lookup_table_data

  # (0028,1213) LargeBluePaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281213"), do: :large_blue_palette_color_lookup_table_data

  # (0028,1214) LargePaletteColorLookupTableUID dvUI
  # VR values: ["UI"]
  def name("00281214"), do: :large_palette_color_lookup_table_uid

  # (0028,1221) SegmentedRedPaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281221"), do: :segmented_red_palette_color_lookup_table_data

  # (0028,1222) SegmentedGreenPaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281222"), do: :segmented_green_palette_color_lookup_table_data

  # (0028,1223) SegmentedBluePaletteColorLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281223"), do: :segmented_blue_palette_color_lookup_table_data

  # (0028,1300) BreastImplantPresent dvCS
  # VR values: ["CS"]
  def name("00281300"), do: :breast_implant_present

  # (0028,1350) PartialView dvCS
  # VR values: ["CS"]
  def name("00281350"), do: :partial_view

  # (0028,1351) PartialViewDescription dvST
  # VR values: ["ST"]
  def name("00281351"), do: :partial_view_description

  # (0028,1352) PartialViewCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00281352"), do: :partial_view_code_sequence

  # (0028,135A) SpatialLocationsPreserved dvCS
  # VR values: ["CS"]
  def name("0028135A"), do: :spatial_locations_preserved

  # (0028,1401) DataFrameAssignmentSequence dvSQ
  # VR values: ["SQ"]
  def name("00281401"), do: :data_frame_assignment_sequence

  # (0028,1402) DataPathAssignment dvCS
  # VR values: ["CS"]
  def name("00281402"), do: :data_path_assignment

  # (0028,1403) BitsMappedtoColorLookupTable dvUS
  # VR values: ["US"]
  def name("00281403"), do: :bits_mappedto_color_lookup_table

  # (0028,1404) BlendingLUT1Sequence dvSQ
  # VR values: ["SQ"]
  def name("00281404"), do: :blending_lu_t1_sequence

  # (0028,1405) BlendingLUT1TransferFunction dvCS
  # VR values: ["CS"]
  def name("00281405"), do: :blending_lu_t1_transfer_function

  # (0028,1406) BlendingWeightConstant dvFD
  # VR values: ["FD"]
  def name("00281406"), do: :blending_weight_constant

  # (0028,1407) BlendingLookupTableDescriptor dvUS
  # VR values: ["US"]
  def name("00281407"), do: :blending_lookup_table_descriptor

  # (0028,1408) BlendingLookupTableData dvOW
  # VR values: ["OW"]
  def name("00281408"), do: :blending_lookup_table_data

  # (0028,140B) EnhancedPaletteColorLookupTableSequence dvSQ
  # VR values: ["SQ"]
  def name("0028140B"), do: :enhanced_palette_color_lookup_table_sequence

  # (0028,140C) BlendingLUT2Sequence dvSQ
  # VR values: ["SQ"]
  def name("0028140C"), do: :blending_lu_t2_sequence

  # (0028,140D) BlendingLUT2TransferFunction dvCS
  # VR values: ["CS"]
  def name("0028140D"), do: :blending_lu_t2_transfer_function

  # (0028,140E) DataPathID dvCS
  # VR values: ["CS"]
  def name("0028140E"), do: :data_path_id

  # (0028,140F) RGBLUTTransferFunction dvCS
  # VR values: ["CS"]
  def name("0028140F"), do: :rgblut_transfer_function

  # (0028,1410) AlphaLUTTransferFunction dvCS
  # VR values: ["CS"]
  def name("00281410"), do: :alpha_lut_transfer_function

  # (0028,2000) ICCProfile dvOB
  # VR values: ["OB"]
  def name("00282000"), do: :icc_profile

  # (0028,2110) LossyImageCompression dvCS
  # VR values: ["CS"]
  def name("00282110"), do: :lossy_image_compression

  # (0028,2112) LossyImageCompressionRatio dvDS
  # VR values: ["DS"]
  def name("00282112"), do: :lossy_image_compression_ratio

  # (0028,2114) LossyImageCompressionMethod dvCS
  # VR values: ["CS"]
  def name("00282114"), do: :lossy_image_compression_method

  # (0028,3000) ModalityLUTSequence dvSQ
  # VR values: ["SQ"]
  def name("00283000"), do: :modality_lut_sequence

  # (0028,3002) LUTDescriptor dvUSorSS
  # VR values: ["US", "SS"]
  def name("00283002"), do: :lut_descriptor

  # (0028,3003) LUTExplanation dvLO
  # VR values: ["LO"]
  def name("00283003"), do: :lut_explanation

  # (0028,3004) ModalityLUTType dvLO
  # VR values: ["LO"]
  def name("00283004"), do: :modality_lut_type

  # (0028,3006) LUTData dvOW
  # VR values: ["OW"]
  def name("00283006"), do: :lut_data

  # (0028,3010) VOILUTSequence dvSQ
  # VR values: ["SQ"]
  def name("00283010"), do: :voilut_sequence

  # (0028,3110) SoftcopyVOILUTSequence dvSQ
  # VR values: ["SQ"]
  def name("00283110"), do: :softcopy_voilut_sequence

  # (0028,4000) ImagePresentationComments dvLT
  # VR values: ["LT"]
  def name("00284000"), do: :image_presentation_comments

  # (0028,5000) Bi_PlaneAcquisitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00285000"), do: :bi_plane_acquisition_sequence

  # (0028,6010) RepresentativeFrameNumber dvUS
  # VR values: ["US"]
  def name("00286010"), do: :representative_frame_number

  # (0028,6020) FrameNumbersofInterest(FOI) dvUS
  # VR values: ["US"]
  def name("00286020"), do: :frame_numbersof_interest_foi

  # (0028,6022) FrameofInterestDescription dvLO
  # VR values: ["LO"]
  def name("00286022"), do: :frameof_interest_description

  # (0028,6023) FrameofInterestType dvCS
  # VR values: ["CS"]
  def name("00286023"), do: :frameof_interest_type

  # (0028,6030) MaskPointer(s) dvUS
  # VR values: ["US"]
  def name("00286030"), do: :mask_pointers

  # (0028,6040) RWavePointer dvUS
  # VR values: ["US"]
  def name("00286040"), do: :r_wave_pointer

  # (0028,6100) MaskSubtractionSequence dvSQ
  # VR values: ["SQ"]
  def name("00286100"), do: :mask_subtraction_sequence

  # (0028,6101) MaskOperation dvCS
  # VR values: ["CS"]
  def name("00286101"), do: :mask_operation

  # (0028,6102) ApplicableFrameRange dvUS
  # VR values: ["US"]
  def name("00286102"), do: :applicable_frame_range

  # (0028,6110) MaskFrameNumbers dvUS
  # VR values: ["US"]
  def name("00286110"), do: :mask_frame_numbers

  # (0028,6112) ContrastFrameAveraging dvUS
  # VR values: ["US"]
  def name("00286112"), do: :contrast_frame_averaging

  # (0028,6114) MaskSub_pixelShift dvFL
  # VR values: ["FL"]
  def name("00286114"), do: :mask_sub_pixel_shift

  # (0028,6120) TIDOffset dvSS
  # VR values: ["SS"]
  def name("00286120"), do: :tid_offset

  # (0028,6190) MaskOperationExplanation dvST
  # VR values: ["ST"]
  def name("00286190"), do: :mask_operation_explanation

  # (0028,7000) EquipmentAdministratorSequence dvSQ
  # VR values: ["SQ"]
  def name("00287000"), do: :equipment_administrator_sequence

  # (0028,7001) NumberofDisplaySubsystems dvUS
  # VR values: ["US"]
  def name("00287001"), do: :numberof_display_subsystems

  # (0028,7002) CurrentConfigurationID dvUS
  # VR values: ["US"]
  def name("00287002"), do: :current_configuration_id

  # (0028,7003) DisplaySubsystemID dvUS
  # VR values: ["US"]
  def name("00287003"), do: :display_subsystem_id

  # (0028,7004) DisplaySubsystemName dvSH
  # VR values: ["SH"]
  def name("00287004"), do: :display_subsystem_name

  # (0028,7005) DisplaySubsystemDescription dvLO
  # VR values: ["LO"]
  def name("00287005"), do: :display_subsystem_description

  # (0028,7006) SystemStatus dvCS
  # VR values: ["CS"]
  def name("00287006"), do: :system_status

  # (0028,7007) SystemStatusComment dvLO
  # VR values: ["LO"]
  def name("00287007"), do: :system_status_comment

  # (0028,7008) TargetLuminanceCharacteristicsSequence dvSQ
  # VR values: ["SQ"]
  def name("00287008"), do: :target_luminance_characteristics_sequence

  # (0028,7009) LuminanceCharacteristicsID dvUS
  # VR values: ["US"]
  def name("00287009"), do: :luminance_characteristics_id

  # (0028,700A) DisplaySubsystemConfigurationSequence dvSQ
  # VR values: ["SQ"]
  def name("0028700A"), do: :display_subsystem_configuration_sequence

  # (0028,700B) ConfigurationID dvUS
  # VR values: ["US"]
  def name("0028700B"), do: :configuration_id

  # (0028,700C) ConfigurationName dvSH
  # VR values: ["SH"]
  def name("0028700C"), do: :configuration_name

  # (0028,700D) ConfigurationDescription dvLO
  # VR values: ["LO"]
  def name("0028700D"), do: :configuration_description

  # (0028,700E) ReferencedTargetLuminanceCharacteristicsID dvUS
  # VR values: ["US"]
  def name("0028700E"), do: :referenced_target_luminance_characteristics_id

  # (0028,700F) QAResultsSequence dvSQ
  # VR values: ["SQ"]
  def name("0028700F"), do: :qa_results_sequence

  # (0028,7010) DisplaySubsystemQAResultsSequence dvSQ
  # VR values: ["SQ"]
  def name("00287010"), do: :display_subsystem_qa_results_sequence

  # (0028,7011) ConfigurationQAResultsSequence dvSQ
  # VR values: ["SQ"]
  def name("00287011"), do: :configuration_qa_results_sequence

  # (0028,7012) MeasurementEquipmentSequence dvSQ
  # VR values: ["SQ"]
  def name("00287012"), do: :measurement_equipment_sequence

  # (0028,7013) MeasurementFunctions dvCS
  # VR values: ["CS"]
  def name("00287013"), do: :measurement_functions

  # (0028,7014) MeasurementEquipmentType dvCS
  # VR values: ["CS"]
  def name("00287014"), do: :measurement_equipment_type

  # (0028,7015) VisualEvaluationResultSequence dvSQ
  # VR values: ["SQ"]
  def name("00287015"), do: :visual_evaluation_result_sequence

  # (0028,7016) DisplayCalibrationResultSequence dvSQ
  # VR values: ["SQ"]
  def name("00287016"), do: :display_calibration_result_sequence

  # (0028,7017) DDLValue dvUS
  # VR values: ["US"]
  def name("00287017"), do: :ddl_value

  # (0028,7018) CIExyWhitePoint dvFL
  # VR values: ["FL"]
  def name("00287018"), do: :ci_exy_white_point

  # (0028,7019) DisplayFunctionType dvCS
  # VR values: ["CS"]
  def name("00287019"), do: :display_function_type

  # (0028,701A) GammaValue dvFL
  # VR values: ["FL"]
  def name("0028701A"), do: :gamma_value

  # (0028,701B) NumberofLuminancePoints dvUS
  # VR values: ["US"]
  def name("0028701B"), do: :numberof_luminance_points

  # (0028,701C) LuminanceResponseSequence dvSQ
  # VR values: ["SQ"]
  def name("0028701C"), do: :luminance_response_sequence

  # (0028,701D) TargetMinimumLuminance dvFL
  # VR values: ["FL"]
  def name("0028701D"), do: :target_minimum_luminance

  # (0028,701E) TargetMaximumLuminance dvFL
  # VR values: ["FL"]
  def name("0028701E"), do: :target_maximum_luminance

  # (0028,701F) LuminanceValue dvFL
  # VR values: ["FL"]
  def name("0028701F"), do: :luminance_value

  # (0028,7020) LuminanceResponseDescription dvLO
  # VR values: ["LO"]
  def name("00287020"), do: :luminance_response_description

  # (0028,7021) WhitePointFlag dvCS
  # VR values: ["CS"]
  def name("00287021"), do: :white_point_flag

  # (0028,7022) DisplayDeviceTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00287022"), do: :display_device_type_code_sequence

  # (0028,7023) DisplaySubsystemSequence dvSQ
  # VR values: ["SQ"]
  def name("00287023"), do: :display_subsystem_sequence

  # (0028,7024) LuminanceResultSequence dvSQ
  # VR values: ["SQ"]
  def name("00287024"), do: :luminance_result_sequence

  # (0028,7025) AmbientLightValueSource dvCS
  # VR values: ["CS"]
  def name("00287025"), do: :ambient_light_value_source

  # (0028,7026) MeasuredCharacteristics dvCS
  # VR values: ["CS"]
  def name("00287026"), do: :measured_characteristics

  # (0028,7027) LuminanceUniformityResultSequence dvSQ
  # VR values: ["SQ"]
  def name("00287027"), do: :luminance_uniformity_result_sequence

  # (0028,7028) VisualEvaluationTestSequence dvSQ
  # VR values: ["SQ"]
  def name("00287028"), do: :visual_evaluation_test_sequence

  # (0028,7029) TestResult dvCS
  # VR values: ["CS"]
  def name("00287029"), do: :test_result

  # (0028,702A) TestResultComment dvLO
  # VR values: ["LO"]
  def name("0028702A"), do: :test_result_comment

  # (0028,702B) TestImageValidation dvCS
  # VR values: ["CS"]
  def name("0028702B"), do: :test_image_validation

  # (0028,702C) TestPatternCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0028702C"), do: :test_pattern_code_sequence

  # (0028,702D) MeasurementPatternCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0028702D"), do: :measurement_pattern_code_sequence

  # (0028,702E) VisualEvaluationMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0028702E"), do: :visual_evaluation_method_code_sequence

  # (0028,7FE0) PixelDataProviderURL dvUR
  # VR values: ["UR"]
  def name("00287FE0"), do: :pixel_data_provider_url

  # (0028,9001) DataPointRows dvUL
  # VR values: ["UL"]
  def name("00289001"), do: :data_point_rows

  # (0028,9002) DataPointColumns dvUL
  # VR values: ["UL"]
  def name("00289002"), do: :data_point_columns

  # (0028,9003) SignalDomainColumns dvCS
  # VR values: ["CS"]
  def name("00289003"), do: :signal_domain_columns

  # (0028,9099) LargestMonochromePixelValue dvUS
  # VR values: ["US"]
  def name("00289099"), do: :largest_monochrome_pixel_value

  # (0028,9108) DataRepresentation dvCS
  # VR values: ["CS"]
  def name("00289108"), do: :data_representation

  # (0028,9110) PixelMeasuresSequence dvSQ
  # VR values: ["SQ"]
  def name("00289110"), do: :pixel_measures_sequence

  # (0028,9132) FrameVOILUTSequence dvSQ
  # VR values: ["SQ"]
  def name("00289132"), do: :frame_voilut_sequence

  # (0028,9145) PixelValueTransformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00289145"), do: :pixel_value_transformation_sequence

  # (0028,9235) SignalDomainRows dvCS
  # VR values: ["CS"]
  def name("00289235"), do: :signal_domain_rows

  # (0028,9411) DisplayFilterPercentage dvFL
  # VR values: ["FL"]
  def name("00289411"), do: :display_filter_percentage

  # (0028,9415) FramePixelShiftSequence dvSQ
  # VR values: ["SQ"]
  def name("00289415"), do: :frame_pixel_shift_sequence

  # (0028,9416) SubtractionItemID dvUS
  # VR values: ["US"]
  def name("00289416"), do: :subtraction_item_id

  # (0028,9422) PixelIntensityRelationshipLUTSequence dvSQ
  # VR values: ["SQ"]
  def name("00289422"), do: :pixel_intensity_relationship_lut_sequence

  # (0028,9443) FramePixelDataPropertiesSequence dvSQ
  # VR values: ["SQ"]
  def name("00289443"), do: :frame_pixel_data_properties_sequence

  # (0028,9444) GeometricalProperties dvCS
  # VR values: ["CS"]
  def name("00289444"), do: :geometrical_properties

  # (0028,9445) GeometricMaximumDistortion dvFL
  # VR values: ["FL"]
  def name("00289445"), do: :geometric_maximum_distortion

  # (0028,9446) ImageProcessingApplied dvCS
  # VR values: ["CS"]
  def name("00289446"), do: :image_processing_applied

  # (0028,9454) MaskSelectionMode dvCS
  # VR values: ["CS"]
  def name("00289454"), do: :mask_selection_mode

  # (0028,9474) LUTFunction dvCS
  # VR values: ["CS"]
  def name("00289474"), do: :lut_function

  # (0028,9478) MaskVisibilityPercentage dvFL
  # VR values: ["FL"]
  def name("00289478"), do: :mask_visibility_percentage

  # (0028,9501) PixelShiftSequence dvSQ
  # VR values: ["SQ"]
  def name("00289501"), do: :pixel_shift_sequence

  # (0028,9502) RegionPixelShiftSequence dvSQ
  # VR values: ["SQ"]
  def name("00289502"), do: :region_pixel_shift_sequence

  # (0028,9503) VerticesoftheRegion dvSS
  # VR values: ["SS"]
  def name("00289503"), do: :verticesofthe_region

  # (0028,9505) Multi_framePresentationSequence dvSQ
  # VR values: ["SQ"]
  def name("00289505"), do: :multi_frame_presentation_sequence

  # (0028,9506) PixelShiftFrameRange dvUS
  # VR values: ["US"]
  def name("00289506"), do: :pixel_shift_frame_range

  # (0028,9507) LUTFrameRange dvUS
  # VR values: ["US"]
  def name("00289507"), do: :lut_frame_range

  # (0028,9520) ImagetoEquipmentMappingMatrix dvDS
  # VR values: ["DS"]
  def name("00289520"), do: :imageto_equipment_mapping_matrix

  # (0028,9537) EquipmentCoordinateSystemIdentification dvCS
  # VR values: ["CS"]
  def name("00289537"), do: :equipment_coordinate_system_identification

  # (0029,0000) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290000"), do: :undocumented

  # (0029,0001) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290001"), do: :undocumented

  # (0029,0002) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290002"), do: :undocumented

  # (0029,0003) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290003"), do: :undocumented

  # (0029,0004) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290004"), do: :undocumented

  # (0029,0005) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290005"), do: :undocumented

  # (0029,0006) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290006"), do: :undocumented

  # (0029,0007) Undocumented dvSL
  # VR values: ["SL"]
  def name("00290007"), do: :undocumented

  # (0029,0008) Undocumented dvSH
  # VR values: ["SH"]
  def name("00290008"), do: :undocumented

  # (0029,0009) Undocumented dvSH
  # VR values: ["SH"]
  def name("00290009"), do: :undocumented

  # (0029,000A) Undocumented dvSS
  # VR values: ["SS"]
  def name("0029000A"), do: :undocumented

  # (0029,000C) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0029000C"), do: :undocumented

  # (0029,000E) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029000E"), do: :undocumented

  # (0029,000F) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029000F"), do: :undocumented

  # (0029,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290010"), do: :undocumented

  # (0029,0011) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290011"), do: :undocumented

  # (0029,0013) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290013"), do: :undocumented

  # (0029,0015) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290015"), do: :undocumented

  # (0029,0016) Undocumented dvSL
  # VR values: ["SL"]
  def name("00290016"), do: :undocumented

  # (0029,0017) Undocumented dvSL
  # VR values: ["SL"]
  def name("00290017"), do: :undocumented

  # (0029,0018) Undocumented dvSL
  # VR values: ["SL"]
  def name("00290018"), do: :undocumented

  # (0029,001A) Undocumented dvSL
  # VR values: ["SL"]
  def name("0029001A"), do: :undocumented

  # (0029,001E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0029001E"), do: :undocumented

  # (0029,001F) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0029001F"), do: :undocumented

  # (0029,0020) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290020"), do: :undocumented

  # (0029,0022) Undocumented dvIS
  # VR values: ["IS"]
  def name("00290022"), do: :undocumented

  # (0029,0025) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290025"), do: :undocumented

  # (0029,0026) Undocumented dvSS
  # VR values: ["SS"]
  def name("00290026"), do: :undocumented

  # (0029,0030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290030"), do: :undocumented

  # (0029,0031) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290031"), do: :undocumented

  # (0029,0032) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290032"), do: :undocumented

  # (0029,0033) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290033"), do: :undocumented

  # (0029,0034) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290034"), do: :undocumented

  # (0029,0035) Undocumented dvSL
  # VR values: ["SL"]
  def name("00290035"), do: :undocumented

  # (0029,0038) Undocumented dvUS
  # VR values: ["US"]
  def name("00290038"), do: :undocumented

  # (0029,0040) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290040"), do: :undocumented

  # (0029,0041) Undocumented dvDS
  # VR values: ["DS"]
  def name("00290041"), do: :undocumented

  # (0029,0043) Undocumented dvDS
  # VR values: ["DS"]
  def name("00290043"), do: :undocumented

  # (0029,0044) Undocumented dvUS
  # VR values: ["US"]
  def name("00290044"), do: :undocumented

  # (0029,004E) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029004E"), do: :undocumented

  # (0029,004F) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029004F"), do: :undocumented

  # (0029,0050) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290050"), do: :undocumented

  # (0029,0051) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290051"), do: :undocumented

  # (0029,0052) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290052"), do: :undocumented

  # (0029,0053) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290053"), do: :undocumented

  # (0029,0060) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290060"), do: :undocumented

  # (0029,0061) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290061"), do: :undocumented

  # (0029,0067) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290067"), do: :undocumented

  # (0029,0070) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290070"), do: :undocumented

  # (0029,0071) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290071"), do: :undocumented

  # (0029,0072) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290072"), do: :undocumented

  # (0029,0077) Undocumented dvCS
  # VR values: ["CS"]
  def name("00290077"), do: :undocumented

  # (0029,0078) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290078"), do: :undocumented

  # (0029,0079) Undocumented dvCS
  # VR values: ["CS"]
  def name("00290079"), do: :undocumented

  # (0029,007E) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029007E"), do: :undocumented

  # (0029,007F) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029007F"), do: :undocumented

  # (0029,0080) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290080"), do: :undocumented

  # (0029,0081) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00290081"), do: :undocumented

  # (0029,0082) Undocumented dvIS
  # VR values: ["IS"]
  def name("00290082"), do: :undocumented

  # (0029,0083) Undocumented dvIS
  # VR values: ["IS"]
  def name("00290083"), do: :undocumented

  # (0029,008E) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029008E"), do: :undocumented

  # (0029,008F) Undocumented dvCS
  # VR values: ["CS"]
  def name("0029008F"), do: :undocumented

  # (0029,0090) Undocumented dvIS
  # VR values: ["IS"]
  def name("00290090"), do: :undocumented

  # (0029,0099) Undocumented dvLT
  # VR values: ["LT"]
  def name("00290099"), do: :undocumented

  # (0029,00A0) Undocumented dvUS
  # VR values: ["US"]
  def name("002900A0"), do: :undocumented

  # (0029,00A1) Undocumented dvUS
  # VR values: ["US"]
  def name("002900A1"), do: :undocumented

  # (0029,00A2) Undocumented dvUS
  # VR values: ["US"]
  def name("002900A2"), do: :undocumented

  # (0029,00B0) Undocumented dvUS
  # VR values: ["US"]
  def name("002900B0"), do: :undocumented

  # (0029,00B2) Undocumented dvUS
  # VR values: ["US"]
  def name("002900B2"), do: :undocumented

  # (0029,00C0) Undocumented dvLT
  # VR values: ["LT"]
  def name("002900C0"), do: :undocumented

  # (0029,00C1) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("002900C1"), do: :undocumented

  # (0029,00C3) Undocumented dvIS
  # VR values: ["IS"]
  def name("002900C3"), do: :undocumented

  # (0029,00C4) Undocumented dvIS
  # VR values: ["IS"]
  def name("002900C4"), do: :undocumented

  # (0029,00C5) Undocumented dvLT
  # VR values: ["LT"]
  def name("002900C5"), do: :undocumented

  # (0029,00CE) Undocumented dvCS
  # VR values: ["CS"]
  def name("002900CE"), do: :undocumented

  # (0029,00CF) Undocumented dvCS
  # VR values: ["CS"]
  def name("002900CF"), do: :undocumented

  # (0029,00D0) Undocumented dvIS
  # VR values: ["IS"]
  def name("002900D0"), do: :undocumented

  # (0029,00D1) Undocumented dvIS
  # VR values: ["IS"]
  def name("002900D1"), do: :undocumented

  # (0029,00D5) Undocumented dvLT
  # VR values: ["LT"]
  def name("002900D5"), do: :undocumented

  # (0031,0010) Undocumented dvLT
  # VR values: ["LT"]
  def name("00310010"), do: :undocumented

  # (0031,0012) Undocumented dvLT
  # VR values: ["LT"]
  def name("00310012"), do: :undocumented

  # (0031,0030) Undocumented dvDA
  # VR values: ["DA"]
  def name("00310030"), do: :undocumented

  # (0031,0032) Undocumented dvTM
  # VR values: ["TM"]
  def name("00310032"), do: :undocumented

  # (0031,0033) Undocumented dvTM
  # VR values: ["TM"]
  def name("00310033"), do: :undocumented

  # (0031,0045) Undocumented dvLT
  # VR values: ["LT"]
  def name("00310045"), do: :undocumented

  # (0031,004A) Undocumented dvTM
  # VR values: ["TM"]
  def name("0031004A"), do: :undocumented

  # (0031,0050) Undocumented dvLT
  # VR values: ["LT"]
  def name("00310050"), do: :undocumented

  # (0031,0080) Undocumented dvLT
  # VR values: ["LT"]
  def name("00310080"), do: :undocumented

  # (0032,0000) StudyGroupLength dvUL
  # VR values: ["UL"]
  def name("00320000"), do: :study_group_length

  # (0032,000A) StudyStatusID dvCS
  # VR values: ["CS"]
  def name("0032000A"), do: :study_status_id

  # (0032,000C) StudyPriorityID dvCS
  # VR values: ["CS"]
  def name("0032000C"), do: :study_priority_id

  # (0032,0012) StudyIDIssuer dvLO
  # VR values: ["LO"]
  def name("00320012"), do: :study_id_issuer

  # (0032,0032) StudyVerifiedDate dvDA
  # VR values: ["DA"]
  def name("00320032"), do: :study_verified_date

  # (0032,0033) StudyVerifiedTime dvTM
  # VR values: ["TM"]
  def name("00320033"), do: :study_verified_time

  # (0032,0034) StudyReadDate dvDA
  # VR values: ["DA"]
  def name("00320034"), do: :study_read_date

  # (0032,0035) StudyReadTime dvTM
  # VR values: ["TM"]
  def name("00320035"), do: :study_read_time

  # (0032,1000) ScheduledStudyStartDate dvDA
  # VR values: ["DA"]
  def name("00321000"), do: :scheduled_study_start_date

  # (0032,1001) ScheduledStudyStartTime dvTM
  # VR values: ["TM"]
  def name("00321001"), do: :scheduled_study_start_time

  # (0032,1010) ScheduledStudyStopDate dvDA
  # VR values: ["DA"]
  def name("00321010"), do: :scheduled_study_stop_date

  # (0032,1011) ScheduledStudyStopTime dvTM
  # VR values: ["TM"]
  def name("00321011"), do: :scheduled_study_stop_time

  # (0032,1020) ScheduledStudyLocation dvLO
  # VR values: ["LO"]
  def name("00321020"), do: :scheduled_study_location

  # (0032,1021) ScheduledStudyLocationAETitle dvAE
  # VR values: ["AE"]
  def name("00321021"), do: :scheduled_study_location_ae_title

  # (0032,1030) ReasonforStudy dvLO
  # VR values: ["LO"]
  def name("00321030"), do: :reasonfor_study

  # (0032,1031) RequestingPhysicianIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00321031"), do: :requesting_physician_identification_sequence

  # (0032,1032) RequestingPhysician dvPN
  # VR values: ["PN"]
  def name("00321032"), do: :requesting_physician

  # (0032,1033) RequestingService dvLO
  # VR values: ["LO"]
  def name("00321033"), do: :requesting_service

  # (0032,1034) RequestingServiceCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00321034"), do: :requesting_service_code_sequence

  # (0032,1040) StudyArrivalDate dvDA
  # VR values: ["DA"]
  def name("00321040"), do: :study_arrival_date

  # (0032,1041) StudyArrivalTime dvTM
  # VR values: ["TM"]
  def name("00321041"), do: :study_arrival_time

  # (0032,1050) StudyCompletionDate dvDA
  # VR values: ["DA"]
  def name("00321050"), do: :study_completion_date

  # (0032,1051) StudyCompletionTime dvTM
  # VR values: ["TM"]
  def name("00321051"), do: :study_completion_time

  # (0032,1055) StudyComponentStatusID dvCS
  # VR values: ["CS"]
  def name("00321055"), do: :study_component_status_id

  # (0032,1060) RequestedProcedureDescription dvLO
  # VR values: ["LO"]
  def name("00321060"), do: :requested_procedure_description

  # (0032,1064) RequestedProcedureCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00321064"), do: :requested_procedure_code_sequence

  # (0032,1070) RequestedContrastAgent dvLO
  # VR values: ["LO"]
  def name("00321070"), do: :requested_contrast_agent

  # (0032,4000) StudyComments dvLT
  # VR values: ["LT"]
  def name("00324000"), do: :study_comments

  # (0033,0001) Undocumented dvUN
  # VR values: ["UN"]
  def name("00330001"), do: :undocumented

  # (0033,0002) Undocumented dvUN
  # VR values: ["UN"]
  def name("00330002"), do: :undocumented

  # (0033,0005) Undocumented dvUN
  # VR values: ["UN"]
  def name("00330005"), do: :undocumented

  # (0033,0006) Undocumented dvUN
  # VR values: ["UN"]
  def name("00330006"), do: :undocumented

  # (0033,0010) Undocumented dvLT
  # VR values: ["LT"]
  def name("00330010"), do: :undocumented

  # (0037,0010) Undocumented dvLO
  # VR values: ["LO"]
  def name("00370010"), do: :undocumented

  # (0037,0020) Undocumented dvUS
  # VR values: ["US"]
  def name("00370020"), do: :undocumented

  # (0037,0040) Undocumented dvSH
  # VR values: ["SH"]
  def name("00370040"), do: :undocumented

  # (0037,0042) Undocumented dvSH
  # VR values: ["SH"]
  def name("00370042"), do: :undocumented

  # (0037,0050) Undocumented dvCS
  # VR values: ["CS"]
  def name("00370050"), do: :undocumented

  # (0037,0060) Undocumented dvUS
  # VR values: ["US"]
  def name("00370060"), do: :undocumented

  # (0038,0000) VisitGroupLength dvUL
  # VR values: ["UL"]
  def name("00380000"), do: :visit_group_length

  # (0038,0004) ReferencedPatientAliasSequence dvSQ
  # VR values: ["SQ"]
  def name("00380004"), do: :referenced_patient_alias_sequence

  # (0038,0008) VisitStatusID dvCS
  # VR values: ["CS"]
  def name("00380008"), do: :visit_status_id

  # (0038,0010) AdmissionID dvLO
  # VR values: ["LO"]
  def name("00380010"), do: :admission_id

  # (0038,0011) IssuerofAdmissionID dvLO
  # VR values: ["LO"]
  def name("00380011"), do: :issuerof_admission_id

  # (0038,0014) IssuerofAdmissionIDSequence dvSQ
  # VR values: ["SQ"]
  def name("00380014"), do: :issuerof_admission_id_sequence

  # (0038,0016) RouteofAdmissions dvLO
  # VR values: ["LO"]
  def name("00380016"), do: :routeof_admissions

  # (0038,001A) ScheduledAdmissionDate dvDA
  # VR values: ["DA"]
  def name("0038001A"), do: :scheduled_admission_date

  # (0038,001B) ScheduledAdmissionTime dvTM
  # VR values: ["TM"]
  def name("0038001B"), do: :scheduled_admission_time

  # (0038,001C) ScheduledDischargeDate dvDA
  # VR values: ["DA"]
  def name("0038001C"), do: :scheduled_discharge_date

  # (0038,001D) ScheduledDischargeTime dvTM
  # VR values: ["TM"]
  def name("0038001D"), do: :scheduled_discharge_time

  # (0038,001E) ScheduledPatientInstitutionResidence dvLO
  # VR values: ["LO"]
  def name("0038001E"), do: :scheduled_patient_institution_residence

  # (0038,0020) AdmittingDate dvDA
  # VR values: ["DA"]
  def name("00380020"), do: :admitting_date

  # (0038,0021) AdmittingTime dvTM
  # VR values: ["TM"]
  def name("00380021"), do: :admitting_time

  # (0038,0030) DischargeDate dvDA
  # VR values: ["DA"]
  def name("00380030"), do: :discharge_date

  # (0038,0032) DischargeTime dvTM
  # VR values: ["TM"]
  def name("00380032"), do: :discharge_time

  # (0038,0040) DischargeDiagnosisDescription dvLO
  # VR values: ["LO"]
  def name("00380040"), do: :discharge_diagnosis_description

  # (0038,0044) DischargeDiagnosisCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00380044"), do: :discharge_diagnosis_code_sequence

  # (0038,0050) SpecialNeeds dvLO
  # VR values: ["LO"]
  def name("00380050"), do: :special_needs

  # (0038,0060) ServiceEpisodeID dvLO
  # VR values: ["LO"]
  def name("00380060"), do: :service_episode_id

  # (0038,0061) IssuerofServiceEpisodeID dvLO
  # VR values: ["LO"]
  def name("00380061"), do: :issuerof_service_episode_id

  # (0038,0062) ServiceEpisodeDescription dvLO
  # VR values: ["LO"]
  def name("00380062"), do: :service_episode_description

  # (0038,0064) IssuerofServiceEpisodeIDSequence dvSQ
  # VR values: ["SQ"]
  def name("00380064"), do: :issuerof_service_episode_id_sequence

  # (0038,0100) PertinentDocumentsSequence dvSQ
  # VR values: ["SQ"]
  def name("00380100"), do: :pertinent_documents_sequence

  # (0038,0300) CurrentPatientLocation dvLO
  # VR values: ["LO"]
  def name("00380300"), do: :current_patient_location

  # (0038,0400) Patient'sInstitutionResidence dvLO
  # VR values: ["LO"]
  def name("00380400"), do: :patients_institution_residence

  # (0038,0500) PatientState dvLO
  # VR values: ["LO"]
  def name("00380500"), do: :patient_state

  # (0038,0502) PatientClinicalTrialParticipationSequence dvSQ
  # VR values: ["SQ"]
  def name("00380502"), do: :patient_clinical_trial_participation_sequence

  # (0038,4000) VisitComments dvLT
  # VR values: ["LT"]
  def name("00384000"), do: :visit_comments

  # (0039,0080) Undocumented dvIS
  # VR values: ["IS"]
  def name("00390080"), do: :undocumented

  # (0039,0085) Undocumented dvDA
  # VR values: ["DA"]
  def name("00390085"), do: :undocumented

  # (0039,0090) Undocumented dvTM
  # VR values: ["TM"]
  def name("00390090"), do: :undocumented

  # (0039,0095) Undocumented dvLO
  # VR values: ["LO"]
  def name("00390095"), do: :undocumented

  # (0039,00AA) Undocumented dvCS
  # VR values: ["CS"]
  def name("003900AA"), do: :undocumented

  # (003A,0002) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("003A0002"), do: :undocumented

  # (003A,0004) WaveformOriginality dvCS
  # VR values: ["CS"]
  def name("003A0004"), do: :waveform_originality

  # (003A,0005) NumberofWaveformChannels dvUS
  # VR values: ["US"]
  def name("003A0005"), do: :numberof_waveform_channels

  # (003A,0010) NumberofWaveformSamples dvUL
  # VR values: ["UL"]
  def name("003A0010"), do: :numberof_waveform_samples

  # (003A,001A) SamplingFrequency dvDS
  # VR values: ["DS"]
  def name("003A001A"), do: :sampling_frequency

  # (003A,0020) MultiplexGroupLabel dvSH
  # VR values: ["SH"]
  def name("003A0020"), do: :multiplex_group_label

  # (003A,0103) Undocumented dvCS
  # VR values: ["CS"]
  def name("003A0103"), do: :undocumented

  # (003A,0122) Undocumented dvOB
  # VR values: ["OB"]
  def name("003A0122"), do: :undocumented

  # (003A,0200) ChannelDefinitionSequence dvSQ
  # VR values: ["SQ"]
  def name("003A0200"), do: :channel_definition_sequence

  # (003A,0202) WaveformChannelNumber dvIS
  # VR values: ["IS"]
  def name("003A0202"), do: :waveform_channel_number

  # (003A,0203) ChannelLabel dvSH
  # VR values: ["SH"]
  def name("003A0203"), do: :channel_label

  # (003A,0205) ChannelStatus dvCS
  # VR values: ["CS"]
  def name("003A0205"), do: :channel_status

  # (003A,0208) ChannelSourceSequence dvSQ
  # VR values: ["SQ"]
  def name("003A0208"), do: :channel_source_sequence

  # (003A,0209) ChannelSourceModifiersSequence dvSQ
  # VR values: ["SQ"]
  def name("003A0209"), do: :channel_source_modifiers_sequence

  # (003A,020A) SourceWaveformSequence dvSQ
  # VR values: ["SQ"]
  def name("003A020A"), do: :source_waveform_sequence

  # (003A,020B) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("003A020B"), do: :undocumented

  # (003A,020C) ChannelDerivationDescription dvLO
  # VR values: ["LO"]
  def name("003A020C"), do: :channel_derivation_description

  # (003A,0210) ChannelSensitivity dvDS
  # VR values: ["DS"]
  def name("003A0210"), do: :channel_sensitivity

  # (003A,0211) ChannelSensitivityUnitsSequence dvSQ
  # VR values: ["SQ"]
  def name("003A0211"), do: :channel_sensitivity_units_sequence

  # (003A,0212) ChannelSensitivityCorrectionFactor dvDS
  # VR values: ["DS"]
  def name("003A0212"), do: :channel_sensitivity_correction_factor

  # (003A,0213) ChannelBaseline dvDS
  # VR values: ["DS"]
  def name("003A0213"), do: :channel_baseline

  # (003A,0214) ChannelTimeSkew dvDS
  # VR values: ["DS"]
  def name("003A0214"), do: :channel_time_skew

  # (003A,0215) ChannelSampleSkew dvDS
  # VR values: ["DS"]
  def name("003A0215"), do: :channel_sample_skew

  # (003A,0216) Undocumented dvOB
  # VR values: ["OB"]
  def name("003A0216"), do: :undocumented

  # (003A,0217) Undocumented dvOB
  # VR values: ["OB"]
  def name("003A0217"), do: :undocumented

  # (003A,0218) ChannelOffset dvDS
  # VR values: ["DS"]
  def name("003A0218"), do: :channel_offset

  # (003A,021A) WaveformBitsStored dvUS
  # VR values: ["US"]
  def name("003A021A"), do: :waveform_bits_stored

  # (003A,0220) FilterLowFrequency dvDS
  # VR values: ["DS"]
  def name("003A0220"), do: :filter_low_frequency

  # (003A,0221) FilterHighFrequency dvDS
  # VR values: ["DS"]
  def name("003A0221"), do: :filter_high_frequency

  # (003A,0222) NotchFilterFrequency dvDS
  # VR values: ["DS"]
  def name("003A0222"), do: :notch_filter_frequency

  # (003A,0223) NotchFilterBandwidth dvDS
  # VR values: ["DS"]
  def name("003A0223"), do: :notch_filter_bandwidth

  # (003A,0230) WaveformDataDisplayScale dvFL
  # VR values: ["FL"]
  def name("003A0230"), do: :waveform_data_display_scale

  # (003A,0231) WaveformDisplayBackgroundCIELabValue dvUS
  # VR values: ["US"]
  def name("003A0231"), do: :waveform_display_background_cie_lab_value

  # (003A,0240) WaveformPresentationGroupSequence dvSQ
  # VR values: ["SQ"]
  def name("003A0240"), do: :waveform_presentation_group_sequence

  # (003A,0241) PresentationGroupNumber dvUS
  # VR values: ["US"]
  def name("003A0241"), do: :presentation_group_number

  # (003A,0242) ChannelDisplaySequence dvSQ
  # VR values: ["SQ"]
  def name("003A0242"), do: :channel_display_sequence

  # (003A,0244) ChannelRecommendedDisplayCIELabValue dvUS
  # VR values: ["US"]
  def name("003A0244"), do: :channel_recommended_display_cie_lab_value

  # (003A,0245) ChannelPosition dvFL
  # VR values: ["FL"]
  def name("003A0245"), do: :channel_position

  # (003A,0246) DisplayShadingFlag dvCS
  # VR values: ["CS"]
  def name("003A0246"), do: :display_shading_flag

  # (003A,0247) FractionalChannelDisplayScale dvFL
  # VR values: ["FL"]
  def name("003A0247"), do: :fractional_channel_display_scale

  # (003A,0248) AbsoluteChannelDisplayScale dvFL
  # VR values: ["FL"]
  def name("003A0248"), do: :absolute_channel_display_scale

  # (003A,0300) MultiplexedAudioChannelsDescriptionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("003A0300"), do: :multiplexed_audio_channels_description_code_sequence

  # (003A,0301) ChannelIdentificationCode dvIS
  # VR values: ["IS"]
  def name("003A0301"), do: :channel_identification_code

  # (003A,0302) ChannelMode dvCS
  # VR values: ["CS"]
  def name("003A0302"), do: :channel_mode

  # (003A,1000) Undocumented dvOB
  # VR values: ["OB"]
  def name("003A1000"), do: :undocumented

  # (0040,0000) ModalityWorklistGroupLength dvUL
  # VR values: ["UL"]
  def name("00400000"), do: :modality_worklist_group_length

  # (0040,0001) ScheduledStationAETitle dvAE
  # VR values: ["AE"]
  def name("00400001"), do: :scheduled_station_ae_title

  # (0040,0002) ScheduledProcedureStepStartDate dvDA
  # VR values: ["DA"]
  def name("00400002"), do: :scheduled_procedure_step_start_date

  # (0040,0003) ScheduledProcedureStepStartTime dvTM
  # VR values: ["TM"]
  def name("00400003"), do: :scheduled_procedure_step_start_time

  # (0040,0004) ScheduledProcedureStepEndDate dvDA
  # VR values: ["DA"]
  def name("00400004"), do: :scheduled_procedure_step_end_date

  # (0040,0005) ScheduledProcedureStepEndTime dvTM
  # VR values: ["TM"]
  def name("00400005"), do: :scheduled_procedure_step_end_time

  # (0040,0006) ScheduledPerformingPhysician'sName dvPN
  # VR values: ["PN"]
  def name("00400006"), do: :scheduled_performing_physicians_name

  # (0040,0007) ScheduledProcedureStepDescription dvLO
  # VR values: ["LO"]
  def name("00400007"), do: :scheduled_procedure_step_description

  # (0040,0008) ScheduledProtocolCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00400008"), do: :scheduled_protocol_code_sequence

  # (0040,0009) ScheduledProcedureStepID dvSH
  # VR values: ["SH"]
  def name("00400009"), do: :scheduled_procedure_step_id

  # (0040,000A) StageCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040000A"), do: :stage_code_sequence

  # (0040,000B) ScheduledPerformingPhysicianIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("0040000B"), do: :scheduled_performing_physician_identification_sequence

  # (0040,0010) ScheduledStationName dvSH
  # VR values: ["SH"]
  def name("00400010"), do: :scheduled_station_name

  # (0040,0011) ScheduledProcedureStepLocation dvSH
  # VR values: ["SH"]
  def name("00400011"), do: :scheduled_procedure_step_location

  # (0040,0012) Pre-Medication dvLO
  # VR values: ["LO"]
  def name("00400012"), do: :pre__medication

  # (0040,0020) ScheduledProcedureStepStatus dvCS
  # VR values: ["CS"]
  def name("00400020"), do: :scheduled_procedure_step_status

  # (0040,0026) OrderPlacerIdentifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00400026"), do: :order_placer_identifier_sequence

  # (0040,0027) OrderFillerIdentifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00400027"), do: :order_filler_identifier_sequence

  # (0040,0031) LocalNamespaceEntityID dvUT
  # VR values: ["UT"]
  def name("00400031"), do: :local_namespace_entity_id

  # (0040,0032) UniversalEntityID dvUT
  # VR values: ["UT"]
  def name("00400032"), do: :universal_entity_id

  # (0040,0033) UniversalEntityIDType dvCS
  # VR values: ["CS"]
  def name("00400033"), do: :universal_entity_id_type

  # (0040,0035) IdentifierTypeCode dvCS
  # VR values: ["CS"]
  def name("00400035"), do: :identifier_type_code

  # (0040,0036) AssigningFacilitySequence dvSQ
  # VR values: ["SQ"]
  def name("00400036"), do: :assigning_facility_sequence

  # (0040,0039) AssigningJurisdictionCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00400039"), do: :assigning_jurisdiction_code_sequence

  # (0040,003A) AssigningAgencyorDepartmentCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040003A"), do: :assigning_agencyor_department_code_sequence

  # (0040,0100) ScheduledProcedureStepSequence dvSQ
  # VR values: ["SQ"]
  def name("00400100"), do: :scheduled_procedure_step_sequence

  # (0040,0220) ReferencedNon_ImageCompositeSOPInstanceSequence dvSQ
  # VR values: ["SQ"]
  def name("00400220"), do: :referenced_non_image_composite_sop_instance_sequence

  # (0040,0241) PerformedStationAETitle dvAE
  # VR values: ["AE"]
  def name("00400241"), do: :performed_station_ae_title

  # (0040,0242) PerformedStationName dvSH
  # VR values: ["SH"]
  def name("00400242"), do: :performed_station_name

  # (0040,0243) PerformedLocation dvSH
  # VR values: ["SH"]
  def name("00400243"), do: :performed_location

  # (0040,0244) PerformedProcedureStepStartDate dvDA
  # VR values: ["DA"]
  def name("00400244"), do: :performed_procedure_step_start_date

  # (0040,0245) PerformedProcedureStepStartTime dvTM
  # VR values: ["TM"]
  def name("00400245"), do: :performed_procedure_step_start_time

  # (0040,0250) PerformedProcedureStepEndDate dvDA
  # VR values: ["DA"]
  def name("00400250"), do: :performed_procedure_step_end_date

  # (0040,0251) PerformedProcedureStepEndTime dvTM
  # VR values: ["TM"]
  def name("00400251"), do: :performed_procedure_step_end_time

  # (0040,0252) PerformedProcedureStepStatus dvCS
  # VR values: ["CS"]
  def name("00400252"), do: :performed_procedure_step_status

  # (0040,0253) PerformedProcedureStepID dvSH
  # VR values: ["SH"]
  def name("00400253"), do: :performed_procedure_step_id

  # (0040,0254) PerformedProcedureStepDescription dvLO
  # VR values: ["LO"]
  def name("00400254"), do: :performed_procedure_step_description

  # (0040,0255) PerformedProcedureTypeDescription dvLO
  # VR values: ["LO"]
  def name("00400255"), do: :performed_procedure_type_description

  # (0040,0260) PerformedProtocolCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00400260"), do: :performed_protocol_code_sequence

  # (0040,0261) PerformedProtocolType dvCS
  # VR values: ["CS"]
  def name("00400261"), do: :performed_protocol_type

  # (0040,0270) ScheduledStepAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("00400270"), do: :scheduled_step_attributes_sequence

  # (0040,0275) RequestAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("00400275"), do: :request_attributes_sequence

  # (0040,0280) CommentsonthePerformedProcedureStep dvST
  # VR values: ["ST"]
  def name("00400280"), do: :commentsonthe_performed_procedure_step

  # (0040,0281) PerformedProcedureStepDiscontinuationReasonCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00400281"), do: :performed_procedure_step_discontinuation_reason_code_sequence

  # (0040,0293) QuantitySequence dvSQ
  # VR values: ["SQ"]
  def name("00400293"), do: :quantity_sequence

  # (0040,0294) Quantity dvDS
  # VR values: ["DS"]
  def name("00400294"), do: :quantity

  # (0040,0295) MeasuringUnitsSequence dvSQ
  # VR values: ["SQ"]
  def name("00400295"), do: :measuring_units_sequence

  # (0040,0296) BillingItemSequence dvSQ
  # VR values: ["SQ"]
  def name("00400296"), do: :billing_item_sequence

  # (0040,0300) TotalTimeofFluoroscopy dvUS
  # VR values: ["US"]
  def name("00400300"), do: :total_timeof_fluoroscopy

  # (0040,0301) TotalNumberofExposures dvUS
  # VR values: ["US"]
  def name("00400301"), do: :total_numberof_exposures

  # (0040,0302) EntranceDose dvUS
  # VR values: ["US"]
  def name("00400302"), do: :entrance_dose

  # (0040,0303) ExposedArea dvUS
  # VR values: ["US"]
  def name("00400303"), do: :exposed_area

  # (0040,0306) DistanceSourcetoEntrance dvDS
  # VR values: ["DS"]
  def name("00400306"), do: :distance_sourceto_entrance

  # (0040,0307) DistanceSourcetoSupport dvDS
  # VR values: ["DS"]
  def name("00400307"), do: :distance_sourceto_support

  # (0040,030E) ExposureDoseSequence dvSQ
  # VR values: ["SQ"]
  def name("0040030E"), do: :exposure_dose_sequence

  # (0040,0310) CommentsonRadiationDose dvST
  # VR values: ["ST"]
  def name("00400310"), do: :commentson_radiation_dose

  # (0040,0312) X_RayOutput dvDS
  # VR values: ["DS"]
  def name("00400312"), do: :x_ray_output

  # (0040,0314) HalfValueLayer dvDS
  # VR values: ["DS"]
  def name("00400314"), do: :half_value_layer

  # (0040,0316) OrganDose dvDS
  # VR values: ["DS"]
  def name("00400316"), do: :organ_dose

  # (0040,0318) OrganExposed dvCS
  # VR values: ["CS"]
  def name("00400318"), do: :organ_exposed

  # (0040,0320) BillingProcedureStepSequence dvSQ
  # VR values: ["SQ"]
  def name("00400320"), do: :billing_procedure_step_sequence

  # (0040,0321) FilmConsumptionSequence dvSQ
  # VR values: ["SQ"]
  def name("00400321"), do: :film_consumption_sequence

  # (0040,0324) BillingSuppliesandDevicesSequence dvSQ
  # VR values: ["SQ"]
  def name("00400324"), do: :billing_suppliesand_devices_sequence

  # (0040,0330) ReferencedProcedureStepSequence dvSQ
  # VR values: ["SQ"]
  def name("00400330"), do: :referenced_procedure_step_sequence

  # (0040,0340) PerformedSeriesSequence dvSQ
  # VR values: ["SQ"]
  def name("00400340"), do: :performed_series_sequence

  # (0040,0400) CommentsontheScheduledProcedureStep dvLT
  # VR values: ["LT"]
  def name("00400400"), do: :commentsonthe_scheduled_procedure_step

  # (0040,0440) ProtocolContextSequence dvSQ
  # VR values: ["SQ"]
  def name("00400440"), do: :protocol_context_sequence

  # (0040,0441) ContentItemModifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00400441"), do: :content_item_modifier_sequence

  # (0040,0500) ScheduledSpecimenSequence dvSQ
  # VR values: ["SQ"]
  def name("00400500"), do: :scheduled_specimen_sequence

  # (0040,050A) SpecimenAccessionNumber dvLO
  # VR values: ["LO"]
  def name("0040050A"), do: :specimen_accession_number

  # (0040,0512) ContainerIdentifier dvLO
  # VR values: ["LO"]
  def name("00400512"), do: :container_identifier

  # (0040,0513) IssueroftheContainerIdentifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00400513"), do: :issuerofthe_container_identifier_sequence

  # (0040,0515) AlternateContainerIdentifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00400515"), do: :alternate_container_identifier_sequence

  # (0040,0518) ContainerTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00400518"), do: :container_type_code_sequence

  # (0040,051A) ContainerDescription dvLO
  # VR values: ["LO"]
  def name("0040051A"), do: :container_description

  # (0040,0520) ContainerComponentSequence dvSQ
  # VR values: ["SQ"]
  def name("00400520"), do: :container_component_sequence

  # (0040,0550) SpecimenSequence dvSQ
  # VR values: ["SQ"]
  def name("00400550"), do: :specimen_sequence

  # (0040,0551) SpecimenIdentifier dvLO
  # VR values: ["LO"]
  def name("00400551"), do: :specimen_identifier

  # (0040,0552) SpecimenDescriptionSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("00400552"), do: :specimen_description_sequence_trial

  # (0040,0553) SpecimenDescription(Trial) dvST
  # VR values: ["ST"]
  def name("00400553"), do: :specimen_description_trial

  # (0040,0554) SpecimenUID dvUI
  # VR values: ["UI"]
  def name("00400554"), do: :specimen_uid

  # (0040,0555) AcquisitionContextSequence dvSQ
  # VR values: ["SQ"]
  def name("00400555"), do: :acquisition_context_sequence

  # (0040,0556) AcquisitionContextDescription dvST
  # VR values: ["ST"]
  def name("00400556"), do: :acquisition_context_description

  # (0040,0560) SpecimenDescriptionSequence dvSQ
  # VR values: ["SQ"]
  def name("00400560"), do: :specimen_description_sequence

  # (0040,0562) IssueroftheSpecimenIdentifierSequence dvSQ
  # VR values: ["SQ"]
  def name("00400562"), do: :issuerofthe_specimen_identifier_sequence

  # (0040,059A) SpecimenTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040059A"), do: :specimen_type_code_sequence

  # (0040,0600) SpecimenShortDescription dvLO
  # VR values: ["LO"]
  def name("00400600"), do: :specimen_short_description

  # (0040,0602) SpecimenDetailedDescription dvUT
  # VR values: ["UT"]
  def name("00400602"), do: :specimen_detailed_description

  # (0040,0610) SpecimenPreparationSequence dvSQ
  # VR values: ["SQ"]
  def name("00400610"), do: :specimen_preparation_sequence

  # (0040,0612) SpecimenPreparationStepContentItemSequence dvSQ
  # VR values: ["SQ"]
  def name("00400612"), do: :specimen_preparation_step_content_item_sequence

  # (0040,0620) SpecimenLocalizationContentItemSequence dvSQ
  # VR values: ["SQ"]
  def name("00400620"), do: :specimen_localization_content_item_sequence

  # (0040,06FA) SlideIdentifier dvLO
  # VR values: ["LO"]
  def name("004006FA"), do: :slide_identifier

  # (0040,071A) ImageCenterPointCoordinatesSequence dvSQ
  # VR values: ["SQ"]
  def name("0040071A"), do: :image_center_point_coordinates_sequence

  # (0040,072A) XOffsetinSlideCoordinateSystem dvDS
  # VR values: ["DS"]
  def name("0040072A"), do: :x_offsetin_slide_coordinate_system

  # (0040,073A) YOffsetinSlideCoordinateSystem dvDS
  # VR values: ["DS"]
  def name("0040073A"), do: :y_offsetin_slide_coordinate_system

  # (0040,074A) ZOffsetinSlideCoordinateSystem dvDS
  # VR values: ["DS"]
  def name("0040074A"), do: :z_offsetin_slide_coordinate_system

  # (0040,08D8) PixelSpacingSequence dvSQ
  # VR values: ["SQ"]
  def name("004008D8"), do: :pixel_spacing_sequence

  # (0040,08DA) CoordinateSystemAxisCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("004008DA"), do: :coordinate_system_axis_code_sequence

  # (0040,08EA) MeasurementUnitsCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("004008EA"), do: :measurement_units_code_sequence

  # (0040,09F8) VitalStainCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("004009F8"), do: :vital_stain_code_sequence_trial

  # (0040,1001) RequestedProcedureID dvSH
  # VR values: ["SH"]
  def name("00401001"), do: :requested_procedure_id

  # (0040,1002) ReasonfortheRequestedProcedure dvLO
  # VR values: ["LO"]
  def name("00401002"), do: :reasonforthe_requested_procedure

  # (0040,1003) RequestedProcedurePriority dvSH
  # VR values: ["SH"]
  def name("00401003"), do: :requested_procedure_priority

  # (0040,1004) PatientTransportArrangements dvLO
  # VR values: ["LO"]
  def name("00401004"), do: :patient_transport_arrangements

  # (0040,1005) RequestedProcedureLocation dvLO
  # VR values: ["LO"]
  def name("00401005"), do: :requested_procedure_location

  # (0040,1006) PlacerOrderNumber/Procedure dvSH
  # VR values: ["SH"]
  def name("00401006"), do: :placer_order_number__procedure

  # (0040,1007) FillerOrderNumber/Procedure dvSH
  # VR values: ["SH"]
  def name("00401007"), do: :filler_order_number__procedure

  # (0040,1008) ConfidentialityCode dvLO
  # VR values: ["LO"]
  def name("00401008"), do: :confidentiality_code

  # (0040,1009) ReportingPriority dvSH
  # VR values: ["SH"]
  def name("00401009"), do: :reporting_priority

  # (0040,100A) ReasonforRequestedProcedureCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040100A"), do: :reasonfor_requested_procedure_code_sequence

  # (0040,1010) NamesofIntendedRecipientsofResults dvPN
  # VR values: ["PN"]
  def name("00401010"), do: :namesof_intended_recipientsof_results

  # (0040,1011) IntendedRecipientsofResultsIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00401011"), do: :intended_recipientsof_results_identification_sequence

  # (0040,1012) ReasonforPerformedProcedureCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00401012"), do: :reasonfor_performed_procedure_code_sequence

  # (0040,1060) RequestedProcedureDescription(Trial) dvLO
  # VR values: ["LO"]
  def name("00401060"), do: :requested_procedure_description_trial

  # (0040,1101) PersonIdentificationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00401101"), do: :person_identification_code_sequence

  # (0040,1102) Person'sAddress dvST
  # VR values: ["ST"]
  def name("00401102"), do: :persons_address

  # (0040,1103) Person'sTelephoneNumbers dvLO
  # VR values: ["LO"]
  def name("00401103"), do: :persons_telephone_numbers

  # (0040,1400) RequestedProcedureComments dvLT
  # VR values: ["LT"]
  def name("00401400"), do: :requested_procedure_comments

  # (0040,2001) ReasonfortheImagingServiceRequest dvLO
  # VR values: ["LO"]
  def name("00402001"), do: :reasonforthe_imaging_service_request

  # (0040,2004) IssueDateofImagingServiceRequest dvDA
  # VR values: ["DA"]
  def name("00402004"), do: :issue_dateof_imaging_service_request

  # (0040,2005) IssueTimeofImagingServiceRequest dvTM
  # VR values: ["TM"]
  def name("00402005"), do: :issue_timeof_imaging_service_request

  # (0040,2006) PlacerOrderNumber/ImagingServiceRequest(Retired) dvSH
  # VR values: ["SH"]
  def name("00402006"), do: :placer_order_number__imaging_service_request_retired

  # (0040,2007) FillerOrderNumber/ImagingServiceRequest(Retired) dvSH
  # VR values: ["SH"]
  def name("00402007"), do: :filler_order_number__imaging_service_request_retired

  # (0040,2008) OrderEnteredBy dvPN
  # VR values: ["PN"]
  def name("00402008"), do: :order_entered_by

  # (0040,2009) OrderEnterer'sLocation dvSH
  # VR values: ["SH"]
  def name("00402009"), do: :order_enterers_location

  # (0040,2010) OrderCallbackPhoneNumber dvSH
  # VR values: ["SH"]
  def name("00402010"), do: :order_callback_phone_number

  # (0040,2016) PlacerOrderNumber/ImagingServiceRequest dvLO
  # VR values: ["LO"]
  def name("00402016"), do: :placer_order_number__imaging_service_request

  # (0040,2017) FillerOrderNumber/ImagingServiceRequest dvLO
  # VR values: ["LO"]
  def name("00402017"), do: :filler_order_number__imaging_service_request

  # (0040,2400) ImagingServiceRequestComments dvLT
  # VR values: ["LT"]
  def name("00402400"), do: :imaging_service_request_comments

  # (0040,3001) ConfidentialityConstraintonPatientDataDescription dvLO
  # VR values: ["LO"]
  def name("00403001"), do: :confidentiality_constrainton_patient_data_description

  # (0040,4001) GeneralPurposeScheduledProcedureStepStatus dvCS
  # VR values: ["CS"]
  def name("00404001"), do: :general_purpose_scheduled_procedure_step_status

  # (0040,4002) GeneralPurposePerformedProcedureStepStatus dvCS
  # VR values: ["CS"]
  def name("00404002"), do: :general_purpose_performed_procedure_step_status

  # (0040,4003) GeneralPurposeScheduledProcedureStepPriority dvCS
  # VR values: ["CS"]
  def name("00404003"), do: :general_purpose_scheduled_procedure_step_priority

  # (0040,4004) ScheduledProcessingApplicationsCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404004"), do: :scheduled_processing_applications_code_sequence

  # (0040,4005) ScheduledProcedureStepStartDate/Time dvDT
  # VR values: ["DT"]
  def name("00404005"), do: :scheduled_procedure_step_start_date__time

  # (0040,4006) MultipleCopiesFlag dvCS
  # VR values: ["CS"]
  def name("00404006"), do: :multiple_copies_flag

  # (0040,4007) PerformedProcessingApplicationsCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404007"), do: :performed_processing_applications_code_sequence

  # (0040,4009) HumanPerformerCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404009"), do: :human_performer_code_sequence

  # (0040,4010) ScheduledProcedureStepModificationDate/Time dvDT
  # VR values: ["DT"]
  def name("00404010"), do: :scheduled_procedure_step_modification_date__time

  # (0040,4011) ExpectedCompletionDate/Time dvDT
  # VR values: ["DT"]
  def name("00404011"), do: :expected_completion_date__time

  # (0040,4015) ResultingGeneralPurposePerformedProcedureStepsSequence dvSQ
  # VR values: ["SQ"]
  def name("00404015"), do: :resulting_general_purpose_performed_procedure_steps_sequence

  # (0040,4016) ReferencedGeneralPurposeScheduledProcedureStepSequence dvSQ
  # VR values: ["SQ"]
  def name("00404016"), do: :referenced_general_purpose_scheduled_procedure_step_sequence

  # (0040,4018) ScheduledWorkitemCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404018"), do: :scheduled_workitem_code_sequence

  # (0040,4019) PerformedWorkitemCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404019"), do: :performed_workitem_code_sequence

  # (0040,4020) InputAvailabilityFlag dvCS
  # VR values: ["CS"]
  def name("00404020"), do: :input_availability_flag

  # (0040,4021) InputInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00404021"), do: :input_information_sequence

  # (0040,4022) RelevantInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00404022"), do: :relevant_information_sequence

  # (0040,4023) ReferencedGeneralPurposeScheduledProcedureStepTransactionUID dvUI
  # VR values: ["UI"]
  def name("00404023"), do: :referenced_general_purpose_scheduled_procedure_step_transaction_uid

  # (0040,4025) ScheduledStationNameCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404025"), do: :scheduled_station_name_code_sequence

  # (0040,4026) ScheduledStationClassCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404026"), do: :scheduled_station_class_code_sequence

  # (0040,4027) ScheduledStationGeographicLocationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404027"), do: :scheduled_station_geographic_location_code_sequence

  # (0040,4028) PerformedStationNameCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404028"), do: :performed_station_name_code_sequence

  # (0040,4029) PerformedStationClassCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404029"), do: :performed_station_class_code_sequence

  # (0040,4030) PerformedStationGeographicLocationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404030"), do: :performed_station_geographic_location_code_sequence

  # (0040,4031) RequestedSubsequentWorkitemCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404031"), do: :requested_subsequent_workitem_code_sequence

  # (0040,4032) Non_DICOMOutputCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00404032"), do: :non_dicom_output_code_sequence

  # (0040,4033) OutputInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00404033"), do: :output_information_sequence

  # (0040,4034) ScheduledHumanPerformersSequence dvSQ
  # VR values: ["SQ"]
  def name("00404034"), do: :scheduled_human_performers_sequence

  # (0040,4035) ActualHumanPerformersSequence dvSQ
  # VR values: ["SQ"]
  def name("00404035"), do: :actual_human_performers_sequence

  # (0040,4036) HumanPerformer'sOrganization dvLO
  # VR values: ["LO"]
  def name("00404036"), do: :human_performers_organization

  # (0040,4037) HumanPerformer'sName dvPN
  # VR values: ["PN"]
  def name("00404037"), do: :human_performers_name

  # (0040,4040) RawDataHandling dvCS
  # VR values: ["CS"]
  def name("00404040"), do: :raw_data_handling

  # (0040,4041) InputReadinessState dvCS
  # VR values: ["CS"]
  def name("00404041"), do: :input_readiness_state

  # (0040,4050) PerformedProcedureStepStartDate/Time dvDT
  # VR values: ["DT"]
  def name("00404050"), do: :performed_procedure_step_start_date__time

  # (0040,4051) PerformedProcedureStepEndDate/Time dvDT
  # VR values: ["DT"]
  def name("00404051"), do: :performed_procedure_step_end_date__time

  # (0040,4052) ProcedureStepCancellationDate/Time dvDT
  # VR values: ["DT"]
  def name("00404052"), do: :procedure_step_cancellation_date__time

  # (0040,8302) EntranceDoseinmGy dvDS
  # VR values: ["DS"]
  def name("00408302"), do: :entrance_doseinm_gy

  # (0040,9094) ReferencedImageRealWorldValueMappingSequence dvSQ
  # VR values: ["SQ"]
  def name("00409094"), do: :referenced_image_real_world_value_mapping_sequence

  # (0040,9096) RealWorldValueMappingSequence dvSQ
  # VR values: ["SQ"]
  def name("00409096"), do: :real_world_value_mapping_sequence

  # (0040,9098) PixelValueMappingCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00409098"), do: :pixel_value_mapping_code_sequence

  # (0040,9210) LUTLabel dvSH
  # VR values: ["SH"]
  def name("00409210"), do: :lut_label

  # (0040,9211) RealWorldValueLastValueMapped dvUSorSS
  # VR values: ["US", "SS"]
  def name("00409211"), do: :real_world_value_last_value_mapped

  # (0040,9212) RealWorldValueLUTData dvFD
  # VR values: ["FD"]
  def name("00409212"), do: :real_world_value_lut_data

  # (0040,9216) RealWorldValueFirstValueMapped dvUSorSS
  # VR values: ["US", "SS"]
  def name("00409216"), do: :real_world_value_first_value_mapped

  # (0040,9224) RealWorldValueIntercept dvFD
  # VR values: ["FD"]
  def name("00409224"), do: :real_world_value_intercept

  # (0040,9225) RealWorldValueSlope dvFD
  # VR values: ["FD"]
  def name("00409225"), do: :real_world_value_slope

  # (0040,A007) FindingsFlag(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A007"), do: :findings_flag_trial

  # (0040,A010) RelationshipType dvCS
  # VR values: ["CS"]
  def name("0040A010"), do: :relationship_type

  # (0040,A020) FindingsSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A020"), do: :findings_sequence_trial

  # (0040,A021) FindingsGroupUID(Trial) dvUI
  # VR values: ["UI"]
  def name("0040A021"), do: :findings_group_uid_trial

  # (0040,A022) ReferencedFindingsGroupUID(Trial) dvUI
  # VR values: ["UI"]
  def name("0040A022"), do: :referenced_findings_group_uid_trial

  # (0040,A023) FindingsGroupRecordingDate(Trial) dvDA
  # VR values: ["DA"]
  def name("0040A023"), do: :findings_group_recording_date_trial

  # (0040,A024) FindingsGroupRecordingTime(Trial) dvTM
  # VR values: ["TM"]
  def name("0040A024"), do: :findings_group_recording_time_trial

  # (0040,A026) FindingsSourceCategoryCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A026"), do: :findings_source_category_code_sequence_trial

  # (0040,A027) VerifyingOrganization dvLO
  # VR values: ["LO"]
  def name("0040A027"), do: :verifying_organization

  # (0040,A028) DocumentingOrganizationIdentifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A028"), do: :documenting_organization_identifier_code_sequence_trial

  # (0040,A030) VerificationDate/Time dvDT
  # VR values: ["DT"]
  def name("0040A030"), do: :verification_date__time

  # (0040,A032) ObservationDate/Time dvDT
  # VR values: ["DT"]
  def name("0040A032"), do: :observation_date__time

  # (0040,A040) ValueType dvCS
  # VR values: ["CS"]
  def name("0040A040"), do: :value_type

  # (0040,A043) ConceptNameCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A043"), do: :concept_name_code_sequence

  # (0040,A047) MeasurementPrecisionDescription(Trial) dvLO
  # VR values: ["LO"]
  def name("0040A047"), do: :measurement_precision_description_trial

  # (0040,A050) ContinuityofContent dvCS
  # VR values: ["CS"]
  def name("0040A050"), do: :continuityof_content

  # (0040,A057) UrgencyorPriorityAlerts(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A057"), do: :urgencyor_priority_alerts_trial

  # (0040,A060) SequencingIndicator(Trial) dvLO
  # VR values: ["LO"]
  def name("0040A060"), do: :sequencing_indicator_trial

  # (0040,A066) DocumentIdentifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A066"), do: :document_identifier_code_sequence_trial

  # (0040,A067) DocumentAuthor(Trial) dvPN
  # VR values: ["PN"]
  def name("0040A067"), do: :document_author_trial

  # (0040,A068) DocumentAuthorIdentifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A068"), do: :document_author_identifier_code_sequence_trial

  # (0040,A070) IdentifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A070"), do: :identifier_code_sequence_trial

  # (0040,A073) VerifyingObserverSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A073"), do: :verifying_observer_sequence

  # (0040,A074) ObjectBinaryIdentifier(Trial) dvOB
  # VR values: ["OB"]
  def name("0040A074"), do: :object_binary_identifier_trial

  # (0040,A075) VerifyingObserverName dvPN
  # VR values: ["PN"]
  def name("0040A075"), do: :verifying_observer_name

  # (0040,A076) DocumentingObserverIdentifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A076"), do: :documenting_observer_identifier_code_sequence_trial

  # (0040,A078) AuthorObserverSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A078"), do: :author_observer_sequence

  # (0040,A07A) ParticipantSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A07A"), do: :participant_sequence

  # (0040,A07C) CustodialOrganizationSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A07C"), do: :custodial_organization_sequence

  # (0040,A080) ParticipationType dvCS
  # VR values: ["CS"]
  def name("0040A080"), do: :participation_type

  # (0040,A082) ParticipationDate/Time dvDT
  # VR values: ["DT"]
  def name("0040A082"), do: :participation_date__time

  # (0040,A084) ObserverType dvCS
  # VR values: ["CS"]
  def name("0040A084"), do: :observer_type

  # (0040,A085) ProcedureIdentifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A085"), do: :procedure_identifier_code_sequence_trial

  # (0040,A088) VerifyingObserverIdentificationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A088"), do: :verifying_observer_identification_code_sequence

  # (0040,A089) ObjectDirectoryBinaryIdentifier(Trial) dvOB
  # VR values: ["OB"]
  def name("0040A089"), do: :object_directory_binary_identifier_trial

  # (0040,A090) EquivalentCDADocumentSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A090"), do: :equivalent_cda_document_sequence

  # (0040,A0A0) Undocumented dvCS
  # VR values: ["CS"]
  def name("0040A0A0"), do: :undocumented

  # (0040,A0B0) ReferencedWaveformChannels dvUS
  # VR values: ["US"]
  def name("0040A0B0"), do: :referenced_waveform_channels

  # (0040,A110) DateofDocumentorVerbalTransaction(Trial) dvDA
  # VR values: ["DA"]
  def name("0040A110"), do: :dateof_documentor_verbal_transaction_trial

  # (0040,A112) TimeofDocumentCreationorVerbalTransaction(Trial) dvTM
  # VR values: ["TM"]
  def name("0040A112"), do: :timeof_document_creationor_verbal_transaction_trial

  # (0040,A120) Date/Time dvDT
  # VR values: ["DT"]
  def name("0040A120"), do: :date__time

  # (0040,A121) Date dvDA
  # VR values: ["DA"]
  def name("0040A121"), do: :date

  # (0040,A122) Time dvTM
  # VR values: ["TM"]
  def name("0040A122"), do: :time

  # (0040,A123) PersonName dvPN
  # VR values: ["PN"]
  def name("0040A123"), do: :person_name

  # (0040,A124) UID dvUI
  # VR values: ["UI"]
  def name("0040A124"), do: :uid

  # (0040,A125) ReportStatusID(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A125"), do: :report_status_id_trial

  # (0040,A130) TemporalRangeType dvCS
  # VR values: ["CS"]
  def name("0040A130"), do: :temporal_range_type

  # (0040,A132) ReferencedSamplePositions dvUL
  # VR values: ["UL"]
  def name("0040A132"), do: :referenced_sample_positions

  # (0040,A136) ReferencedFrameNumbers dvUS
  # VR values: ["US"]
  def name("0040A136"), do: :referenced_frame_numbers

  # (0040,A138) ReferencedTimeOffsets dvDS
  # VR values: ["DS"]
  def name("0040A138"), do: :referenced_time_offsets

  # (0040,A13A) ReferencedDate/Time dvDT
  # VR values: ["DT"]
  def name("0040A13A"), do: :referenced_date__time

  # (0040,A160) TextValue dvUT
  # VR values: ["UT"]
  def name("0040A160"), do: :text_value

  # (0040,A161) FloatingPointValue dvFD
  # VR values: ["FD"]
  def name("0040A161"), do: :floating_point_value

  # (0040,A162) RationalNumeratorValue dvSL
  # VR values: ["SL"]
  def name("0040A162"), do: :rational_numerator_value

  # (0040,A163) RationalDenominatorValue dvUL
  # VR values: ["UL"]
  def name("0040A163"), do: :rational_denominator_value

  # (0040,A167) ObservationCategoryCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A167"), do: :observation_category_code_sequence_trial

  # (0040,A168) ConceptCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A168"), do: :concept_code_sequence

  # (0040,A16A) BibliographicCitation(Trial) dvST
  # VR values: ["ST"]
  def name("0040A16A"), do: :bibliographic_citation_trial

  # (0040,A170) PurposeofReferenceCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A170"), do: :purposeof_reference_code_sequence

  # (0040,A171) ObservationUID dvUI
  # VR values: ["UI"]
  def name("0040A171"), do: :observation_uid

  # (0040,A172) ReferencedObservationUID(Trial) dvUI
  # VR values: ["UI"]
  def name("0040A172"), do: :referenced_observation_uid_trial

  # (0040,A173) ReferencedObservationClass(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A173"), do: :referenced_observation_class_trial

  # (0040,A174) ReferencedObjectObservationClass(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A174"), do: :referenced_object_observation_class_trial

  # (0040,A180) AnnotationGroupNumber dvUS
  # VR values: ["US"]
  def name("0040A180"), do: :annotation_group_number

  # (0040,A192) ObservationDate(Trial) dvDA
  # VR values: ["DA"]
  def name("0040A192"), do: :observation_date_trial

  # (0040,A193) ObservationTime(Trial) dvTM
  # VR values: ["TM"]
  def name("0040A193"), do: :observation_time_trial

  # (0040,A194) MeasurementAutomation(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A194"), do: :measurement_automation_trial

  # (0040,A195) ModifierCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A195"), do: :modifier_code_sequence

  # (0040,A224) IdentificationDescription(Trial) dvST
  # VR values: ["ST"]
  def name("0040A224"), do: :identification_description_trial

  # (0040,A290) CoordinatesSetGeometricType(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A290"), do: :coordinates_set_geometric_type_trial

  # (0040,A296) AlgorithmCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A296"), do: :algorithm_code_sequence_trial

  # (0040,A297) AlgorithmDescription(Trial) dvST
  # VR values: ["ST"]
  def name("0040A297"), do: :algorithm_description_trial

  # (0040,A29A) PixelCoordinatesSet(Trial) dvSL
  # VR values: ["SL"]
  def name("0040A29A"), do: :pixel_coordinates_set_trial

  # (0040,A300) MeasuredValueSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A300"), do: :measured_value_sequence

  # (0040,A301) NumericValueQualifierCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A301"), do: :numeric_value_qualifier_code_sequence

  # (0040,A307) CurrentObserver(Trial) dvPN
  # VR values: ["PN"]
  def name("0040A307"), do: :current_observer_trial

  # (0040,A30A) NumericValue dvDS
  # VR values: ["DS"]
  def name("0040A30A"), do: :numeric_value

  # (0040,A313) ReferencedAccessionSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A313"), do: :referenced_accession_sequence_trial

  # (0040,A33A) ReportStatusComment(Trial) dvST
  # VR values: ["ST"]
  def name("0040A33A"), do: :report_status_comment_trial

  # (0040,A340) ProcedureContextSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A340"), do: :procedure_context_sequence_trial

  # (0040,A352) VerbalSource(Trial) dvPN
  # VR values: ["PN"]
  def name("0040A352"), do: :verbal_source_trial

  # (0040,A353) Address(Trial) dvST
  # VR values: ["ST"]
  def name("0040A353"), do: :address_trial

  # (0040,A354) TelephoneNumber(Trial) dvLO
  # VR values: ["LO"]
  def name("0040A354"), do: :telephone_number_trial

  # (0040,A358) VerbalSourceIdentifierCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A358"), do: :verbal_source_identifier_code_sequence_trial

  # (0040,A360) PredecessorDocumentsSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A360"), do: :predecessor_documents_sequence

  # (0040,A370) ReferencedRequestSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A370"), do: :referenced_request_sequence

  # (0040,A372) PerformedProcedureCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A372"), do: :performed_procedure_code_sequence

  # (0040,A375) CurrentRequestedProcedureEvidenceSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A375"), do: :current_requested_procedure_evidence_sequence

  # (0040,A380) ReportDetailSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A380"), do: :report_detail_sequence_trial

  # (0040,A385) PertinentOtherEvidenceSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A385"), do: :pertinent_other_evidence_sequence

  # (0040,A390) HL7StructuredDocumentReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A390"), do: :h_l7_structured_document_reference_sequence

  # (0040,A402) ObservationSubjectUID(Trial) dvUI
  # VR values: ["UI"]
  def name("0040A402"), do: :observation_subject_uid_trial

  # (0040,A403) ObservationSubjectClass(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A403"), do: :observation_subject_class_trial

  # (0040,A404) ObservationSubjectTypeCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A404"), do: :observation_subject_type_code_sequence_trial

  # (0040,A491) CompletionFlag dvCS
  # VR values: ["CS"]
  def name("0040A491"), do: :completion_flag

  # (0040,A492) CompletionFlagDescription dvLO
  # VR values: ["LO"]
  def name("0040A492"), do: :completion_flag_description

  # (0040,A493) VerificationFlag dvCS
  # VR values: ["CS"]
  def name("0040A493"), do: :verification_flag

  # (0040,A494) ArchiveRequested dvCS
  # VR values: ["CS"]
  def name("0040A494"), do: :archive_requested

  # (0040,A496) PreliminaryFlag dvCS
  # VR values: ["CS"]
  def name("0040A496"), do: :preliminary_flag

  # (0040,A504) ContentTemplateSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A504"), do: :content_template_sequence

  # (0040,A525) IdenticalDocumentsSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A525"), do: :identical_documents_sequence

  # (0040,A600) ObservationSubjectContextFlag(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A600"), do: :observation_subject_context_flag_trial

  # (0040,A601) ObserverContextFlag(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A601"), do: :observer_context_flag_trial

  # (0040,A603) ProcedureContextFlag(Trial) dvCS
  # VR values: ["CS"]
  def name("0040A603"), do: :procedure_context_flag_trial

  # (0040,A730) ContentSequence dvSQ
  # VR values: ["SQ"]
  def name("0040A730"), do: :content_sequence

  # (0040,A731) RelationshipSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A731"), do: :relationship_sequence_trial

  # (0040,A732) RelationshipTypeCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A732"), do: :relationship_type_code_sequence_trial

  # (0040,A744) LanguageCodeSequence(Trial) dvSQ
  # VR values: ["SQ"]
  def name("0040A744"), do: :language_code_sequence_trial

  # (0040,A992) UniformResourceLocator(Trial) dvST
  # VR values: ["ST"]
  def name("0040A992"), do: :uniform_resource_locator_trial

  # (0040,B020) WaveformAnnotationSequence dvSQ
  # VR values: ["SQ"]
  def name("0040B020"), do: :waveform_annotation_sequence

  # (0040,DB00) TemplateIdentifier dvCS
  # VR values: ["CS"]
  def name("0040DB00"), do: :template_identifier

  # (0040,DB06) TemplateVersion dvDT
  # VR values: ["DT"]
  def name("0040DB06"), do: :template_version

  # (0040,DB07) TemplateLocalVersion dvDT
  # VR values: ["DT"]
  def name("0040DB07"), do: :template_local_version

  # (0040,DB0B) TemplateExtensionFlag dvCS
  # VR values: ["CS"]
  def name("0040DB0B"), do: :template_extension_flag

  # (0040,DB0C) TemplateExtensionOrganizationUID dvUI
  # VR values: ["UI"]
  def name("0040DB0C"), do: :template_extension_organization_uid

  # (0040,DB0D) TemplateExtensionCreatorUID dvUI
  # VR values: ["UI"]
  def name("0040DB0D"), do: :template_extension_creator_uid

  # (0040,DB73) ReferencedContentItemIdentifier dvUL
  # VR values: ["UL"]
  def name("0040DB73"), do: :referenced_content_item_identifier

  # (0040,E001) HL7InstanceIdentifier dvST
  # VR values: ["ST"]
  def name("0040E001"), do: :h_l7_instance_identifier

  # (0040,E004) HL7DocumentEffectiveTime dvDT
  # VR values: ["DT"]
  def name("0040E004"), do: :h_l7_document_effective_time

  # (0040,E006) HL7DocumentTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040E006"), do: :h_l7_document_type_code_sequence

  # (0040,E008) DocumentClassCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0040E008"), do: :document_class_code_sequence

  # (0040,E010) RetrieveURI dvUR
  # VR values: ["UR"]
  def name("0040E010"), do: :retrieve_uri

  # (0040,E011) RetrieveLocationUID dvUI
  # VR values: ["UI"]
  def name("0040E011"), do: :retrieve_location_uid

  # (0040,E020) TypeofInstances dvCS
  # VR values: ["CS"]
  def name("0040E020"), do: :typeof_instances

  # (0040,E021) DICOMRetrievalSequence dvSQ
  # VR values: ["SQ"]
  def name("0040E021"), do: :dicom_retrieval_sequence

  # (0040,E022) DICOMMediaRetrievalSequence dvSQ
  # VR values: ["SQ"]
  def name("0040E022"), do: :dicom_media_retrieval_sequence

  # (0040,E023) WADORetrievalSequence dvSQ
  # VR values: ["SQ"]
  def name("0040E023"), do: :wado_retrieval_sequence

  # (0040,E024) XDSRetrievalSequence dvSQ
  # VR values: ["SQ"]
  def name("0040E024"), do: :xds_retrieval_sequence

  # (0040,E030) RepositoryUniqueID dvUI
  # VR values: ["UI"]
  def name("0040E030"), do: :repository_unique_id

  # (0040,E031) HomeCommunityID dvUI
  # VR values: ["UI"]
  def name("0040E031"), do: :home_community_id

  # (0041,0000) Undocumented dvLT
  # VR values: ["LT"]
  def name("00410000"), do: :undocumented

  # (0041,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00410010"), do: :undocumented

  # (0041,0011) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00410011"), do: :undocumented

  # (0041,0012) Undocumented dvUL
  # VR values: ["UL"]
  def name("00410012"), do: :undocumented

  # (0041,0013) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00410013"), do: :undocumented

  # (0041,0014) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00410014"), do: :undocumented

  # (0041,0015) Undocumented dvUS
  # VR values: ["US"]
  def name("00410015"), do: :undocumented

  # (0041,0020) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00410020"), do: :undocumented

  # (0041,0021) Undocumented dvUI
  # VR values: ["UI"]
  def name("00410021"), do: :undocumented

  # (0041,0022) Undocumented dvUI
  # VR values: ["UI"]
  def name("00410022"), do: :undocumented

  # (0041,0030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00410030"), do: :undocumented

  # (0041,0031) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00410031"), do: :undocumented

  # (0041,0032) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00410032"), do: :undocumented

  # (0041,0034) Undocumented dvDA
  # VR values: ["DA"]
  def name("00410034"), do: :undocumented

  # (0041,0036) Undocumented dvTM
  # VR values: ["TM"]
  def name("00410036"), do: :undocumented

  # (0041,0040) Undocumented dvLT
  # VR values: ["LT"]
  def name("00410040"), do: :undocumented

  # (0041,0041) Undocumented dvUI
  # VR values: ["UI"]
  def name("00410041"), do: :undocumented

  # (0041,0042) Undocumented dvUI
  # VR values: ["UI"]
  def name("00410042"), do: :undocumented

  # (0041,0050) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00410050"), do: :undocumented

  # (0041,0060) Undocumented dvUL
  # VR values: ["UL"]
  def name("00410060"), do: :undocumented

  # (0041,0062) Undocumented dvUL
  # VR values: ["UL"]
  def name("00410062"), do: :undocumented

  # (0041,00A0) Undocumented dvLT
  # VR values: ["LT"]
  def name("004100A0"), do: :undocumented

  # (0041,00A1) Undocumented dvUS
  # VR values: ["US"]
  def name("004100A1"), do: :undocumented

  # (0041,00A2) Undocumented dvLT
  # VR values: ["LT"]
  def name("004100A2"), do: :undocumented

  # (0041,00A3) Undocumented dvUL
  # VR values: ["UL"]
  def name("004100A3"), do: :undocumented

  # (0041,00B0) Undocumented dvLT
  # VR values: ["LT"]
  def name("004100B0"), do: :undocumented

  # (0041,00B1) Undocumented dvUS
  # VR values: ["US"]
  def name("004100B1"), do: :undocumented

  # (0041,00B2) Undocumented dvUL
  # VR values: ["UL"]
  def name("004100B2"), do: :undocumented

  # (0041,00B3) Undocumented dvUL
  # VR values: ["UL"]
  def name("004100B3"), do: :undocumented

  # (0042,0010) DocumentTitle dvST
  # VR values: ["ST"]
  def name("00420010"), do: :document_title

  # (0042,0011) EncapsulatedDocument dvOB
  # VR values: ["OB"]
  def name("00420011"), do: :encapsulated_document

  # (0042,0012) MIMETypeofEncapsulatedDocument dvLO
  # VR values: ["LO"]
  def name("00420012"), do: :mime_typeof_encapsulated_document

  # (0042,0013) SourceInstanceSequence dvSQ
  # VR values: ["SQ"]
  def name("00420013"), do: :source_instance_sequence

  # (0042,0014) ListofMIMETypes dvLO
  # VR values: ["LO"]
  def name("00420014"), do: :listof_mime_types

  # (0043,0001) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430001"), do: :undocumented

  # (0043,0002) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430002"), do: :undocumented

  # (0043,0003) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430003"), do: :undocumented

  # (0043,0004) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430004"), do: :undocumented

  # (0043,0005) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430005"), do: :undocumented

  # (0043,0006) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430006"), do: :undocumented

  # (0043,0007) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430007"), do: :undocumented

  # (0043,0008) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430008"), do: :undocumented

  # (0043,0009) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430009"), do: :undocumented

  # (0043,000A) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043000A"), do: :undocumented

  # (0043,000B) Undocumented dvDS
  # VR values: ["DS"]
  def name("0043000B"), do: :undocumented

  # (0043,000C) Undocumented dvDS
  # VR values: ["DS"]
  def name("0043000C"), do: :undocumented

  # (0043,000D) Undocumented dvDS
  # VR values: ["DS"]
  def name("0043000D"), do: :undocumented

  # (0043,000E) Undocumented dvDS
  # VR values: ["DS"]
  def name("0043000E"), do: :undocumented

  # (0043,000F) Undocumented dvDS
  # VR values: ["DS"]
  def name("0043000F"), do: :undocumented

  # (0043,0010) Undocumented dvUS
  # VR values: ["US"]
  def name("00430010"), do: :undocumented

  # (0043,0011) Undocumented dvUS
  # VR values: ["US"]
  def name("00430011"), do: :undocumented

  # (0043,0012) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430012"), do: :undocumented

  # (0043,0013) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430013"), do: :undocumented

  # (0043,0014) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430014"), do: :undocumented

  # (0043,0015) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430015"), do: :undocumented

  # (0043,0016) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430016"), do: :undocumented

  # (0043,0017) Undocumented dvDS
  # VR values: ["DS"]
  def name("00430017"), do: :undocumented

  # (0043,0018) Undocumented dvDS
  # VR values: ["DS"]
  def name("00430018"), do: :undocumented

  # (0043,0019) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430019"), do: :undocumented

  # (0043,001A) Undocumented dvSL
  # VR values: ["SL"]
  def name("0043001A"), do: :undocumented

  # (0043,001B) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043001B"), do: :undocumented

  # (0043,001C) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043001C"), do: :undocumented

  # (0043,001D) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043001D"), do: :undocumented

  # (0043,001E) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("0043001E"), do: :undocumented

  # (0043,001F) Undocumented dvSL
  # VR values: ["SL"]
  def name("0043001F"), do: :undocumented

  # (0043,0020) Undocumented dvDS
  # VR values: ["DS"]
  def name("00430020"), do: :undocumented

  # (0043,0021) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430021"), do: :undocumented

  # (0043,0025) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430025"), do: :undocumented

  # (0043,0026) Undocumented dvUS
  # VR values: ["US"]
  def name("00430026"), do: :undocumented

  # (0043,0027) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00430027"), do: :undocumented

  # (0043,0028) Undocumented dvOB
  # VR values: ["OB"]
  def name("00430028"), do: :undocumented

  # (0043,0029) Undocumented dvOB
  # VR values: ["OB"]
  def name("00430029"), do: :undocumented

  # (0043,002A) Undocumented dvOB
  # VR values: ["OB"]
  def name("0043002A"), do: :undocumented

  # (0043,002B) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043002B"), do: :undocumented

  # (0043,002C) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043002C"), do: :undocumented

  # (0043,002D) Undocumented dvSH
  # VR values: ["SH"]
  def name("0043002D"), do: :undocumented

  # (0043,002E) Undocumented dvSH
  # VR values: ["SH"]
  def name("0043002E"), do: :undocumented

  # (0043,002F) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043002F"), do: :undocumented

  # (0043,0030) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430030"), do: :undocumented

  # (0043,0031) Undocumented dvDS
  # VR values: ["DS"]
  def name("00430031"), do: :undocumented

  # (0043,0032) Undocumented dvSS
  # VR values: ["SS"]
  def name("00430032"), do: :undocumented

  # (0043,0033) Undocumented dvFL
  # VR values: ["FL"]
  def name("00430033"), do: :undocumented

  # (0043,0034) Undocumented dvIS
  # VR values: ["IS"]
  def name("00430034"), do: :undocumented

  # (0043,0035) Undocumented dvUL
  # VR values: ["UL"]
  def name("00430035"), do: :undocumented

  # (0043,0036) Undocumented dvUL
  # VR values: ["UL"]
  def name("00430036"), do: :undocumented

  # (0043,0037) Undocumented dvUL
  # VR values: ["UL"]
  def name("00430037"), do: :undocumented

  # (0043,0038) Undocumented dvFL
  # VR values: ["FL"]
  def name("00430038"), do: :undocumented

  # (0043,0039) Undocumented dvIS
  # VR values: ["IS"]
  def name("00430039"), do: :undocumented

  # (0043,0040) Undocumented dvFL
  # VR values: ["FL"]
  def name("00430040"), do: :undocumented

  # (0043,0041) Undocumented dvFL
  # VR values: ["FL"]
  def name("00430041"), do: :undocumented

  # (0043,0042) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430042"), do: :undocumented

  # (0043,0043) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430043"), do: :undocumented

  # (0043,0044) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430044"), do: :undocumented

  # (0043,0045) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430045"), do: :undocumented

  # (0043,0046) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430046"), do: :undocumented

  # (0043,0047) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430047"), do: :undocumented

  # (0043,0048) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430048"), do: :undocumented

  # (0043,0049) Undocumented dvSL
  # VR values: ["SL"]
  def name("00430049"), do: :undocumented

  # (0043,004A) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043004A"), do: :undocumented

  # (0043,004B) Undocumented dvSL
  # VR values: ["SL"]
  def name("0043004B"), do: :undocumented

  # (0043,004C) Undocumented dvSS
  # VR values: ["SS"]
  def name("0043004C"), do: :undocumented

  # (0043,004D) Undocumented dvFL
  # VR values: ["FL"]
  def name("0043004D"), do: :undocumented

  # (0043,004E) Undocumented dvFL
  # VR values: ["FL"]
  def name("0043004E"), do: :undocumented

  # (0043,1000) Undocumented dvLO
  # VR values: ["LO"]
  def name("00431000"), do: :undocumented

  # (0043,1001) BitmapofPrescanOptions dvLO
  # VR values: ["LO"]
  def name("00431001"), do: :bitmapof_prescan_options

  # (0044,0000) Undocumented dvUI
  # VR values: ["UI"]
  def name("00440000"), do: :undocumented

  # (0044,0001) ProductPackageIdentifier dvST
  # VR values: ["ST"]
  def name("00440001"), do: :product_package_identifier

  # (0044,0002) SubstanceAdministrationApproval dvCS
  # VR values: ["CS"]
  def name("00440002"), do: :substance_administration_approval

  # (0044,0003) ApprovalStatusFurtherDescription dvLT
  # VR values: ["LT"]
  def name("00440003"), do: :approval_status_further_description

  # (0044,0004) ApprovalStatusDate/Time dvDT
  # VR values: ["DT"]
  def name("00440004"), do: :approval_status_date__time

  # (0044,0007) ProductTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00440007"), do: :product_type_code_sequence

  # (0044,0008) ProductName dvLO
  # VR values: ["LO"]
  def name("00440008"), do: :product_name

  # (0044,0009) ProductDescription dvLT
  # VR values: ["LT"]
  def name("00440009"), do: :product_description

  # (0044,000A) ProductLotIdentifier dvLO
  # VR values: ["LO"]
  def name("0044000A"), do: :product_lot_identifier

  # (0044,000B) ProductExpirationDate/Time dvDT
  # VR values: ["DT"]
  def name("0044000B"), do: :product_expiration_date__time

  # (0044,0010) SubstanceAdministrationDate/Time dvDT
  # VR values: ["DT"]
  def name("00440010"), do: :substance_administration_date__time

  # (0044,0011) SubstanceAdministrationNotes dvLO
  # VR values: ["LO"]
  def name("00440011"), do: :substance_administration_notes

  # (0044,0012) SubstanceAdministrationDeviceID dvLO
  # VR values: ["LO"]
  def name("00440012"), do: :substance_administration_device_id

  # (0044,0013) ProductParameterSequence dvSQ
  # VR values: ["SQ"]
  def name("00440013"), do: :product_parameter_sequence

  # (0044,0019) SubstanceAdministrationParameterSequence dvSQ
  # VR values: ["SQ"]
  def name("00440019"), do: :substance_administration_parameter_sequence

  # (0045,0004) Undocumented dvCS
  # VR values: ["CS"]
  def name("00450004"), do: :undocumented

  # (0045,0006) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450006"), do: :undocumented

  # (0045,0009) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450009"), do: :undocumented

  # (0045,000B) Undocumented dvCS
  # VR values: ["CS"]
  def name("0045000B"), do: :undocumented

  # (0045,000C) Undocumented dvDS
  # VR values: ["DS"]
  def name("0045000C"), do: :undocumented

  # (0045,000D) Undocumented dvDS
  # VR values: ["DS"]
  def name("0045000D"), do: :undocumented

  # (0045,0011) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450011"), do: :undocumented

  # (0045,0012) Undocumented dvIS
  # VR values: ["IS"]
  def name("00450012"), do: :undocumented

  # (0045,0013) Undocumented dvST
  # VR values: ["ST"]
  def name("00450013"), do: :undocumented

  # (0045,0014) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450014"), do: :undocumented

  # (0045,0015) Undocumented dvIS
  # VR values: ["IS"]
  def name("00450015"), do: :undocumented

  # (0045,0016) Undocumented dvIS
  # VR values: ["IS"]
  def name("00450016"), do: :undocumented

  # (0045,001B) Undocumented dvCS
  # VR values: ["CS"]
  def name("0045001B"), do: :undocumented

  # (0045,001D) Undocumented dvDS
  # VR values: ["DS"]
  def name("0045001D"), do: :undocumented

  # (0045,001E) Undocumented dvDS
  # VR values: ["DS"]
  def name("0045001E"), do: :undocumented

  # (0045,001F) Undocumented dvDS
  # VR values: ["DS"]
  def name("0045001F"), do: :undocumented

  # (0045,0020) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450020"), do: :undocumented

  # (0045,0021) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450021"), do: :undocumented

  # (0045,0022) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450022"), do: :undocumented

  # (0045,0023) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450023"), do: :undocumented

  # (0045,0024) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450024"), do: :undocumented

  # (0045,0025) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450025"), do: :undocumented

  # (0045,0026) Undocumented dvOB
  # VR values: ["OB"]
  def name("00450026"), do: :undocumented

  # (0045,0027) Undocumented dvIS
  # VR values: ["IS"]
  def name("00450027"), do: :undocumented

  # (0045,0028) Undocumented dvCS
  # VR values: ["CS"]
  def name("00450028"), do: :undocumented

  # (0045,0029) Undocumented dvDS
  # VR values: ["DS"]
  def name("00450029"), do: :undocumented

  # (0045,002A) Undocumented dvIS
  # VR values: ["IS"]
  def name("0045002A"), do: :undocumented

  # (0045,002B) Undocumented dvIS
  # VR values: ["IS"]
  def name("0045002B"), do: :undocumented

  # (0045,0039) Undocumented dvUS
  # VR values: ["US"]
  def name("00450039"), do: :undocumented

  # (0045,003A) Undocumented dvUS
  # VR values: ["US"]
  def name("0045003A"), do: :undocumented

  # (0045,003B) Undocumented dvUS
  # VR values: ["US"]
  def name("0045003B"), do: :undocumented

  # (0045,003C) Undocumented dvUS
  # VR values: ["US"]
  def name("0045003C"), do: :undocumented

  # (0045,003D) Undocumented dvUS
  # VR values: ["US"]
  def name("0045003D"), do: :undocumented

  # (0045,003E) Undocumented dvUS
  # VR values: ["US"]
  def name("0045003E"), do: :undocumented

  # (0045,003F) Undocumented dvOB
  # VR values: ["OB"]
  def name("0045003F"), do: :undocumented

  # (0046,0012) LensDescription dvLO
  # VR values: ["LO"]
  def name("00460012"), do: :lens_description

  # (0046,0014) RightLensSequence dvSQ
  # VR values: ["SQ"]
  def name("00460014"), do: :right_lens_sequence

  # (0046,0015) LeftLensSequence dvSQ
  # VR values: ["SQ"]
  def name("00460015"), do: :left_lens_sequence

  # (0046,0016) UnspecifiedLateralityLensSequence dvSQ
  # VR values: ["SQ"]
  def name("00460016"), do: :unspecified_laterality_lens_sequence

  # (0046,0018) CylinderSequence dvSQ
  # VR values: ["SQ"]
  def name("00460018"), do: :cylinder_sequence

  # (0046,0028) PrismSequence dvSQ
  # VR values: ["SQ"]
  def name("00460028"), do: :prism_sequence

  # (0046,0030) HorizontalPrismPower dvFD
  # VR values: ["FD"]
  def name("00460030"), do: :horizontal_prism_power

  # (0046,0032) HorizontalPrismBase dvCS
  # VR values: ["CS"]
  def name("00460032"), do: :horizontal_prism_base

  # (0046,0034) VerticalPrismPower dvFD
  # VR values: ["FD"]
  def name("00460034"), do: :vertical_prism_power

  # (0046,0036) VerticalPrismBase dvCS
  # VR values: ["CS"]
  def name("00460036"), do: :vertical_prism_base

  # (0046,0038) LensSegmentType dvCS
  # VR values: ["CS"]
  def name("00460038"), do: :lens_segment_type

  # (0046,0040) OpticalTransmittance dvFD
  # VR values: ["FD"]
  def name("00460040"), do: :optical_transmittance

  # (0046,0042) ChannelWidth dvFD
  # VR values: ["FD"]
  def name("00460042"), do: :channel_width

  # (0046,0044) PupilSize dvFD
  # VR values: ["FD"]
  def name("00460044"), do: :pupil_size

  # (0046,0046) CornealSize dvFD
  # VR values: ["FD"]
  def name("00460046"), do: :corneal_size

  # (0046,0050) AutorefractionRightEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460050"), do: :autorefraction_right_eye_sequence

  # (0046,0052) AutorefractionLeftEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460052"), do: :autorefraction_left_eye_sequence

  # (0046,0060) DistancePupillaryDistance dvFD
  # VR values: ["FD"]
  def name("00460060"), do: :distance_pupillary_distance

  # (0046,0062) NearPupillaryDistance dvFD
  # VR values: ["FD"]
  def name("00460062"), do: :near_pupillary_distance

  # (0046,0063) IntermediatePupillaryDistance dvFD
  # VR values: ["FD"]
  def name("00460063"), do: :intermediate_pupillary_distance

  # (0046,0064) OtherPupillaryDistance dvFD
  # VR values: ["FD"]
  def name("00460064"), do: :other_pupillary_distance

  # (0046,0070) KeratometryRightEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460070"), do: :keratometry_right_eye_sequence

  # (0046,0071) KeratometryLeftEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460071"), do: :keratometry_left_eye_sequence

  # (0046,0074) SteepKeratometricAxisSequence dvSQ
  # VR values: ["SQ"]
  def name("00460074"), do: :steep_keratometric_axis_sequence

  # (0046,0075) RadiusofCurvature dvFD
  # VR values: ["FD"]
  def name("00460075"), do: :radiusof_curvature

  # (0046,0076) KeratometricPower dvFD
  # VR values: ["FD"]
  def name("00460076"), do: :keratometric_power

  # (0046,0077) KeratometricAxis dvFD
  # VR values: ["FD"]
  def name("00460077"), do: :keratometric_axis

  # (0046,0080) FlatKeratometricAxisSequence dvSQ
  # VR values: ["SQ"]
  def name("00460080"), do: :flat_keratometric_axis_sequence

  # (0046,0092) BackgroundColor dvCS
  # VR values: ["CS"]
  def name("00460092"), do: :background_color

  # (0046,0094) Optotype dvCS
  # VR values: ["CS"]
  def name("00460094"), do: :optotype

  # (0046,0095) OptotypePresentation dvCS
  # VR values: ["CS"]
  def name("00460095"), do: :optotype_presentation

  # (0046,0097) SubjectiveRefractionRightEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460097"), do: :subjective_refraction_right_eye_sequence

  # (0046,0098) SubjectiveRefractionLeftEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460098"), do: :subjective_refraction_left_eye_sequence

  # (0046,0100) AddNearSequence dvSQ
  # VR values: ["SQ"]
  def name("00460100"), do: :add_near_sequence

  # (0046,0101) AddIntermediateSequence dvSQ
  # VR values: ["SQ"]
  def name("00460101"), do: :add_intermediate_sequence

  # (0046,0102) AddOtherSequence dvSQ
  # VR values: ["SQ"]
  def name("00460102"), do: :add_other_sequence

  # (0046,0104) AddPower dvFD
  # VR values: ["FD"]
  def name("00460104"), do: :add_power

  # (0046,0106) ViewingDistance dvFD
  # VR values: ["FD"]
  def name("00460106"), do: :viewing_distance

  # (0046,0121) VisualAcuityTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460121"), do: :visual_acuity_type_code_sequence

  # (0046,0122) VisualAcuityRightEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460122"), do: :visual_acuity_right_eye_sequence

  # (0046,0123) VisualAcuityLeftEyeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460123"), do: :visual_acuity_left_eye_sequence

  # (0046,0124) VisualAcuityBothEyesOpenSequence dvSQ
  # VR values: ["SQ"]
  def name("00460124"), do: :visual_acuity_both_eyes_open_sequence

  # (0046,0125) ViewingDistanceType dvCS
  # VR values: ["CS"]
  def name("00460125"), do: :viewing_distance_type

  # (0046,0135) VisualAcuityModifiers dvSS
  # VR values: ["SS"]
  def name("00460135"), do: :visual_acuity_modifiers

  # (0046,0137) DecimalVisualAcuity dvFD
  # VR values: ["FD"]
  def name("00460137"), do: :decimal_visual_acuity

  # (0046,0139) OptotypeDetailedDefinition dvLO
  # VR values: ["LO"]
  def name("00460139"), do: :optotype_detailed_definition

  # (0046,0145) ReferencedRefractiveMeasurementsSequence dvSQ
  # VR values: ["SQ"]
  def name("00460145"), do: :referenced_refractive_measurements_sequence

  # (0046,0146) SpherePower dvFD
  # VR values: ["FD"]
  def name("00460146"), do: :sphere_power

  # (0046,0147) CylinderPower dvFD
  # VR values: ["FD"]
  def name("00460147"), do: :cylinder_power

  # (0046,0201) CornealTopographySurface dvCS
  # VR values: ["CS"]
  def name("00460201"), do: :corneal_topography_surface

  # (0046,0202) CornealVertexLocation dvFL
  # VR values: ["FL"]
  def name("00460202"), do: :corneal_vertex_location

  # (0046,0203) PupilCentroidX_Coordinate dvFL
  # VR values: ["FL"]
  def name("00460203"), do: :pupil_centroidx_coordinate

  # (0046,0204) PupilCentroidY_Coordinate dvFL
  # VR values: ["FL"]
  def name("00460204"), do: :pupil_centroidy_coordinate

  # (0046,0205) EquivalentPupilRadius dvFL
  # VR values: ["FL"]
  def name("00460205"), do: :equivalent_pupil_radius

  # (0046,0207) CornealTopographyMapTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00460207"), do: :corneal_topography_map_type_code_sequence

  # (0046,0208) VerticesoftheOutlineofPupil dvIS
  # VR values: ["IS"]
  def name("00460208"), do: :verticesofthe_outlineof_pupil

  # (0046,0210) CornealTopographyMappingNormalsSequence dvSQ
  # VR values: ["SQ"]
  def name("00460210"), do: :corneal_topography_mapping_normals_sequence

  # (0046,0211) MaximumCornealCurvatureSequence dvSQ
  # VR values: ["SQ"]
  def name("00460211"), do: :maximum_corneal_curvature_sequence

  # (0046,0212) MaximumCornealCurvature dvFL
  # VR values: ["FL"]
  def name("00460212"), do: :maximum_corneal_curvature

  # (0046,0213) MaximumCornealCurvatureLocation dvFL
  # VR values: ["FL"]
  def name("00460213"), do: :maximum_corneal_curvature_location

  # (0046,0215) MinimumKeratometricSequence dvSQ
  # VR values: ["SQ"]
  def name("00460215"), do: :minimum_keratometric_sequence

  # (0046,0218) SimulatedKeratometricCylinderSequence dvSQ
  # VR values: ["SQ"]
  def name("00460218"), do: :simulated_keratometric_cylinder_sequence

  # (0046,0220) AverageCornealPower dvFL
  # VR values: ["FL"]
  def name("00460220"), do: :average_corneal_power

  # (0046,0224) CornealI_SValue dvFL
  # VR values: ["FL"]
  def name("00460224"), do: :corneali_s_value

  # (0046,0227) AnalyzedArea dvFL
  # VR values: ["FL"]
  def name("00460227"), do: :analyzed_area

  # (0046,0230) SurfaceRegularityIndex dvFL
  # VR values: ["FL"]
  def name("00460230"), do: :surface_regularity_index

  # (0046,0232) SurfaceAsymmetryIndex dvFL
  # VR values: ["FL"]
  def name("00460232"), do: :surface_asymmetry_index

  # (0046,0234) CornealEccentricityIndex dvFL
  # VR values: ["FL"]
  def name("00460234"), do: :corneal_eccentricity_index

  # (0046,0236) KeratoconusPredictionIndex dvFL
  # VR values: ["FL"]
  def name("00460236"), do: :keratoconus_prediction_index

  # (0046,0238) DecimalPotentialVisualAcuity dvFL
  # VR values: ["FL"]
  def name("00460238"), do: :decimal_potential_visual_acuity

  # (0046,0242) CornealTopographyMapQualityEvaluation dvCS
  # VR values: ["CS"]
  def name("00460242"), do: :corneal_topography_map_quality_evaluation

  # (0046,0244) SourceImageCornealProcessedDataSequence dvSQ
  # VR values: ["SQ"]
  def name("00460244"), do: :source_image_corneal_processed_data_sequence

  # (0046,0247) CornealPointLocation dvFL
  # VR values: ["FL"]
  def name("00460247"), do: :corneal_point_location

  # (0046,0248) CornealPointEstimated dvCS
  # VR values: ["CS"]
  def name("00460248"), do: :corneal_point_estimated

  # (0046,0249) AxialPower dvFL
  # VR values: ["FL"]
  def name("00460249"), do: :axial_power

  # (0046,0250) TangentialPower dvFL
  # VR values: ["FL"]
  def name("00460250"), do: :tangential_power

  # (0046,0251) RefractivePower dvFL
  # VR values: ["FL"]
  def name("00460251"), do: :refractive_power

  # (0046,0252) RelativeElevation dvFL
  # VR values: ["FL"]
  def name("00460252"), do: :relative_elevation

  # (0046,0253) CornealWavefront dvFL
  # VR values: ["FL"]
  def name("00460253"), do: :corneal_wavefront

  # (0047,0001) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00470001"), do: :undocumented

  # (0047,0050) Undocumented dvUL
  # VR values: ["UL"]
  def name("00470050"), do: :undocumented

  # (0047,0051) Undocumented dvUL
  # VR values: ["UL"]
  def name("00470051"), do: :undocumented

  # (0047,0053) Undocumented dvUS
  # VR values: ["US"]
  def name("00470053"), do: :undocumented

  # (0047,0054) Undocumented dvUS
  # VR values: ["US"]
  def name("00470054"), do: :undocumented

  # (0047,0055) Undocumented dvSL
  # VR values: ["SL"]
  def name("00470055"), do: :undocumented

  # (0047,0057) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470057"), do: :undocumented

  # (0047,0058) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470058"), do: :undocumented

  # (0047,0059) Undocumented dvUS
  # VR values: ["US"]
  def name("00470059"), do: :undocumented

  # (0047,0060) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470060"), do: :undocumented

  # (0047,0061) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470061"), do: :undocumented

  # (0047,0063) Undocumented dvSL
  # VR values: ["SL"]
  def name("00470063"), do: :undocumented

  # (0047,0064) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470064"), do: :undocumented

  # (0047,0065) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470065"), do: :undocumented

  # (0047,0070) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470070"), do: :undocumented

  # (0047,0071) Undocumented dvIS
  # VR values: ["IS"]
  def name("00470071"), do: :undocumented

  # (0047,0072) Undocumented dvIS
  # VR values: ["IS"]
  def name("00470072"), do: :undocumented

  # (0047,0080) Undocumented dvLO
  # VR values: ["LO"]
  def name("00470080"), do: :undocumented

  # (0047,0085) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00470085"), do: :undocumented

  # (0047,0089) Undocumented dvDS
  # VR values: ["DS"]
  def name("00470089"), do: :undocumented

  # (0047,008A) Undocumented dvUS
  # VR values: ["US"]
  def name("0047008A"), do: :undocumented

  # (0047,008B) Undocumented dvUS
  # VR values: ["US"]
  def name("0047008B"), do: :undocumented

  # (0047,0091) Undocumented dvLO
  # VR values: ["LO"]
  def name("00470091"), do: :undocumented

  # (0047,0092) Undocumented dvCS
  # VR values: ["CS"]
  def name("00470092"), do: :undocumented

  # (0047,0093) Undocumented dvDA
  # VR values: ["DA"]
  def name("00470093"), do: :undocumented

  # (0047,0094) Undocumented dvTM
  # VR values: ["TM"]
  def name("00470094"), do: :undocumented

  # (0047,0095) Undocumented dvCS
  # VR values: ["CS"]
  def name("00470095"), do: :undocumented

  # (0047,0096) Undocumented dvIS
  # VR values: ["IS"]
  def name("00470096"), do: :undocumented

  # (0047,0098) Undocumented dvUS
  # VR values: ["US"]
  def name("00470098"), do: :undocumented

  # (0047,0099) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00470099"), do: :undocumented

  # (0047,009A) Undocumented dvDS
  # VR values: ["DS"]
  def name("0047009A"), do: :undocumented

  # (0047,009B) Undocumented dvDS
  # VR values: ["DS"]
  def name("0047009B"), do: :undocumented

  # (0047,009C) Undocumented dvLO
  # VR values: ["LO"]
  def name("0047009C"), do: :undocumented

  # (0047,00B0) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("004700B0"), do: :undocumented

  # (0047,00B1) Undocumented dvUS
  # VR values: ["US"]
  def name("004700B1"), do: :undocumented

  # (0047,00B2) Undocumented dvUS
  # VR values: ["US"]
  def name("004700B2"), do: :undocumented

  # (0047,00B5) Undocumented dvLO
  # VR values: ["LO"]
  def name("004700B5"), do: :undocumented

  # (0047,00B6) Undocumented dvLO
  # VR values: ["LO"]
  def name("004700B6"), do: :undocumented

  # (0047,00B7) Undocumented dvLO
  # VR values: ["LO"]
  def name("004700B7"), do: :undocumented

  # (0047,00B8) Undocumented dvSL
  # VR values: ["SL"]
  def name("004700B8"), do: :undocumented

  # (0047,00B9) Undocumented dvSL
  # VR values: ["SL"]
  def name("004700B9"), do: :undocumented

  # (0047,00BA) Undocumented dvSL
  # VR values: ["SL"]
  def name("004700BA"), do: :undocumented

  # (0047,00BB) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("004700BB"), do: :undocumented

  # (0047,00BC) Undocumented dvDS
  # VR values: ["DS"]
  def name("004700BC"), do: :undocumented

  # (0047,00C0) Undocumented dvDS
  # VR values: ["DS"]
  def name("004700C0"), do: :undocumented

  # (0047,00C1) Undocumented dvDS
  # VR values: ["DS"]
  def name("004700C1"), do: :undocumented

  # (0047,00C2) Undocumented dvDS
  # VR values: ["DS"]
  def name("004700C2"), do: :undocumented

  # (0047,00D1) Undocumented dvOB
  # VR values: ["OB"]
  def name("004700D1"), do: :undocumented

  # (0047,00D2) Undocumented dvOB
  # VR values: ["OB"]
  def name("004700D2"), do: :undocumented

  # (0047,00D3) Undocumented dvOB
  # VR values: ["OB"]
  def name("004700D3"), do: :undocumented

  # (0047,00D4) Undocumented dvOB
  # VR values: ["OB"]
  def name("004700D4"), do: :undocumented

  # (0047,00D5) Undocumented dvOB
  # VR values: ["OB"]
  def name("004700D5"), do: :undocumented

  # (0048,0001) ImagedVolumeWidth dvFL
  # VR values: ["FL"]
  def name("00480001"), do: :imaged_volume_width

  # (0048,0002) ImagedVolumeHeight dvFL
  # VR values: ["FL"]
  def name("00480002"), do: :imaged_volume_height

  # (0048,0003) ImagedVolumeDepth dvFL
  # VR values: ["FL"]
  def name("00480003"), do: :imaged_volume_depth

  # (0048,0006) TotalPixelMatrixColumns dvUL
  # VR values: ["UL"]
  def name("00480006"), do: :total_pixel_matrix_columns

  # (0048,0007) TotalPixelMatrixRows dvUL
  # VR values: ["UL"]
  def name("00480007"), do: :total_pixel_matrix_rows

  # (0048,0008) TotalPixelMatrixOriginSequence dvSQ
  # VR values: ["SQ"]
  def name("00480008"), do: :total_pixel_matrix_origin_sequence

  # (0048,0010) SpecimenLabelinImage dvCS
  # VR values: ["CS"]
  def name("00480010"), do: :specimen_labelin_image

  # (0048,0011) FocusMethod dvCS
  # VR values: ["CS"]
  def name("00480011"), do: :focus_method

  # (0048,0012) ExtendedDepthofField dvCS
  # VR values: ["CS"]
  def name("00480012"), do: :extended_depthof_field

  # (0048,0013) NumberofFocalPlanes dvUS
  # VR values: ["US"]
  def name("00480013"), do: :numberof_focal_planes

  # (0048,0014) DistanceBetweenFocalPlanes dvFL
  # VR values: ["FL"]
  def name("00480014"), do: :distance_between_focal_planes

  # (0048,0015) RecommendedAbsentPixelCIELabValue dvUS
  # VR values: ["US"]
  def name("00480015"), do: :recommended_absent_pixel_cie_lab_value

  # (0048,0100) IlluminatorTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00480100"), do: :illuminator_type_code_sequence

  # (0048,0102) ImageOrientation(Slide) dvDS
  # VR values: ["DS"]
  def name("00480102"), do: :image_orientation_slide

  # (0048,0105) OpticalPathSequence dvSQ
  # VR values: ["SQ"]
  def name("00480105"), do: :optical_path_sequence

  # (0048,0106) OpticalPathIdentifier dvSH
  # VR values: ["SH"]
  def name("00480106"), do: :optical_path_identifier

  # (0048,0107) OpticalPathDescription dvST
  # VR values: ["ST"]
  def name("00480107"), do: :optical_path_description

  # (0048,0108) IlluminationColorCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00480108"), do: :illumination_color_code_sequence

  # (0048,0110) SpecimenReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("00480110"), do: :specimen_reference_sequence

  # (0048,0111) CondenserLensPower dvDS
  # VR values: ["DS"]
  def name("00480111"), do: :condenser_lens_power

  # (0048,0112) ObjectiveLensPower dvDS
  # VR values: ["DS"]
  def name("00480112"), do: :objective_lens_power

  # (0048,0113) ObjectiveLensNumericalAperture dvDS
  # VR values: ["DS"]
  def name("00480113"), do: :objective_lens_numerical_aperture

  # (0048,0120) PaletteColorLookupTableSequence dvSQ
  # VR values: ["SQ"]
  def name("00480120"), do: :palette_color_lookup_table_sequence

  # (0048,0200) ReferencedImageNavigationSequence dvSQ
  # VR values: ["SQ"]
  def name("00480200"), do: :referenced_image_navigation_sequence

  # (0048,0201) TopLeftHandCornerofLocalizerArea dvUS
  # VR values: ["US"]
  def name("00480201"), do: :top_left_hand_cornerof_localizer_area

  # (0048,0202) BottomRightHandCornerofLocalizerArea dvUS
  # VR values: ["US"]
  def name("00480202"), do: :bottom_right_hand_cornerof_localizer_area

  # (0048,0207) OpticalPathIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00480207"), do: :optical_path_identification_sequence

  # (0048,021A) PlanePosition(Slide)Sequence dvSQ
  # VR values: ["SQ"]
  def name("0048021A"), do: :plane_position_slide_sequence

  # (0048,021E) ColumnPositioninTotalImagePixelMatrix dvSL
  # VR values: ["SL"]
  def name("0048021E"), do: :column_positionin_total_image_pixel_matrix

  # (0048,021F) RowPositioninTotalImagePixelMatrix dvSL
  # VR values: ["SL"]
  def name("0048021F"), do: :row_positionin_total_image_pixel_matrix

  # (0048,0301) PixelOriginInterpretation dvCS
  # VR values: ["CS"]
  def name("00480301"), do: :pixel_origin_interpretation

  # (0050,0000) X_RayAngioDeviceGroupLength dvUL
  # VR values: ["UL"]
  def name("00500000"), do: :x_ray_angio_device_group_length

  # (0050,0004) CalibrationImage dvCS
  # VR values: ["CS"]
  def name("00500004"), do: :calibration_image

  # (0050,0010) DeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("00500010"), do: :device_sequence

  # (0050,0012) ContainerComponentTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00500012"), do: :container_component_type_code_sequence

  # (0050,0013) ContainerComponentThickness dvFD
  # VR values: ["FD"]
  def name("00500013"), do: :container_component_thickness

  # (0050,0014) DeviceLength dvDS
  # VR values: ["DS"]
  def name("00500014"), do: :device_length

  # (0050,0015) ContainerComponentWidth dvFD
  # VR values: ["FD"]
  def name("00500015"), do: :container_component_width

  # (0050,0016) DeviceDiameter dvDS
  # VR values: ["DS"]
  def name("00500016"), do: :device_diameter

  # (0050,0017) DeviceDiameterUnits dvCS
  # VR values: ["CS"]
  def name("00500017"), do: :device_diameter_units

  # (0050,0018) DeviceVolume dvDS
  # VR values: ["DS"]
  def name("00500018"), do: :device_volume

  # (0050,0019) Inter_MarkerDistance dvDS
  # VR values: ["DS"]
  def name("00500019"), do: :inter_marker_distance

  # (0050,001A) ContainerComponentMaterial dvCS
  # VR values: ["CS"]
  def name("0050001A"), do: :container_component_material

  # (0050,001B) ContainerComponentID dvLO
  # VR values: ["LO"]
  def name("0050001B"), do: :container_component_id

  # (0050,001C) ContainerComponentLength dvFD
  # VR values: ["FD"]
  def name("0050001C"), do: :container_component_length

  # (0050,001D) ContainerComponentDiameter dvFD
  # VR values: ["FD"]
  def name("0050001D"), do: :container_component_diameter

  # (0050,001E) ContainerComponentDescription dvLO
  # VR values: ["LO"]
  def name("0050001E"), do: :container_component_description

  # (0050,0020) DeviceDescription dvLO
  # VR values: ["LO"]
  def name("00500020"), do: :device_description

  # (0050,0030) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00500030"), do: :undocumented

  # (0051,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("00510010"), do: :undocumented

  # (0052,0001) Contrast/BolusIngredientPercentbyVolume dvFL
  # VR values: ["FL"]
  def name("00520001"), do: :contrast__bolus_ingredient_percentby_volume

  # (0052,0002) OCTFocalDistance dvFD
  # VR values: ["FD"]
  def name("00520002"), do: :oct_focal_distance

  # (0052,0003) BeamSpotSize dvFD
  # VR values: ["FD"]
  def name("00520003"), do: :beam_spot_size

  # (0052,0004) EffectiveRefractiveIndex dvFD
  # VR values: ["FD"]
  def name("00520004"), do: :effective_refractive_index

  # (0052,0006) OCTAcquisitionDomain dvCS
  # VR values: ["CS"]
  def name("00520006"), do: :oct_acquisition_domain

  # (0052,0007) OCTOpticalCenterWavelength dvFD
  # VR values: ["FD"]
  def name("00520007"), do: :oct_optical_center_wavelength

  # (0052,0008) AxialResolution dvFD
  # VR values: ["FD"]
  def name("00520008"), do: :axial_resolution

  # (0052,0009) RangingDepth dvFD
  # VR values: ["FD"]
  def name("00520009"), do: :ranging_depth

  # (0052,0011) A_lineRate dvFD
  # VR values: ["FD"]
  def name("00520011"), do: :a_line_rate

  # (0052,0012) A_linesperFrame dvUS
  # VR values: ["US"]
  def name("00520012"), do: :a_linesper_frame

  # (0052,0013) CatheterRotationalRate dvFD
  # VR values: ["FD"]
  def name("00520013"), do: :catheter_rotational_rate

  # (0052,0014) A_linePixelSpacing dvFD
  # VR values: ["FD"]
  def name("00520014"), do: :a_line_pixel_spacing

  # (0052,0016) ModeofPercutaneousAccessSequence dvSQ
  # VR values: ["SQ"]
  def name("00520016"), do: :modeof_percutaneous_access_sequence

  # (0052,0025) IntravascularOCTFrameTypeSequence dvSQ
  # VR values: ["SQ"]
  def name("00520025"), do: :intravascular_oct_frame_type_sequence

  # (0052,0026) OCTZOffsetApplied dvCS
  # VR values: ["CS"]
  def name("00520026"), do: :octz_offset_applied

  # (0052,0027) IntravascularFrameContentSequence dvSQ
  # VR values: ["SQ"]
  def name("00520027"), do: :intravascular_frame_content_sequence

  # (0052,0028) IntravascularLongitudinalDistance dvFD
  # VR values: ["FD"]
  def name("00520028"), do: :intravascular_longitudinal_distance

  # (0052,0029) IntravascularOCTFrameContentSequence dvSQ
  # VR values: ["SQ"]
  def name("00520029"), do: :intravascular_oct_frame_content_sequence

  # (0052,0030) OCTZOffsetCorrection dvSS
  # VR values: ["SS"]
  def name("00520030"), do: :octz_offset_correction

  # (0052,0031) CatheterDirectionofRotation dvCS
  # VR values: ["CS"]
  def name("00520031"), do: :catheter_directionof_rotation

  # (0052,0033) SeamLineLocation dvFD
  # VR values: ["FD"]
  def name("00520033"), do: :seam_line_location

  # (0052,0034) FirstA_lineLocation dvFD
  # VR values: ["FD"]
  def name("00520034"), do: :firsta_line_location

  # (0052,0036) SeamLineIndex dvUS
  # VR values: ["US"]
  def name("00520036"), do: :seam_line_index

  # (0052,0038) NumberofPaddedA_lines dvUS
  # VR values: ["US"]
  def name("00520038"), do: :numberof_paddeda_lines

  # (0052,0039) InterpolationType dvCS
  # VR values: ["CS"]
  def name("00520039"), do: :interpolation_type

  # (0052,003A) RefractiveIndexApplied dvCS
  # VR values: ["CS"]
  def name("0052003A"), do: :refractive_index_applied

  # (0054,0000) NuclearMedicineGroupLength dvUL
  # VR values: ["UL"]
  def name("00540000"), do: :nuclear_medicine_group_length

  # (0054,0010) EnergyWindowVector dvUS
  # VR values: ["US"]
  def name("00540010"), do: :energy_window_vector

  # (0054,0011) NumberofEnergyWindows dvUS
  # VR values: ["US"]
  def name("00540011"), do: :numberof_energy_windows

  # (0054,0012) EnergyWindowInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540012"), do: :energy_window_information_sequence

  # (0054,0013) EnergyWindowRangeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540013"), do: :energy_window_range_sequence

  # (0054,0014) EnergyWindowLowerLimit dvDS
  # VR values: ["DS"]
  def name("00540014"), do: :energy_window_lower_limit

  # (0054,0015) EnergyWindowUpperLimit dvDS
  # VR values: ["DS"]
  def name("00540015"), do: :energy_window_upper_limit

  # (0054,0016) RadiopharmaceuticalInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540016"), do: :radiopharmaceutical_information_sequence

  # (0054,0017) ResidualSyringeCounts dvIS
  # VR values: ["IS"]
  def name("00540017"), do: :residual_syringe_counts

  # (0054,0018) EnergyWindowName dvSH
  # VR values: ["SH"]
  def name("00540018"), do: :energy_window_name

  # (0054,0020) DetectorVector dvUS
  # VR values: ["US"]
  def name("00540020"), do: :detector_vector

  # (0054,0021) NumberofDetectors dvUS
  # VR values: ["US"]
  def name("00540021"), do: :numberof_detectors

  # (0054,0022) DetectorInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540022"), do: :detector_information_sequence

  # (0054,0030) PhaseVector dvUS
  # VR values: ["US"]
  def name("00540030"), do: :phase_vector

  # (0054,0031) NumberofPhases dvUS
  # VR values: ["US"]
  def name("00540031"), do: :numberof_phases

  # (0054,0032) PhaseInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540032"), do: :phase_information_sequence

  # (0054,0033) NumberofFramesinPhase dvUS
  # VR values: ["US"]
  def name("00540033"), do: :numberof_framesin_phase

  # (0054,0036) PhaseDelay dvIS
  # VR values: ["IS"]
  def name("00540036"), do: :phase_delay

  # (0054,0038) PauseBetweenFrames dvIS
  # VR values: ["IS"]
  def name("00540038"), do: :pause_between_frames

  # (0054,0039) PhaseDescription dvCS
  # VR values: ["CS"]
  def name("00540039"), do: :phase_description

  # (0054,0050) RotationVector dvUS
  # VR values: ["US"]
  def name("00540050"), do: :rotation_vector

  # (0054,0051) NumberofRotations dvUS
  # VR values: ["US"]
  def name("00540051"), do: :numberof_rotations

  # (0054,0052) RotationInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540052"), do: :rotation_information_sequence

  # (0054,0053) NumberofFramesinRotation dvUS
  # VR values: ["US"]
  def name("00540053"), do: :numberof_framesin_rotation

  # (0054,0060) R_RIntervalVector dvUS
  # VR values: ["US"]
  def name("00540060"), do: :r_r_interval_vector

  # (0054,0061) NumberofR_RIntervals dvUS
  # VR values: ["US"]
  def name("00540061"), do: :numberofr_r_intervals

  # (0054,0062) GatedInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540062"), do: :gated_information_sequence

  # (0054,0063) DataInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540063"), do: :data_information_sequence

  # (0054,0070) TimeSlotVector dvUS
  # VR values: ["US"]
  def name("00540070"), do: :time_slot_vector

  # (0054,0071) NumberofTimeSlots dvUS
  # VR values: ["US"]
  def name("00540071"), do: :numberof_time_slots

  # (0054,0072) TimeSlotInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00540072"), do: :time_slot_information_sequence

  # (0054,0073) TimeSlotTime dvDS
  # VR values: ["DS"]
  def name("00540073"), do: :time_slot_time

  # (0054,0080) SliceVector dvUS
  # VR values: ["US"]
  def name("00540080"), do: :slice_vector

  # (0054,0081) NumberofSlices dvUS
  # VR values: ["US"]
  def name("00540081"), do: :numberof_slices

  # (0054,0090) AngularViewVector dvUS
  # VR values: ["US"]
  def name("00540090"), do: :angular_view_vector

  # (0054,0100) TimeSliceVector dvUS
  # VR values: ["US"]
  def name("00540100"), do: :time_slice_vector

  # (0054,0101) NumberofTimeSlices dvUS
  # VR values: ["US"]
  def name("00540101"), do: :numberof_time_slices

  # (0054,0200) StartAngle dvDS
  # VR values: ["DS"]
  def name("00540200"), do: :start_angle

  # (0054,0202) TypeofDetectorMotion dvCS
  # VR values: ["CS"]
  def name("00540202"), do: :typeof_detector_motion

  # (0054,0210) TriggerVector dvIS
  # VR values: ["IS"]
  def name("00540210"), do: :trigger_vector

  # (0054,0211) NumberofTriggersinPhase dvUS
  # VR values: ["US"]
  def name("00540211"), do: :numberof_triggersin_phase

  # (0054,0220) ViewCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540220"), do: :view_code_sequence

  # (0054,0222) ViewModifierCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540222"), do: :view_modifier_code_sequence

  # (0054,0300) RadionuclideCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540300"), do: :radionuclide_code_sequence

  # (0054,0302) AdministrationRouteCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540302"), do: :administration_route_code_sequence

  # (0054,0304) RadiopharmaceuticalCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540304"), do: :radiopharmaceutical_code_sequence

  # (0054,0306) CalibrationDataSequence dvSQ
  # VR values: ["SQ"]
  def name("00540306"), do: :calibration_data_sequence

  # (0054,0308) EnergyWindowNumber dvUS
  # VR values: ["US"]
  def name("00540308"), do: :energy_window_number

  # (0054,0400) ImageID dvSH
  # VR values: ["SH"]
  def name("00540400"), do: :image_id

  # (0054,0410) PatientOrientationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540410"), do: :patient_orientation_code_sequence

  # (0054,0412) PatientOrientationModifierCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540412"), do: :patient_orientation_modifier_code_sequence

  # (0054,0414) PatientGantryRelationshipCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00540414"), do: :patient_gantry_relationship_code_sequence

  # (0054,0500) SliceProgressionDirection dvCS
  # VR values: ["CS"]
  def name("00540500"), do: :slice_progression_direction

  # (0054,0501) ScanProgressionDirection dvCS
  # VR values: ["CS"]
  def name("00540501"), do: :scan_progression_direction

  # (0054,1000) SeriesType dvCS
  # VR values: ["CS"]
  def name("00541000"), do: :series_type

  # (0054,1001) Units dvCS
  # VR values: ["CS"]
  def name("00541001"), do: :units

  # (0054,1002) CountsSource dvCS
  # VR values: ["CS"]
  def name("00541002"), do: :counts_source

  # (0054,1004) ReprojectionMethod dvCS
  # VR values: ["CS"]
  def name("00541004"), do: :reprojection_method

  # (0054,1006) SUVType dvCS
  # VR values: ["CS"]
  def name("00541006"), do: :suv_type

  # (0054,1100) RandomsCorrectionMethod dvCS
  # VR values: ["CS"]
  def name("00541100"), do: :randoms_correction_method

  # (0054,1101) AttenuationCorrectionMethod dvLO
  # VR values: ["LO"]
  def name("00541101"), do: :attenuation_correction_method

  # (0054,1102) DecayCorrection dvCS
  # VR values: ["CS"]
  def name("00541102"), do: :decay_correction

  # (0054,1103) ReconstructionMethod dvLO
  # VR values: ["LO"]
  def name("00541103"), do: :reconstruction_method

  # (0054,1104) DetectorLinesofResponseUsed dvLO
  # VR values: ["LO"]
  def name("00541104"), do: :detector_linesof_response_used

  # (0054,1105) ScatterCorrectionMethod dvLO
  # VR values: ["LO"]
  def name("00541105"), do: :scatter_correction_method

  # (0054,1200) AxialAcceptance dvDS
  # VR values: ["DS"]
  def name("00541200"), do: :axial_acceptance

  # (0054,1201) AxialMash dvIS
  # VR values: ["IS"]
  def name("00541201"), do: :axial_mash

  # (0054,1202) TransverseMash dvIS
  # VR values: ["IS"]
  def name("00541202"), do: :transverse_mash

  # (0054,1203) DetectorElementSize dvDS
  # VR values: ["DS"]
  def name("00541203"), do: :detector_element_size

  # (0054,1210) CoincidenceWindowWidth dvDS
  # VR values: ["DS"]
  def name("00541210"), do: :coincidence_window_width

  # (0054,1220) SecondaryCountsType dvCS
  # VR values: ["CS"]
  def name("00541220"), do: :secondary_counts_type

  # (0054,1300) FrameReferenceTime dvDS
  # VR values: ["DS"]
  def name("00541300"), do: :frame_reference_time

  # (0054,1310) Primary(Prompts)CountsAccumulated dvIS
  # VR values: ["IS"]
  def name("00541310"), do: :primary_prompts_counts_accumulated

  # (0054,1311) SecondaryCountsAccumulated dvIS
  # VR values: ["IS"]
  def name("00541311"), do: :secondary_counts_accumulated

  # (0054,1320) SliceSensitivityFactor dvDS
  # VR values: ["DS"]
  def name("00541320"), do: :slice_sensitivity_factor

  # (0054,1321) DecayFactor dvDS
  # VR values: ["DS"]
  def name("00541321"), do: :decay_factor

  # (0054,1322) DoseCalibrationFactor dvDS
  # VR values: ["DS"]
  def name("00541322"), do: :dose_calibration_factor

  # (0054,1323) ScatterFractionFactor dvDS
  # VR values: ["DS"]
  def name("00541323"), do: :scatter_fraction_factor

  # (0054,1324) DeadTimeFactor dvDS
  # VR values: ["DS"]
  def name("00541324"), do: :dead_time_factor

  # (0054,1330) ImageIndex dvUS
  # VR values: ["US"]
  def name("00541330"), do: :image_index

  # (0054,1400) CountsIncluded dvCS
  # VR values: ["CS"]
  def name("00541400"), do: :counts_included

  # (0054,1401) DeadTimeCorrectionFlag dvCS
  # VR values: ["CS"]
  def name("00541401"), do: :dead_time_correction_flag

  # (0055,0046) Undocumented dvLT
  # VR values: ["LT"]
  def name("00550046"), do: :undocumented

  # (0058,0000) Undocumented dvSQ
  # VR values: ["SQ"]
  def name("00580000"), do: :undocumented

  # (0060,0000) HistogramGroupLength dvUL
  # VR values: ["UL"]
  def name("00600000"), do: :histogram_group_length

  # (0060,3000) HistogramSequence dvSQ
  # VR values: ["SQ"]
  def name("00603000"), do: :histogram_sequence

  # (0060,3002) HistogramNumberofBins dvUS
  # VR values: ["US"]
  def name("00603002"), do: :histogram_numberof_bins

  # (0060,3004) HistogramFirstBinValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00603004"), do: :histogram_first_bin_value

  # (0060,3006) HistogramLastBinValue dvUSorSS
  # VR values: ["US", "SS"]
  def name("00603006"), do: :histogram_last_bin_value

  # (0060,3008) HistogramBinWidth dvUS
  # VR values: ["US"]
  def name("00603008"), do: :histogram_bin_width

  # (0060,3010) HistogramExplanation dvLO
  # VR values: ["LO"]
  def name("00603010"), do: :histogram_explanation

  # (0060,3020) HistogramData dvUL
  # VR values: ["UL"]
  def name("00603020"), do: :histogram_data

  # (0062,0001) SegmentationType dvCS
  # VR values: ["CS"]
  def name("00620001"), do: :segmentation_type

  # (0062,0002) SegmentSequence dvSQ
  # VR values: ["SQ"]
  def name("00620002"), do: :segment_sequence

  # (0062,0003) SegmentedPropertyCategoryCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00620003"), do: :segmented_property_category_code_sequence

  # (0062,0004) SegmentNumber dvUS
  # VR values: ["US"]
  def name("00620004"), do: :segment_number

  # (0062,0005) SegmentLabel dvLO
  # VR values: ["LO"]
  def name("00620005"), do: :segment_label

  # (0062,0006) SegmentDescription dvST
  # VR values: ["ST"]
  def name("00620006"), do: :segment_description

  # (0062,0008) SegmentAlgorithmType dvCS
  # VR values: ["CS"]
  def name("00620008"), do: :segment_algorithm_type

  # (0062,0009) SegmentAlgorithmName dvLO
  # VR values: ["LO"]
  def name("00620009"), do: :segment_algorithm_name

  # (0062,000A) SegmentIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("0062000A"), do: :segment_identification_sequence

  # (0062,000B) ReferencedSegmentNumber dvUS
  # VR values: ["US"]
  def name("0062000B"), do: :referenced_segment_number

  # (0062,000C) RecommendedDisplayGrayscaleValue dvUS
  # VR values: ["US"]
  def name("0062000C"), do: :recommended_display_grayscale_value

  # (0062,000D) RecommendedDisplayCIELabValue dvUS
  # VR values: ["US"]
  def name("0062000D"), do: :recommended_display_cie_lab_value

  # (0062,000E) MaximumFractionalValue dvUS
  # VR values: ["US"]
  def name("0062000E"), do: :maximum_fractional_value

  # (0062,000F) SegmentedPropertyTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0062000F"), do: :segmented_property_type_code_sequence

  # (0062,0010) SegmentationFractionalType dvCS
  # VR values: ["CS"]
  def name("00620010"), do: :segmentation_fractional_type

  # (0062,0011) SegmentedPropertyTypeModifierCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00620011"), do: :segmented_property_type_modifier_code_sequence

  # (0062,0012) UsedSegmentsSequence dvSQ
  # VR values: ["SQ"]
  def name("00620012"), do: :used_segments_sequence

  # (0064,0002) DeformableRegistrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00640002"), do: :deformable_registration_sequence

  # (0064,0003) SourceFrameofReferenceUID dvUI
  # VR values: ["UI"]
  def name("00640003"), do: :source_frameof_reference_uid

  # (0064,0005) DeformableRegistrationGridSequence dvSQ
  # VR values: ["SQ"]
  def name("00640005"), do: :deformable_registration_grid_sequence

  # (0064,0007) GridDimensions dvUL
  # VR values: ["UL"]
  def name("00640007"), do: :grid_dimensions

  # (0064,0008) GridResolution dvFD
  # VR values: ["FD"]
  def name("00640008"), do: :grid_resolution

  # (0064,0009) VectorGridData dvOF
  # VR values: ["OF"]
  def name("00640009"), do: :vector_grid_data

  # (0064,000F) PreDeformationMatrixRegistrationSequence dvSQ
  # VR values: ["SQ"]
  def name("0064000F"), do: :pre_deformation_matrix_registration_sequence

  # (0064,0010) PostDeformationMatrixRegistrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00640010"), do: :post_deformation_matrix_registration_sequence

  # (0066,0001) NumberofSurfaces dvUL
  # VR values: ["UL"]
  def name("00660001"), do: :numberof_surfaces

  # (0066,0002) SurfaceSequence dvSQ
  # VR values: ["SQ"]
  def name("00660002"), do: :surface_sequence

  # (0066,0003) SurfaceNumber dvUL
  # VR values: ["UL"]
  def name("00660003"), do: :surface_number

  # (0066,0004) SurfaceComments dvLT
  # VR values: ["LT"]
  def name("00660004"), do: :surface_comments

  # (0066,0009) SurfaceProcessing dvCS
  # VR values: ["CS"]
  def name("00660009"), do: :surface_processing

  # (0066,000A) SurfaceProcessingRatio dvFL
  # VR values: ["FL"]
  def name("0066000A"), do: :surface_processing_ratio

  # (0066,000B) SurfaceProcessingDescription dvLO
  # VR values: ["LO"]
  def name("0066000B"), do: :surface_processing_description

  # (0066,000C) RecommendedPresentationOpacity dvFL
  # VR values: ["FL"]
  def name("0066000C"), do: :recommended_presentation_opacity

  # (0066,000D) RecommendedPresentationType dvCS
  # VR values: ["CS"]
  def name("0066000D"), do: :recommended_presentation_type

  # (0066,000E) FiniteVolume dvCS
  # VR values: ["CS"]
  def name("0066000E"), do: :finite_volume

  # (0066,0010) Manifold dvCS
  # VR values: ["CS"]
  def name("00660010"), do: :manifold

  # (0066,0011) SurfacePointsSequence dvSQ
  # VR values: ["SQ"]
  def name("00660011"), do: :surface_points_sequence

  # (0066,0012) SurfacePointsNormalsSequence dvSQ
  # VR values: ["SQ"]
  def name("00660012"), do: :surface_points_normals_sequence

  # (0066,0013) SurfaceMeshPrimitivesSequence dvSQ
  # VR values: ["SQ"]
  def name("00660013"), do: :surface_mesh_primitives_sequence

  # (0066,0015) NumberofSurfacePoints dvUL
  # VR values: ["UL"]
  def name("00660015"), do: :numberof_surface_points

  # (0066,0016) PointCoordinatesData dvOF
  # VR values: ["OF"]
  def name("00660016"), do: :point_coordinates_data

  # (0066,0017) PointPositionAccuracy dvFL
  # VR values: ["FL"]
  def name("00660017"), do: :point_position_accuracy

  # (0066,0018) MeanPointDistance dvFL
  # VR values: ["FL"]
  def name("00660018"), do: :mean_point_distance

  # (0066,0019) MaximumPointDistance dvFL
  # VR values: ["FL"]
  def name("00660019"), do: :maximum_point_distance

  # (0066,001A) PointsBoundingBoxCoordinates dvFL
  # VR values: ["FL"]
  def name("0066001A"), do: :points_bounding_box_coordinates

  # (0066,001B) AxisofRotation dvFL
  # VR values: ["FL"]
  def name("0066001B"), do: :axisof_rotation

  # (0066,001C) CenterofRotation dvFL
  # VR values: ["FL"]
  def name("0066001C"), do: :centerof_rotation

  # (0066,001E) NumberofVectors dvUL
  # VR values: ["UL"]
  def name("0066001E"), do: :numberof_vectors

  # (0066,001F) VectorDimensionality dvUS
  # VR values: ["US"]
  def name("0066001F"), do: :vector_dimensionality

  # (0066,0020) VectorAccuracy dvFL
  # VR values: ["FL"]
  def name("00660020"), do: :vector_accuracy

  # (0066,0021) VectorCoordinateData dvOF
  # VR values: ["OF"]
  def name("00660021"), do: :vector_coordinate_data

  # (0066,0023) TrianglePointIndexList dvOW
  # VR values: ["OW"]
  def name("00660023"), do: :triangle_point_index_list

  # (0066,0024) EdgePointIndexList dvOW
  # VR values: ["OW"]
  def name("00660024"), do: :edge_point_index_list

  # (0066,0025) VertexPointIndexList dvOW
  # VR values: ["OW"]
  def name("00660025"), do: :vertex_point_index_list

  # (0066,0026) TriangleStripSequence dvSQ
  # VR values: ["SQ"]
  def name("00660026"), do: :triangle_strip_sequence

  # (0066,0027) TriangleFanSequence dvSQ
  # VR values: ["SQ"]
  def name("00660027"), do: :triangle_fan_sequence

  # (0066,0028) LineSequence dvSQ
  # VR values: ["SQ"]
  def name("00660028"), do: :line_sequence

  # (0066,0029) PrimitivePointIndexList dvOW
  # VR values: ["OW"]
  def name("00660029"), do: :primitive_point_index_list

  # (0066,002A) SurfaceCount dvUL
  # VR values: ["UL"]
  def name("0066002A"), do: :surface_count

  # (0066,002B) ReferencedSurfaceSequence dvSQ
  # VR values: ["SQ"]
  def name("0066002B"), do: :referenced_surface_sequence

  # (0066,002C) ReferencedSurfaceNumber dvUL
  # VR values: ["UL"]
  def name("0066002C"), do: :referenced_surface_number

  # (0066,002D) SegmentSurfaceGenerationAlgorithmIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("0066002D"), do: :segment_surface_generation_algorithm_identification_sequence

  # (0066,002E) SegmentSurfaceSourceInstanceSequence dvSQ
  # VR values: ["SQ"]
  def name("0066002E"), do: :segment_surface_source_instance_sequence

  # (0066,002F) AlgorithmFamilyCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0066002F"), do: :algorithm_family_code_sequence

  # (0066,0030) AlgorithmNameCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00660030"), do: :algorithm_name_code_sequence

  # (0066,0031) AlgorithmVersion dvLO
  # VR values: ["LO"]
  def name("00660031"), do: :algorithm_version

  # (0066,0032) AlgorithmParameters dvLT
  # VR values: ["LT"]
  def name("00660032"), do: :algorithm_parameters

  # (0066,0034) FacetSequence dvSQ
  # VR values: ["SQ"]
  def name("00660034"), do: :facet_sequence

  # (0066,0035) SurfaceProcessingAlgorithmIdentificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00660035"), do: :surface_processing_algorithm_identification_sequence

  # (0066,0036) AlgorithmName dvLO
  # VR values: ["LO"]
  def name("00660036"), do: :algorithm_name

  # (0066,0037) RecommendedPointRadius dvFL
  # VR values: ["FL"]
  def name("00660037"), do: :recommended_point_radius

  # (0066,0038) RecommendedLineThickness dvFL
  # VR values: ["FL"]
  def name("00660038"), do: :recommended_line_thickness

  # (0066,0040) LongPrimitivePointIndexList dvUL
  # VR values: ["UL"]
  def name("00660040"), do: :long_primitive_point_index_list

  # (0066,0041) LongTrianglePointIndexList dvUL
  # VR values: ["UL"]
  def name("00660041"), do: :long_triangle_point_index_list

  # (0066,0042) LongEdgePointIndexList dvUL
  # VR values: ["UL"]
  def name("00660042"), do: :long_edge_point_index_list

  # (0066,0043) LongVertexPointIndexList dvUL
  # VR values: ["UL"]
  def name("00660043"), do: :long_vertex_point_index_list

  # (0068,6210) ImplantSize dvLO
  # VR values: ["LO"]
  def name("00686210"), do: :implant_size

  # (0068,6221) ImplantTemplateVersion dvLO
  # VR values: ["LO"]
  def name("00686221"), do: :implant_template_version

  # (0068,6222) ReplacedImplantTemplateSequence dvSQ
  # VR values: ["SQ"]
  def name("00686222"), do: :replaced_implant_template_sequence

  # (0068,6223) ImplantType dvCS
  # VR values: ["CS"]
  def name("00686223"), do: :implant_type

  # (0068,6224) DerivationImplantTemplateSequence dvSQ
  # VR values: ["SQ"]
  def name("00686224"), do: :derivation_implant_template_sequence

  # (0068,6225) OriginalImplantTemplateSequence dvSQ
  # VR values: ["SQ"]
  def name("00686225"), do: :original_implant_template_sequence

  # (0068,6226) EffectiveDate/Time dvDT
  # VR values: ["DT"]
  def name("00686226"), do: :effective_date__time

  # (0068,6230) ImplantTargetAnatomySequence dvSQ
  # VR values: ["SQ"]
  def name("00686230"), do: :implant_target_anatomy_sequence

  # (0068,6260) InformationFromManufacturerSequence dvSQ
  # VR values: ["SQ"]
  def name("00686260"), do: :information_from_manufacturer_sequence

  # (0068,6265) NotificationFromManufacturerSequence dvSQ
  # VR values: ["SQ"]
  def name("00686265"), do: :notification_from_manufacturer_sequence

  # (0068,6270) InformationIssueDate/Time dvDT
  # VR values: ["DT"]
  def name("00686270"), do: :information_issue_date__time

  # (0068,6280) InformationSummary dvST
  # VR values: ["ST"]
  def name("00686280"), do: :information_summary

  # (0068,62A0) ImplantRegulatoryDisapprovalCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("006862A0"), do: :implant_regulatory_disapproval_code_sequence

  # (0068,62A5) OverallTemplateSpatialTolerance dvFD
  # VR values: ["FD"]
  def name("006862A5"), do: :overall_template_spatial_tolerance

  # (0068,62C0) HPGLDocumentSequence dvSQ
  # VR values: ["SQ"]
  def name("006862C0"), do: :hpgl_document_sequence

  # (0068,62D0) HPGLDocumentID dvUS
  # VR values: ["US"]
  def name("006862D0"), do: :hpgl_document_id

  # (0068,62D5) HPGLDocumentLabel dvLO
  # VR values: ["LO"]
  def name("006862D5"), do: :hpgl_document_label

  # (0068,62E0) ViewOrientationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("006862E0"), do: :view_orientation_code_sequence

  # (0068,62F0) ViewOrientationModifier dvFD
  # VR values: ["FD"]
  def name("006862F0"), do: :view_orientation_modifier

  # (0068,62F2) HPGLDocumentScaling dvFD
  # VR values: ["FD"]
  def name("006862F2"), do: :hpgl_document_scaling

  # (0068,6300) HPGLDocument dvOB
  # VR values: ["OB"]
  def name("00686300"), do: :hpgl_document

  # (0068,6310) HPGLContourPenNumber dvUS
  # VR values: ["US"]
  def name("00686310"), do: :hpgl_contour_pen_number

  # (0068,6320) HPGLPenSequence dvSQ
  # VR values: ["SQ"]
  def name("00686320"), do: :hpgl_pen_sequence

  # (0068,6330) HPGLPenNumber dvUS
  # VR values: ["US"]
  def name("00686330"), do: :hpgl_pen_number

  # (0068,6340) HPGLPenLabel dvLO
  # VR values: ["LO"]
  def name("00686340"), do: :hpgl_pen_label

  # (0068,6345) HPGLPenDescription dvST
  # VR values: ["ST"]
  def name("00686345"), do: :hpgl_pen_description

  # (0068,6346) RecommendedRotationPoint dvFD
  # VR values: ["FD"]
  def name("00686346"), do: :recommended_rotation_point

  # (0068,6347) BoundingRectangle dvFD
  # VR values: ["FD"]
  def name("00686347"), do: :bounding_rectangle

  # (0068,6350) ImplantTemplate3DModelSurfaceNumber dvUS
  # VR values: ["US"]
  def name("00686350"), do: :implant_template3_d_model_surface_number

  # (0068,6360) SurfaceModelDescriptionSequence dvSQ
  # VR values: ["SQ"]
  def name("00686360"), do: :surface_model_description_sequence

  # (0068,6380) SurfaceModelLabel dvLO
  # VR values: ["LO"]
  def name("00686380"), do: :surface_model_label

  # (0068,6390) SurfaceModelScalingFactor dvFD
  # VR values: ["FD"]
  def name("00686390"), do: :surface_model_scaling_factor

  # (0068,63A0) MaterialsCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("006863A0"), do: :materials_code_sequence

  # (0068,63A4) CoatingMaterialsCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("006863A4"), do: :coating_materials_code_sequence

  # (0068,63A8) ImplantTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("006863A8"), do: :implant_type_code_sequence

  # (0068,63AC) FixationMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("006863AC"), do: :fixation_method_code_sequence

  # (0068,63B0) MatingFeatureSetsSequence dvSQ
  # VR values: ["SQ"]
  def name("006863B0"), do: :mating_feature_sets_sequence

  # (0068,63C0) MatingFeatureSetID dvUS
  # VR values: ["US"]
  def name("006863C0"), do: :mating_feature_set_id

  # (0068,63D0) MatingFeatureSetLabel dvLO
  # VR values: ["LO"]
  def name("006863D0"), do: :mating_feature_set_label

  # (0068,63E0) MatingFeatureSequence dvSQ
  # VR values: ["SQ"]
  def name("006863E0"), do: :mating_feature_sequence

  # (0068,63F0) MatingFeatureID dvUS
  # VR values: ["US"]
  def name("006863F0"), do: :mating_feature_id

  # (0068,6400) MatingFeatureDegreeofFreedomSequence dvSQ
  # VR values: ["SQ"]
  def name("00686400"), do: :mating_feature_degreeof_freedom_sequence

  # (0068,6410) DegreeofFreedomID dvUS
  # VR values: ["US"]
  def name("00686410"), do: :degreeof_freedom_id

  # (0068,6420) DegreeofFreedomType dvCS
  # VR values: ["CS"]
  def name("00686420"), do: :degreeof_freedom_type

  # (0068,6430) 2DMatingFeatureCoordinatesSequence dvSQ
  # VR values: ["SQ"]
  def name("00686430"), do: :__d_mating_feature_coordinates_sequence

  # (0068,6440) ReferencedHPGLDocumentID dvUS
  # VR values: ["US"]
  def name("00686440"), do: :referenced_hpgl_document_id

  # (0068,6450) 2DMatingPoint dvFD
  # VR values: ["FD"]
  def name("00686450"), do: :__d_mating_point

  # (0068,6460) 2DMatingAxes dvFD
  # VR values: ["FD"]
  def name("00686460"), do: :__d_mating_axes

  # (0068,6470) 2DDegreeofFreedomSequence dvSQ
  # VR values: ["SQ"]
  def name("00686470"), do: :__d_degreeof_freedom_sequence

  # (0068,6490) 3DDegreeofFreedomAxis dvFD
  # VR values: ["FD"]
  def name("00686490"), do: :__d_degreeof_freedom_axis

  # (0068,64A0) RangeofFreedom dvFD
  # VR values: ["FD"]
  def name("006864A0"), do: :rangeof_freedom

  # (0068,64C0) 3DMatingPoint dvFD
  # VR values: ["FD"]
  def name("006864C0"), do: :__d_mating_point

  # (0068,64D0) 3DMatingAxes dvFD
  # VR values: ["FD"]
  def name("006864D0"), do: :__d_mating_axes

  # (0068,64F0) 2DDegreeofFreedomAxis dvFD
  # VR values: ["FD"]
  def name("006864F0"), do: :__d_degreeof_freedom_axis

  # (0068,6500) PlanningLandmarkPointSequence dvSQ
  # VR values: ["SQ"]
  def name("00686500"), do: :planning_landmark_point_sequence

  # (0068,6510) PlanningLandmarkLineSequence dvSQ
  # VR values: ["SQ"]
  def name("00686510"), do: :planning_landmark_line_sequence

  # (0068,6520) PlanningLandmarkPlaneSequence dvSQ
  # VR values: ["SQ"]
  def name("00686520"), do: :planning_landmark_plane_sequence

  # (0068,6530) PlanningLandmarkID dvUS
  # VR values: ["US"]
  def name("00686530"), do: :planning_landmark_id

  # (0068,6540) PlanningLandmarkDescription dvLO
  # VR values: ["LO"]
  def name("00686540"), do: :planning_landmark_description

  # (0068,6545) PlanningLandmarkIdentificationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00686545"), do: :planning_landmark_identification_code_sequence

  # (0068,6550) 2DPointCoordinatesSequence dvSQ
  # VR values: ["SQ"]
  def name("00686550"), do: :__d_point_coordinates_sequence

  # (0068,6560) 2DPointCoordinates dvFD
  # VR values: ["FD"]
  def name("00686560"), do: :__d_point_coordinates

  # (0068,6590) 3DPointCoordinates dvFD
  # VR values: ["FD"]
  def name("00686590"), do: :__d_point_coordinates

  # (0068,65A0) 2DLineCoordinatesSequence dvSQ
  # VR values: ["SQ"]
  def name("006865A0"), do: :__d_line_coordinates_sequence

  # (0068,65B0) 2DLineCoordinates dvFD
  # VR values: ["FD"]
  def name("006865B0"), do: :__d_line_coordinates

  # (0068,65D0) 3DLineCoordinates dvFD
  # VR values: ["FD"]
  def name("006865D0"), do: :__d_line_coordinates

  # (0068,65E0) 2DPlaneCoordinatesSequence dvSQ
  # VR values: ["SQ"]
  def name("006865E0"), do: :__d_plane_coordinates_sequence

  # (0068,65F0) 2DPlaneIntersection dvFD
  # VR values: ["FD"]
  def name("006865F0"), do: :__d_plane_intersection

  # (0068,6610) 3DPlaneOrigin dvFD
  # VR values: ["FD"]
  def name("00686610"), do: :__d_plane_origin

  # (0068,6620) 3DPlaneNormal dvFD
  # VR values: ["FD"]
  def name("00686620"), do: :__d_plane_normal

  # (0070,0000) PresentationStateGroupLength dvUL
  # VR values: ["UL"]
  def name("00700000"), do: :presentation_state_group_length

  # (0070,0001) GraphicAnnotationSequence dvSQ
  # VR values: ["SQ"]
  def name("00700001"), do: :graphic_annotation_sequence

  # (0070,0002) GraphicLayer dvCS
  # VR values: ["CS"]
  def name("00700002"), do: :graphic_layer

  # (0070,0003) BoundingBoxAnnotationUnits dvCS
  # VR values: ["CS"]
  def name("00700003"), do: :bounding_box_annotation_units

  # (0070,0004) AnchorPointAnnotationUnits dvCS
  # VR values: ["CS"]
  def name("00700004"), do: :anchor_point_annotation_units

  # (0070,0005) GraphicAnnotationUnits dvCS
  # VR values: ["CS"]
  def name("00700005"), do: :graphic_annotation_units

  # (0070,0006) UnformattedTextValue dvST
  # VR values: ["ST"]
  def name("00700006"), do: :unformatted_text_value

  # (0070,0008) TextObjectSequence dvSQ
  # VR values: ["SQ"]
  def name("00700008"), do: :text_object_sequence

  # (0070,0009) GraphicObjectSequence dvSQ
  # VR values: ["SQ"]
  def name("00700009"), do: :graphic_object_sequence

  # (0070,0010) BoundingBoxTopLeftHandCorner dvFL
  # VR values: ["FL"]
  def name("00700010"), do: :bounding_box_top_left_hand_corner

  # (0070,0011) BoundingBoxBottomRightHandCorner dvFL
  # VR values: ["FL"]
  def name("00700011"), do: :bounding_box_bottom_right_hand_corner

  # (0070,0012) BoundingBoxTextHorizontalJustification dvCS
  # VR values: ["CS"]
  def name("00700012"), do: :bounding_box_text_horizontal_justification

  # (0070,0014) AnchorPoint dvFL
  # VR values: ["FL"]
  def name("00700014"), do: :anchor_point

  # (0070,0015) AnchorPointVisibility dvCS
  # VR values: ["CS"]
  def name("00700015"), do: :anchor_point_visibility

  # (0070,0020) GraphicDimensions dvUS
  # VR values: ["US"]
  def name("00700020"), do: :graphic_dimensions

  # (0070,0021) NumberofGraphicPoints dvUS
  # VR values: ["US"]
  def name("00700021"), do: :numberof_graphic_points

  # (0070,0022) GraphicData dvFL
  # VR values: ["FL"]
  def name("00700022"), do: :graphic_data

  # (0070,0023) GraphicType dvCS
  # VR values: ["CS"]
  def name("00700023"), do: :graphic_type

  # (0070,0024) GraphicFilled dvCS
  # VR values: ["CS"]
  def name("00700024"), do: :graphic_filled

  # (0070,0040) ImageRotation(Retired) dvIS
  # VR values: ["IS"]
  def name("00700040"), do: :image_rotation_retired

  # (0070,0041) ImageHorizontalFlip dvCS
  # VR values: ["CS"]
  def name("00700041"), do: :image_horizontal_flip

  # (0070,0042) ImageRotation dvUS
  # VR values: ["US"]
  def name("00700042"), do: :image_rotation

  # (0070,0050) DisplayedAreaTopLeftHandCorner(Trial) dvUS
  # VR values: ["US"]
  def name("00700050"), do: :displayed_area_top_left_hand_corner_trial

  # (0070,0051) DisplayedAreaBottomRightHandCorner(Trial) dvUS
  # VR values: ["US"]
  def name("00700051"), do: :displayed_area_bottom_right_hand_corner_trial

  # (0070,0052) DisplayedAreaTopLeftHandCorner dvSL
  # VR values: ["SL"]
  def name("00700052"), do: :displayed_area_top_left_hand_corner

  # (0070,0053) DisplayedAreaBottomRightHandCorner dvSL
  # VR values: ["SL"]
  def name("00700053"), do: :displayed_area_bottom_right_hand_corner

  # (0070,005A) DisplayedAreaSelectionSequence dvSQ
  # VR values: ["SQ"]
  def name("0070005A"), do: :displayed_area_selection_sequence

  # (0070,0060) GraphicLayerSequence dvSQ
  # VR values: ["SQ"]
  def name("00700060"), do: :graphic_layer_sequence

  # (0070,0062) GraphicLayerOrder dvIS
  # VR values: ["IS"]
  def name("00700062"), do: :graphic_layer_order

  # (0070,0066) GraphicLayerRecommendedDisplayGrayscaleValue dvUS
  # VR values: ["US"]
  def name("00700066"), do: :graphic_layer_recommended_display_grayscale_value

  # (0070,0067) GraphicLayerRecommendedDisplayRGBValue dvUS
  # VR values: ["US"]
  def name("00700067"), do: :graphic_layer_recommended_display_rgb_value

  # (0070,0068) GraphicLayerDescription dvLO
  # VR values: ["LO"]
  def name("00700068"), do: :graphic_layer_description

  # (0070,0080) ContentLabel dvCS
  # VR values: ["CS"]
  def name("00700080"), do: :content_label

  # (0070,0081) ContentDescription dvLO
  # VR values: ["LO"]
  def name("00700081"), do: :content_description

  # (0070,0082) PresentationCreationDate dvDA
  # VR values: ["DA"]
  def name("00700082"), do: :presentation_creation_date

  # (0070,0083) PresentationCreationTime dvTM
  # VR values: ["TM"]
  def name("00700083"), do: :presentation_creation_time

  # (0070,0084) ContentCreator'sName dvPN
  # VR values: ["PN"]
  def name("00700084"), do: :content_creators_name

  # (0070,0086) ContentCreator'sIdentificationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00700086"), do: :content_creators_identification_code_sequence

  # (0070,0087) AlternateContentDescriptionSequence dvSQ
  # VR values: ["SQ"]
  def name("00700087"), do: :alternate_content_description_sequence

  # (0070,0100) PresentationSizeMode dvCS
  # VR values: ["CS"]
  def name("00700100"), do: :presentation_size_mode

  # (0070,0101) PresentationPixelSpacing dvDS
  # VR values: ["DS"]
  def name("00700101"), do: :presentation_pixel_spacing

  # (0070,0102) PresentationPixelAspectRatio dvIS
  # VR values: ["IS"]
  def name("00700102"), do: :presentation_pixel_aspect_ratio

  # (0070,0103) PresentationPixelMagnificationRatio dvFL
  # VR values: ["FL"]
  def name("00700103"), do: :presentation_pixel_magnification_ratio

  # (0070,0207) GraphicGroupLabel dvLO
  # VR values: ["LO"]
  def name("00700207"), do: :graphic_group_label

  # (0070,0208) GraphicGroupDescription dvST
  # VR values: ["ST"]
  def name("00700208"), do: :graphic_group_description

  # (0070,0209) CompoundGraphicSequence dvSQ
  # VR values: ["SQ"]
  def name("00700209"), do: :compound_graphic_sequence

  # (0070,0226) CompoundGraphicInstanceID dvUL
  # VR values: ["UL"]
  def name("00700226"), do: :compound_graphic_instance_id

  # (0070,0227) FontName dvLO
  # VR values: ["LO"]
  def name("00700227"), do: :font_name

  # (0070,0228) FontNameType dvCS
  # VR values: ["CS"]
  def name("00700228"), do: :font_name_type

  # (0070,0229) CSSFontName dvLO
  # VR values: ["LO"]
  def name("00700229"), do: :css_font_name

  # (0070,0230) RotationAngle dvFD
  # VR values: ["FD"]
  def name("00700230"), do: :rotation_angle

  # (0070,0231) TextStyleSequence dvSQ
  # VR values: ["SQ"]
  def name("00700231"), do: :text_style_sequence

  # (0070,0232) LineStyleSequence dvSQ
  # VR values: ["SQ"]
  def name("00700232"), do: :line_style_sequence

  # (0070,0233) FillStyleSequence dvSQ
  # VR values: ["SQ"]
  def name("00700233"), do: :fill_style_sequence

  # (0070,0234) GraphicGroupSequence dvSQ
  # VR values: ["SQ"]
  def name("00700234"), do: :graphic_group_sequence

  # (0070,0241) TextColorCIELabValue dvUS
  # VR values: ["US"]
  def name("00700241"), do: :text_color_cie_lab_value

  # (0070,0242) HorizontalAlignment dvCS
  # VR values: ["CS"]
  def name("00700242"), do: :horizontal_alignment

  # (0070,0243) VerticalAlignment dvCS
  # VR values: ["CS"]
  def name("00700243"), do: :vertical_alignment

  # (0070,0244) ShadowStyle dvCS
  # VR values: ["CS"]
  def name("00700244"), do: :shadow_style

  # (0070,0245) ShadowOffsetX dvFL
  # VR values: ["FL"]
  def name("00700245"), do: :shadow_offset_x

  # (0070,0246) ShadowOffsetY dvFL
  # VR values: ["FL"]
  def name("00700246"), do: :shadow_offset_y

  # (0070,0247) ShadowColorCIELabValue dvUS
  # VR values: ["US"]
  def name("00700247"), do: :shadow_color_cie_lab_value

  # (0070,0248) Underlined dvCS
  # VR values: ["CS"]
  def name("00700248"), do: :underlined

  # (0070,0249) Bold dvCS
  # VR values: ["CS"]
  def name("00700249"), do: :bold

  # (0070,0250) Italic dvCS
  # VR values: ["CS"]
  def name("00700250"), do: :italic

  # (0070,0251) PatternonColorCIELabValue dvUS
  # VR values: ["US"]
  def name("00700251"), do: :patternon_color_cie_lab_value

  # (0070,0252) PatternOffColorCIELabValue dvUS
  # VR values: ["US"]
  def name("00700252"), do: :pattern_off_color_cie_lab_value

  # (0070,0253) LineThickness dvFL
  # VR values: ["FL"]
  def name("00700253"), do: :line_thickness

  # (0070,0254) LineDashingStyle dvCS
  # VR values: ["CS"]
  def name("00700254"), do: :line_dashing_style

  # (0070,0255) LinePattern dvUL
  # VR values: ["UL"]
  def name("00700255"), do: :line_pattern

  # (0070,0256) FillPattern dvOB
  # VR values: ["OB"]
  def name("00700256"), do: :fill_pattern

  # (0070,0257) FillMode dvCS
  # VR values: ["CS"]
  def name("00700257"), do: :fill_mode

  # (0070,0258) ShadowOpacity dvFL
  # VR values: ["FL"]
  def name("00700258"), do: :shadow_opacity

  # (0070,0261) GapLength dvFL
  # VR values: ["FL"]
  def name("00700261"), do: :gap_length

  # (0070,0262) DiameterofVisibility dvFL
  # VR values: ["FL"]
  def name("00700262"), do: :diameterof_visibility

  # (0070,0273) RotationPoint dvFL
  # VR values: ["FL"]
  def name("00700273"), do: :rotation_point

  # (0070,0274) TickAlignment dvCS
  # VR values: ["CS"]
  def name("00700274"), do: :tick_alignment

  # (0070,0278) ShowTickLabel dvCS
  # VR values: ["CS"]
  def name("00700278"), do: :show_tick_label

  # (0070,0279) TickLabelAlignment dvCS
  # VR values: ["CS"]
  def name("00700279"), do: :tick_label_alignment

  # (0070,0282) CompoundGraphicUnits dvCS
  # VR values: ["CS"]
  def name("00700282"), do: :compound_graphic_units

  # (0070,0284) PatternonOpacity dvFL
  # VR values: ["FL"]
  def name("00700284"), do: :patternon_opacity

  # (0070,0285) PatternOffOpacity dvFL
  # VR values: ["FL"]
  def name("00700285"), do: :pattern_off_opacity

  # (0070,0287) MajorTicksSequence dvSQ
  # VR values: ["SQ"]
  def name("00700287"), do: :major_ticks_sequence

  # (0070,0288) TickPosition dvFL
  # VR values: ["FL"]
  def name("00700288"), do: :tick_position

  # (0070,0289) TickLabel dvSH
  # VR values: ["SH"]
  def name("00700289"), do: :tick_label

  # (0070,0294) CompoundGraphicType dvCS
  # VR values: ["CS"]
  def name("00700294"), do: :compound_graphic_type

  # (0070,0295) GraphicGroupID dvUL
  # VR values: ["UL"]
  def name("00700295"), do: :graphic_group_id

  # (0070,0306) ShapeType dvCS
  # VR values: ["CS"]
  def name("00700306"), do: :shape_type

  # (0070,0308) RegistrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00700308"), do: :registration_sequence

  # (0070,0309) MatrixRegistrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00700309"), do: :matrix_registration_sequence

  # (0070,030A) MatrixSequence dvSQ
  # VR values: ["SQ"]
  def name("0070030A"), do: :matrix_sequence

  # (0070,030C) FrameofReferenceTransformationMatrixType dvCS
  # VR values: ["CS"]
  def name("0070030C"), do: :frameof_reference_transformation_matrix_type

  # (0070,030D) RegistrationTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0070030D"), do: :registration_type_code_sequence

  # (0070,030F) FiducialDescription dvST
  # VR values: ["ST"]
  def name("0070030F"), do: :fiducial_description

  # (0070,0310) FiducialIdentifier dvSH
  # VR values: ["SH"]
  def name("00700310"), do: :fiducial_identifier

  # (0070,0311) FiducialIdentifierCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00700311"), do: :fiducial_identifier_code_sequence

  # (0070,0312) ContourUncertaintyRadius dvFD
  # VR values: ["FD"]
  def name("00700312"), do: :contour_uncertainty_radius

  # (0070,0314) UsedFiducialsSequence dvSQ
  # VR values: ["SQ"]
  def name("00700314"), do: :used_fiducials_sequence

  # (0070,0318) GraphicCoordinatesDataSequence dvSQ
  # VR values: ["SQ"]
  def name("00700318"), do: :graphic_coordinates_data_sequence

  # (0070,031A) FiducialUID dvUI
  # VR values: ["UI"]
  def name("0070031A"), do: :fiducial_uid

  # (0070,031C) FiducialSetSequence dvSQ
  # VR values: ["SQ"]
  def name("0070031C"), do: :fiducial_set_sequence

  # (0070,031E) FiducialSequence dvSQ
  # VR values: ["SQ"]
  def name("0070031E"), do: :fiducial_sequence

  # (0070,0401) GraphicLayerRecommendedDisplayCIELabValue dvUS
  # VR values: ["US"]
  def name("00700401"), do: :graphic_layer_recommended_display_cie_lab_value

  # (0070,0402) BlendingSequence dvSQ
  # VR values: ["SQ"]
  def name("00700402"), do: :blending_sequence

  # (0070,0403) RelativeOpacity dvFL
  # VR values: ["FL"]
  def name("00700403"), do: :relative_opacity

  # (0070,0404) ReferencedSpatialRegistrationSequence dvSQ
  # VR values: ["SQ"]
  def name("00700404"), do: :referenced_spatial_registration_sequence

  # (0070,0405) BlendingPosition dvCS
  # VR values: ["CS"]
  def name("00700405"), do: :blending_position

  # (0071,0011) ROI dvOB
  # VR values: ["OB"]
  def name("00710011"), do: :roi

  # (0071,0013) 3DReconstructionData dvOB
  # VR values: ["OB"]
  def name("00710013"), do: :__d_reconstruction_data

  # (0072,0002) HangingProtocolName dvSH
  # VR values: ["SH"]
  def name("00720002"), do: :hanging_protocol_name

  # (0072,0004) HangingProtocolDescription dvLO
  # VR values: ["LO"]
  def name("00720004"), do: :hanging_protocol_description

  # (0072,0006) HangingProtocolLevel dvCS
  # VR values: ["CS"]
  def name("00720006"), do: :hanging_protocol_level

  # (0072,0008) HangingProtocolCreator dvLO
  # VR values: ["LO"]
  def name("00720008"), do: :hanging_protocol_creator

  # (0072,000A) HangingProtocolCreationDate/Time dvDT
  # VR values: ["DT"]
  def name("0072000A"), do: :hanging_protocol_creation_date__time

  # (0072,000C) HangingProtocolDefinitionSequence dvSQ
  # VR values: ["SQ"]
  def name("0072000C"), do: :hanging_protocol_definition_sequence

  # (0072,000E) HangingProtocolUserIdentificationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0072000E"), do: :hanging_protocol_user_identification_code_sequence

  # (0072,0010) HangingProtocolUserGroupName dvLO
  # VR values: ["LO"]
  def name("00720010"), do: :hanging_protocol_user_group_name

  # (0072,0012) SourceHangingProtocolSequence dvSQ
  # VR values: ["SQ"]
  def name("00720012"), do: :source_hanging_protocol_sequence

  # (0072,0014) NumberofPriorsReferenced dvUS
  # VR values: ["US"]
  def name("00720014"), do: :numberof_priors_referenced

  # (0072,0020) ImageSetsSequence dvSQ
  # VR values: ["SQ"]
  def name("00720020"), do: :image_sets_sequence

  # (0072,0022) ImageSetSelectorSequence dvSQ
  # VR values: ["SQ"]
  def name("00720022"), do: :image_set_selector_sequence

  # (0072,0024) ImageSetSelectorUsageFlag dvCS
  # VR values: ["CS"]
  def name("00720024"), do: :image_set_selector_usage_flag

  # (0072,0026) SelectorAttribute dvAT
  # VR values: ["AT"]
  def name("00720026"), do: :selector_attribute

  # (0072,0028) SelectorValueNumber dvUS
  # VR values: ["US"]
  def name("00720028"), do: :selector_value_number

  # (0072,0030) TimeBasedImageSetsSequence dvSQ
  # VR values: ["SQ"]
  def name("00720030"), do: :time_based_image_sets_sequence

  # (0072,0032) ImageSetNumber dvUS
  # VR values: ["US"]
  def name("00720032"), do: :image_set_number

  # (0072,0034) ImageSetSelectorCategory dvCS
  # VR values: ["CS"]
  def name("00720034"), do: :image_set_selector_category

  # (0072,0038) RelativeTime dvUS
  # VR values: ["US"]
  def name("00720038"), do: :relative_time

  # (0072,003A) RelativeTimeUnits dvCS
  # VR values: ["CS"]
  def name("0072003A"), do: :relative_time_units

  # (0072,003C) AbstractPriorValue dvSS
  # VR values: ["SS"]
  def name("0072003C"), do: :abstract_prior_value

  # (0072,003E) AbstractPriorCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0072003E"), do: :abstract_prior_code_sequence

  # (0072,0040) ImageSetLabel dvLO
  # VR values: ["LO"]
  def name("00720040"), do: :image_set_label

  # (0072,0050) SelectorAttributeVR dvCS
  # VR values: ["CS"]
  def name("00720050"), do: :selector_attribute_vr

  # (0072,0052) SelectorSequencePointer dvAT
  # VR values: ["AT"]
  def name("00720052"), do: :selector_sequence_pointer

  # (0072,0054) SelectorSequencePointerPrivateCreator dvLO
  # VR values: ["LO"]
  def name("00720054"), do: :selector_sequence_pointer_private_creator

  # (0072,0056) SelectorAttributePrivateCreator dvLO
  # VR values: ["LO"]
  def name("00720056"), do: :selector_attribute_private_creator

  # (0072,0060) SelectorATValue dvAT
  # VR values: ["AT"]
  def name("00720060"), do: :selector_at_value

  # (0072,0062) SelectorCSValue dvCS
  # VR values: ["CS"]
  def name("00720062"), do: :selector_cs_value

  # (0072,0064) SelectorISValue dvIS
  # VR values: ["IS"]
  def name("00720064"), do: :selector_is_value

  # (0072,0066) SelectorLOValue dvLO
  # VR values: ["LO"]
  def name("00720066"), do: :selector_lo_value

  # (0072,0068) SelectorLTValue dvLT
  # VR values: ["LT"]
  def name("00720068"), do: :selector_lt_value

  # (0072,006A) SelectorPNValue dvPN
  # VR values: ["PN"]
  def name("0072006A"), do: :selector_pn_value

  # (0072,006C) SelectorSHValue dvSH
  # VR values: ["SH"]
  def name("0072006C"), do: :selector_sh_value

  # (0072,006E) SelectorSTValue dvST
  # VR values: ["ST"]
  def name("0072006E"), do: :selector_st_value

  # (0072,0070) SelectorUTValue dvUT
  # VR values: ["UT"]
  def name("00720070"), do: :selector_ut_value

  # (0072,0072) SelectorDSValue dvDS
  # VR values: ["DS"]
  def name("00720072"), do: :selector_ds_value

  # (0072,0074) SelectorFDValue dvFD
  # VR values: ["FD"]
  def name("00720074"), do: :selector_fd_value

  # (0072,0076) SelectorFLValue dvFL
  # VR values: ["FL"]
  def name("00720076"), do: :selector_fl_value

  # (0072,0078) SelectorULValue dvUL
  # VR values: ["UL"]
  def name("00720078"), do: :selector_ul_value

  # (0072,007A) SelectorUSValue dvUS
  # VR values: ["US"]
  def name("0072007A"), do: :selector_us_value

  # (0072,007C) SelectorSLValue dvSL
  # VR values: ["SL"]
  def name("0072007C"), do: :selector_sl_value

  # (0072,007E) SelectorSSValue dvSS
  # VR values: ["SS"]
  def name("0072007E"), do: :selector_ss_value

  # (0072,0080) SelectorCodeSequenceValue dvSQ
  # VR values: ["SQ"]
  def name("00720080"), do: :selector_code_sequence_value

  # (0072,0100) NumberofScreens dvUS
  # VR values: ["US"]
  def name("00720100"), do: :numberof_screens

  # (0072,0102) NominalScreenDefinitionSequence dvSQ
  # VR values: ["SQ"]
  def name("00720102"), do: :nominal_screen_definition_sequence

  # (0072,0104) NumberofVerticalPixels dvUS
  # VR values: ["US"]
  def name("00720104"), do: :numberof_vertical_pixels

  # (0072,0106) NumberofHorizontalPixels dvUS
  # VR values: ["US"]
  def name("00720106"), do: :numberof_horizontal_pixels

  # (0072,0108) DisplayEnvironmentSpatialPosition dvFD
  # VR values: ["FD"]
  def name("00720108"), do: :display_environment_spatial_position

  # (0072,010A) ScreenMinimumGrayscaleBitDepth dvUS
  # VR values: ["US"]
  def name("0072010A"), do: :screen_minimum_grayscale_bit_depth

  # (0072,010C) ScreenMinimumColorBitDepth dvUS
  # VR values: ["US"]
  def name("0072010C"), do: :screen_minimum_color_bit_depth

  # (0072,010E) ApplicationMaximumRepaintTime dvUS
  # VR values: ["US"]
  def name("0072010E"), do: :application_maximum_repaint_time

  # (0072,0200) DisplaySetsSequence dvSQ
  # VR values: ["SQ"]
  def name("00720200"), do: :display_sets_sequence

  # (0072,0202) DisplaySetNumber dvUS
  # VR values: ["US"]
  def name("00720202"), do: :display_set_number

  # (0072,0203) DisplaySetLabel dvLO
  # VR values: ["LO"]
  def name("00720203"), do: :display_set_label

  # (0072,0204) DisplaySetPresentationGroup dvUS
  # VR values: ["US"]
  def name("00720204"), do: :display_set_presentation_group

  # (0072,0206) DisplaySetPresentationGroupDescription dvLO
  # VR values: ["LO"]
  def name("00720206"), do: :display_set_presentation_group_description

  # (0072,0208) PartialDataDisplayHandling dvCS
  # VR values: ["CS"]
  def name("00720208"), do: :partial_data_display_handling

  # (0072,0210) SynchronizedScrollingSequence dvSQ
  # VR values: ["SQ"]
  def name("00720210"), do: :synchronized_scrolling_sequence

  # (0072,0212) DisplaySetScrollingGroup dvUS
  # VR values: ["US"]
  def name("00720212"), do: :display_set_scrolling_group

  # (0072,0214) NavigationIndicatorSequence dvSQ
  # VR values: ["SQ"]
  def name("00720214"), do: :navigation_indicator_sequence

  # (0072,0216) NavigationDisplaySet dvUS
  # VR values: ["US"]
  def name("00720216"), do: :navigation_display_set

  # (0072,0218) ReferenceDisplaySets dvUS
  # VR values: ["US"]
  def name("00720218"), do: :reference_display_sets

  # (0072,0300) ImageBoxesSequence dvSQ
  # VR values: ["SQ"]
  def name("00720300"), do: :image_boxes_sequence

  # (0072,0302) ImageBoxNumber dvUS
  # VR values: ["US"]
  def name("00720302"), do: :image_box_number

  # (0072,0304) ImageBoxLayoutType dvCS
  # VR values: ["CS"]
  def name("00720304"), do: :image_box_layout_type

  # (0072,0306) ImageBoxTileHorizontalDimension dvUS
  # VR values: ["US"]
  def name("00720306"), do: :image_box_tile_horizontal_dimension

  # (0072,0308) ImageBoxTileVerticalDimension dvUS
  # VR values: ["US"]
  def name("00720308"), do: :image_box_tile_vertical_dimension

  # (0072,0310) ImageBoxScrollDirection dvCS
  # VR values: ["CS"]
  def name("00720310"), do: :image_box_scroll_direction

  # (0072,0312) ImageBoxSmallScrollType dvCS
  # VR values: ["CS"]
  def name("00720312"), do: :image_box_small_scroll_type

  # (0072,0314) ImageBoxSmallScrollAmount dvUS
  # VR values: ["US"]
  def name("00720314"), do: :image_box_small_scroll_amount

  # (0072,0316) ImageBoxLargeScrollType dvCS
  # VR values: ["CS"]
  def name("00720316"), do: :image_box_large_scroll_type

  # (0072,0318) ImageBoxLargeScrollAmount dvUS
  # VR values: ["US"]
  def name("00720318"), do: :image_box_large_scroll_amount

  # (0072,0320) ImageBoxOverlapPriority dvUS
  # VR values: ["US"]
  def name("00720320"), do: :image_box_overlap_priority

  # (0072,0330) CineRelativetoReal_Time dvFD
  # VR values: ["FD"]
  def name("00720330"), do: :cine_relativeto_real_time

  # (0072,0400) FilterOperationsSequence dvSQ
  # VR values: ["SQ"]
  def name("00720400"), do: :filter_operations_sequence

  # (0072,0402) Filter_byCategory dvCS
  # VR values: ["CS"]
  def name("00720402"), do: :filter_by_category

  # (0072,0404) Filter_byAttributePresence dvCS
  # VR values: ["CS"]
  def name("00720404"), do: :filter_by_attribute_presence

  # (0072,0406) Filter_byOperator dvCS
  # VR values: ["CS"]
  def name("00720406"), do: :filter_by_operator

  # (0072,0420) StructuredDisplayBackgroundCIELabValue dvUS
  # VR values: ["US"]
  def name("00720420"), do: :structured_display_background_cie_lab_value

  # (0072,0421) EmptyImageBoxCIELabValue dvUS
  # VR values: ["US"]
  def name("00720421"), do: :empty_image_box_cie_lab_value

  # (0072,0422) StructuredDisplayImageBoxSequence dvSQ
  # VR values: ["SQ"]
  def name("00720422"), do: :structured_display_image_box_sequence

  # (0072,0424) StructuredDisplayTextBoxSequence dvSQ
  # VR values: ["SQ"]
  def name("00720424"), do: :structured_display_text_box_sequence

  # (0072,0427) ReferencedFirstFrameSequence dvSQ
  # VR values: ["SQ"]
  def name("00720427"), do: :referenced_first_frame_sequence

  # (0072,0430) ImageBoxSynchronizationSequence dvSQ
  # VR values: ["SQ"]
  def name("00720430"), do: :image_box_synchronization_sequence

  # (0072,0432) SynchronizedImageBoxList dvUS
  # VR values: ["US"]
  def name("00720432"), do: :synchronized_image_box_list

  # (0072,0434) TypeofSynchronization dvCS
  # VR values: ["CS"]
  def name("00720434"), do: :typeof_synchronization

  # (0072,0500) BlendingOperationType dvCS
  # VR values: ["CS"]
  def name("00720500"), do: :blending_operation_type

  # (0072,0510) ReformattingOperationType dvCS
  # VR values: ["CS"]
  def name("00720510"), do: :reformatting_operation_type

  # (0072,0512) ReformattingThickness dvFD
  # VR values: ["FD"]
  def name("00720512"), do: :reformatting_thickness

  # (0072,0514) ReformattingInterval dvFD
  # VR values: ["FD"]
  def name("00720514"), do: :reformatting_interval

  # (0072,0516) ReformattingOperationInitialViewDirection dvCS
  # VR values: ["CS"]
  def name("00720516"), do: :reformatting_operation_initial_view_direction

  # (0072,0520) 3DRenderingType dvCS
  # VR values: ["CS"]
  def name("00720520"), do: :__d_rendering_type

  # (0072,0600) SortingOperationsSequence dvSQ
  # VR values: ["SQ"]
  def name("00720600"), do: :sorting_operations_sequence

  # (0072,0602) Sort_byCategory dvCS
  # VR values: ["CS"]
  def name("00720602"), do: :sort_by_category

  # (0072,0604) SortingDirection dvCS
  # VR values: ["CS"]
  def name("00720604"), do: :sorting_direction

  # (0072,0700) DisplaySetPatientOrientation dvCS
  # VR values: ["CS"]
  def name("00720700"), do: :display_set_patient_orientation

  # (0072,0702) VOIType dvCS
  # VR values: ["CS"]
  def name("00720702"), do: :voi_type

  # (0072,0704) Pseudo_ColorType dvCS
  # VR values: ["CS"]
  def name("00720704"), do: :pseudo_color_type

  # (0072,0705) Pseudo_ColorPaletteInstanceReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("00720705"), do: :pseudo_color_palette_instance_reference_sequence

  # (0072,0706) ShowGrayscaleInverted dvCS
  # VR values: ["CS"]
  def name("00720706"), do: :show_grayscale_inverted

  # (0072,0710) ShowImageTrueSizeFlag dvCS
  # VR values: ["CS"]
  def name("00720710"), do: :show_image_true_size_flag

  # (0072,0712) ShowGraphicAnnotationFlag dvCS
  # VR values: ["CS"]
  def name("00720712"), do: :show_graphic_annotation_flag

  # (0072,0714) ShowPatientDemographicsFlag dvCS
  # VR values: ["CS"]
  def name("00720714"), do: :show_patient_demographics_flag

  # (0072,0716) ShowAcquisitionTechniquesFlag dvCS
  # VR values: ["CS"]
  def name("00720716"), do: :show_acquisition_techniques_flag

  # (0072,0717) DisplaySetHorizontalJustification dvCS
  # VR values: ["CS"]
  def name("00720717"), do: :display_set_horizontal_justification

  # (0072,0718) DisplaySetVerticalJustification dvCS
  # VR values: ["CS"]
  def name("00720718"), do: :display_set_vertical_justification

  # (0074,0120) ContinuationStartMeterset dvFD
  # VR values: ["FD"]
  def name("00740120"), do: :continuation_start_meterset

  # (0074,0121) ContinuationEndMeterset dvFD
  # VR values: ["FD"]
  def name("00740121"), do: :continuation_end_meterset

  # (0074,1000) ProcedureStepState dvCS
  # VR values: ["CS"]
  def name("00741000"), do: :procedure_step_state

  # (0074,1002) ProcedureStepProgressInformationSequence dvSQ
  # VR values: ["SQ"]
  def name("00741002"), do: :procedure_step_progress_information_sequence

  # (0074,1004) ProcedureStepProgress dvDS
  # VR values: ["DS"]
  def name("00741004"), do: :procedure_step_progress

  # (0074,1006) ProcedureStepProgressDescription dvST
  # VR values: ["ST"]
  def name("00741006"), do: :procedure_step_progress_description

  # (0074,1008) ProcedureStepCommunicationsURISequence dvSQ
  # VR values: ["SQ"]
  def name("00741008"), do: :procedure_step_communications_uri_sequence

  # (0074,100A) ContactURI dvUR
  # VR values: ["UR"]
  def name("0074100A"), do: :contact_uri

  # (0074,100C) ContactDisplayName dvLO
  # VR values: ["LO"]
  def name("0074100C"), do: :contact_display_name

  # (0074,100E) ProcedureStepDiscontinuationReasonCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("0074100E"), do: :procedure_step_discontinuation_reason_code_sequence

  # (0074,1020) BeamTaskSequence dvSQ
  # VR values: ["SQ"]
  def name("00741020"), do: :beam_task_sequence

  # (0074,1022) BeamTaskType dvCS
  # VR values: ["CS"]
  def name("00741022"), do: :beam_task_type

  # (0074,1024) BeamOrderIndex(Trial) dvIS
  # VR values: ["IS"]
  def name("00741024"), do: :beam_order_index_trial

  # (0074,1025) AutosequenceFlag dvCS
  # VR values: ["CS"]
  def name("00741025"), do: :autosequence_flag

  # (0074,1026) TableTopVerticalAdjustedPosition dvFD
  # VR values: ["FD"]
  def name("00741026"), do: :table_top_vertical_adjusted_position

  # (0074,1027) TableTopLongitudinalAdjustedPosition dvFD
  # VR values: ["FD"]
  def name("00741027"), do: :table_top_longitudinal_adjusted_position

  # (0074,1028) TableTopLateralAdjustedPosition dvFD
  # VR values: ["FD"]
  def name("00741028"), do: :table_top_lateral_adjusted_position

  # (0074,102A) PatientSupportAdjustedAngle dvFD
  # VR values: ["FD"]
  def name("0074102A"), do: :patient_support_adjusted_angle

  # (0074,102B) TableTopEccentricAdjustedAngle dvFD
  # VR values: ["FD"]
  def name("0074102B"), do: :table_top_eccentric_adjusted_angle

  # (0074,102C) TableTopPitchAdjustedAngle dvFD
  # VR values: ["FD"]
  def name("0074102C"), do: :table_top_pitch_adjusted_angle

  # (0074,102D) TableTopRollAdjustedAngle dvFD
  # VR values: ["FD"]
  def name("0074102D"), do: :table_top_roll_adjusted_angle

  # (0074,1030) DeliveryVerificationImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00741030"), do: :delivery_verification_image_sequence

  # (0074,1032) VerificationImageTiming dvCS
  # VR values: ["CS"]
  def name("00741032"), do: :verification_image_timing

  # (0074,1034) DoubleExposureFlag dvCS
  # VR values: ["CS"]
  def name("00741034"), do: :double_exposure_flag

  # (0074,1036) DoubleExposureOrdering dvCS
  # VR values: ["CS"]
  def name("00741036"), do: :double_exposure_ordering

  # (0074,1038) DoubleExposureMeterset(Trial) dvDS
  # VR values: ["DS"]
  def name("00741038"), do: :double_exposure_meterset_trial

  # (0074,103A) DoubleExposureFieldDelta(Trial) dvDS
  # VR values: ["DS"]
  def name("0074103A"), do: :double_exposure_field_delta_trial

  # (0074,1040) RelatedReferenceRTImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00741040"), do: :related_reference_rt_image_sequence

  # (0074,1042) GeneralMachineVerificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00741042"), do: :general_machine_verification_sequence

  # (0074,1044) ConventionalMachineVerificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00741044"), do: :conventional_machine_verification_sequence

  # (0074,1046) IonMachineVerificationSequence dvSQ
  # VR values: ["SQ"]
  def name("00741046"), do: :ion_machine_verification_sequence

  # (0074,1048) FailedAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("00741048"), do: :failed_attributes_sequence

  # (0074,104A) OverriddenAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("0074104A"), do: :overridden_attributes_sequence

  # (0074,104C) ConventionalControlPointVerificationSequence dvSQ
  # VR values: ["SQ"]
  def name("0074104C"), do: :conventional_control_point_verification_sequence

  # (0074,104E) IonControlPointVerificationSequence dvSQ
  # VR values: ["SQ"]
  def name("0074104E"), do: :ion_control_point_verification_sequence

  # (0074,1050) AttributeOccurrenceSequence dvSQ
  # VR values: ["SQ"]
  def name("00741050"), do: :attribute_occurrence_sequence

  # (0074,1052) AttributeOccurrencePointer dvAT
  # VR values: ["AT"]
  def name("00741052"), do: :attribute_occurrence_pointer

  # (0074,1054) AttributeItemSelector dvUL
  # VR values: ["UL"]
  def name("00741054"), do: :attribute_item_selector

  # (0074,1056) AttributeOccurrencePrivateCreator dvLO
  # VR values: ["LO"]
  def name("00741056"), do: :attribute_occurrence_private_creator

  # (0074,1057) SelectorSequencePointerItems dvIS
  # VR values: ["IS"]
  def name("00741057"), do: :selector_sequence_pointer_items

  # (0074,1200) ScheduledProcedureStepPriority dvCS
  # VR values: ["CS"]
  def name("00741200"), do: :scheduled_procedure_step_priority

  # (0074,1202) WorklistLabel dvLO
  # VR values: ["LO"]
  def name("00741202"), do: :worklist_label

  # (0074,1204) ProcedureStepLabel dvLO
  # VR values: ["LO"]
  def name("00741204"), do: :procedure_step_label

  # (0074,1210) ScheduledProcessingParametersSequence dvSQ
  # VR values: ["SQ"]
  def name("00741210"), do: :scheduled_processing_parameters_sequence

  # (0074,1212) PerformedProcessingParametersSequence dvSQ
  # VR values: ["SQ"]
  def name("00741212"), do: :performed_processing_parameters_sequence

  # (0074,1216) UnifiedProcedureStepPerformedProcedureSequence dvSQ
  # VR values: ["SQ"]
  def name("00741216"), do: :unified_procedure_step_performed_procedure_sequence

  # (0074,1220) RelatedProcedureStepSequence dvSQ
  # VR values: ["SQ"]
  def name("00741220"), do: :related_procedure_step_sequence

  # (0074,1222) ProcedureStepRelationshipType dvLO
  # VR values: ["LO"]
  def name("00741222"), do: :procedure_step_relationship_type

  # (0074,1224) ReplacedProcedureStepSequence dvSQ
  # VR values: ["SQ"]
  def name("00741224"), do: :replaced_procedure_step_sequence

  # (0074,1230) DeletionLock dvLO
  # VR values: ["LO"]
  def name("00741230"), do: :deletion_lock

  # (0074,1234) ReceivingAE dvAE
  # VR values: ["AE"]
  def name("00741234"), do: :receiving_ae

  # (0074,1236) RequestingAE dvAE
  # VR values: ["AE"]
  def name("00741236"), do: :requesting_ae

  # (0074,1238) ReasonforCancellation dvLT
  # VR values: ["LT"]
  def name("00741238"), do: :reasonfor_cancellation

  # (0074,1242) SCPStatus dvCS
  # VR values: ["CS"]
  def name("00741242"), do: :scp_status

  # (0074,1244) SubscriptionListStatus dvCS
  # VR values: ["CS"]
  def name("00741244"), do: :subscription_list_status

  # (0074,1246) UnifiedProcedureStepListStatus dvCS
  # VR values: ["CS"]
  def name("00741246"), do: :unified_procedure_step_list_status

  # (0074,1324) BeamOrderIndex dvUL
  # VR values: ["UL"]
  def name("00741324"), do: :beam_order_index

  # (0074,1338) DoubleExposureMeterset dvFD
  # VR values: ["FD"]
  def name("00741338"), do: :double_exposure_meterset

  # (0074,133A) DoubleExposureFieldDelta dvFD
  # VR values: ["FD"]
  def name("0074133A"), do: :double_exposure_field_delta

  # (0076,0001) ImplantAssemblyTemplateName dvLO
  # VR values: ["LO"]
  def name("00760001"), do: :implant_assembly_template_name

  # (0076,0003) ImplantAssemblyTemplateIssuer dvLO
  # VR values: ["LO"]
  def name("00760003"), do: :implant_assembly_template_issuer

  # (0076,0006) ImplantAssemblyTemplateVersion dvLO
  # VR values: ["LO"]
  def name("00760006"), do: :implant_assembly_template_version

  # (0076,0008) ReplacedImplantAssemblyTemplateSequence dvSQ
  # VR values: ["SQ"]
  def name("00760008"), do: :replaced_implant_assembly_template_sequence

  # (0076,000A) ImplantAssemblyTemplateType dvCS
  # VR values: ["CS"]
  def name("0076000A"), do: :implant_assembly_template_type

  # (0076,000C) OriginalImplantAssemblyTemplateSequence dvSQ
  # VR values: ["SQ"]
  def name("0076000C"), do: :original_implant_assembly_template_sequence

  # (0076,000E) DerivationImplantAssemblyTemplateSequence dvSQ
  # VR values: ["SQ"]
  def name("0076000E"), do: :derivation_implant_assembly_template_sequence

  # (0076,0010) ImplantAssemblyTemplateTargetAnatomySequence dvSQ
  # VR values: ["SQ"]
  def name("00760010"), do: :implant_assembly_template_target_anatomy_sequence

  # (0076,0020) ProcedureTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00760020"), do: :procedure_type_code_sequence

  # (0076,0030) SurgicalTechnique dvLO
  # VR values: ["LO"]
  def name("00760030"), do: :surgical_technique

  # (0076,0032) ComponentTypesSequence dvSQ
  # VR values: ["SQ"]
  def name("00760032"), do: :component_types_sequence

  # (0076,0034) ComponentTypeCodeSequence dvCS
  # VR values: ["CS"]
  def name("00760034"), do: :component_type_code_sequence

  # (0076,0036) ExclusiveComponentType dvCS
  # VR values: ["CS"]
  def name("00760036"), do: :exclusive_component_type

  # (0076,0038) MandatoryComponentType dvCS
  # VR values: ["CS"]
  def name("00760038"), do: :mandatory_component_type

  # (0076,0040) ComponentSequence dvSQ
  # VR values: ["SQ"]
  def name("00760040"), do: :component_sequence

  # (0076,0055) ComponentID dvUS
  # VR values: ["US"]
  def name("00760055"), do: :component_id

  # (0076,0060) ComponentAssemblySequence dvSQ
  # VR values: ["SQ"]
  def name("00760060"), do: :component_assembly_sequence

  # (0076,0070) Component1ReferencedID dvUS
  # VR values: ["US"]
  def name("00760070"), do: :component1_referenced_id

  # (0076,0080) Component1ReferencedMatingFeatureSetID dvUS
  # VR values: ["US"]
  def name("00760080"), do: :component1_referenced_mating_feature_set_id

  # (0076,0090) Component1ReferencedMatingFeatureID dvUS
  # VR values: ["US"]
  def name("00760090"), do: :component1_referenced_mating_feature_id

  # (0076,00A0) Component2ReferencedID dvUS
  # VR values: ["US"]
  def name("007600A0"), do: :component2_referenced_id

  # (0076,00B0) Component2ReferencedMatingFeatureSetID dvUS
  # VR values: ["US"]
  def name("007600B0"), do: :component2_referenced_mating_feature_set_id

  # (0076,00C0) Component2ReferencedMatingFeatureID dvUS
  # VR values: ["US"]
  def name("007600C0"), do: :component2_referenced_mating_feature_id

  # (0078,0001) ImplantTemplateGroupName dvLO
  # VR values: ["LO"]
  def name("00780001"), do: :implant_template_group_name

  # (0078,0010) ImplantTemplateGroupDescription dvST
  # VR values: ["ST"]
  def name("00780010"), do: :implant_template_group_description

  # (0078,0020) ImplantTemplateGroupIssuer dvLO
  # VR values: ["LO"]
  def name("00780020"), do: :implant_template_group_issuer

  # (0078,0024) ImplantTemplateGroupVersion dvLO
  # VR values: ["LO"]
  def name("00780024"), do: :implant_template_group_version

  # (0078,0026) ReplacedImplantTemplateGroupSequence dvSQ
  # VR values: ["SQ"]
  def name("00780026"), do: :replaced_implant_template_group_sequence

  # (0078,0028) ImplantTemplateGroupTargetAnatomySequence dvSQ
  # VR values: ["SQ"]
  def name("00780028"), do: :implant_template_group_target_anatomy_sequence

  # (0078,002A) ImplantTemplateGroupMembersSequence dvSQ
  # VR values: ["SQ"]
  def name("0078002A"), do: :implant_template_group_members_sequence

  # (0078,002E) ImplantTemplateGroupMemberID dvUS
  # VR values: ["US"]
  def name("0078002E"), do: :implant_template_group_member_id

  # (0078,0050) 3DImplantTemplateGroupMemberMatchingPoint dvFD
  # VR values: ["FD"]
  def name("00780050"), do: :__d_implant_template_group_member_matching_point

  # (0078,0060) 3DImplantTemplateGroupMemberMatchingAxes dvFD
  # VR values: ["FD"]
  def name("00780060"), do: :__d_implant_template_group_member_matching_axes

  # (0078,0070) ImplantTemplateGroupMemberMatching2DCoordinatesSequence dvSQ
  # VR values: ["SQ"]
  def name("00780070"), do: :implant_template_group_member_matching2_d_coordinates_sequence

  # (0078,0090) 2DImplantTemplateGroupMemberMatchingPoint dvFD
  # VR values: ["FD"]
  def name("00780090"), do: :__d_implant_template_group_member_matching_point

  # (0078,00A0) 2DImplantTemplateGroupMemberMatchingAxes dvFD
  # VR values: ["FD"]
  def name("007800A0"), do: :__d_implant_template_group_member_matching_axes

  # (0078,00B0) ImplantTemplateGroupVariationDimensionSequence dvSQ
  # VR values: ["SQ"]
  def name("007800B0"), do: :implant_template_group_variation_dimension_sequence

  # (0078,00B2) ImplantTemplateGroupVariationDimensionName dvLO
  # VR values: ["LO"]
  def name("007800B2"), do: :implant_template_group_variation_dimension_name

  # (0078,00B4) ImplantTemplateGroupVariationDimensionRankSequence dvSQ
  # VR values: ["SQ"]
  def name("007800B4"), do: :implant_template_group_variation_dimension_rank_sequence

  # (0078,00B6) ReferencedImplantTemplateGroupMemberID dvUS
  # VR values: ["US"]
  def name("007800B6"), do: :referenced_implant_template_group_member_id

  # (0078,00B8) ImplantTemplateGroupVariationDimensionRank dvUS
  # VR values: ["US"]
  def name("007800B8"), do: :implant_template_group_variation_dimension_rank

  # (0080,0001) SurfaceScanAcquisitionTypeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00800001"), do: :surface_scan_acquisition_type_code_sequence

  # (0080,0002) SurfaceScanModeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00800002"), do: :surface_scan_mode_code_sequence

  # (0080,0003) RegistrationMethodCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("00800003"), do: :registration_method_code_sequence

  # (0080,0004) ShotDurationTime dvFD
  # VR values: ["FD"]
  def name("00800004"), do: :shot_duration_time

  # (0080,0005) ShotOffsetTime dvFD
  # VR values: ["FD"]
  def name("00800005"), do: :shot_offset_time

  # (0080,0006) SurfacePointPresentationValueData dvUS
  # VR values: ["US"]
  def name("00800006"), do: :surface_point_presentation_value_data

  # (0080,0007) SurfacePointColorCIELabValueData dvUS
  # VR values: ["US"]
  def name("00800007"), do: :surface_point_color_cie_lab_value_data

  # (0080,0008) UVMappingSequence dvSQ
  # VR values: ["SQ"]
  def name("00800008"), do: :uv_mapping_sequence

  # (0080,0009) TextureLabel dvSH
  # VR values: ["SH"]
  def name("00800009"), do: :texture_label

  # (0080,0010) UValueData dvOF
  # VR values: ["OF"]
  def name("00800010"), do: :u_value_data

  # (0080,0011) VValueData dvOF
  # VR values: ["OF"]
  def name("00800011"), do: :v_value_data

  # (0080,0012) ReferencedTextureSequence dvSQ
  # VR values: ["SQ"]
  def name("00800012"), do: :referenced_texture_sequence

  # (0080,0013) ReferencedSurfaceDataSequence dvSQ
  # VR values: ["SQ"]
  def name("00800013"), do: :referenced_surface_data_sequence

  # (0087,0010) Undocumented dvCS
  # VR values: ["CS"]
  def name("00870010"), do: :undocumented

  # (0087,0020) Undocumented dvCS
  # VR values: ["CS"]
  def name("00870020"), do: :undocumented

  # (0087,0050) Undocumented dvIS
  # VR values: ["IS"]
  def name("00870050"), do: :undocumented

  # (0088,0000) StorageGroupLength dvUL
  # VR values: ["UL"]
  def name("00880000"), do: :storage_group_length

  # (0088,0130) StorageMediaFile_setID dvSH
  # VR values: ["SH"]
  def name("00880130"), do: :storage_media_file_set_id

  # (0088,0140) StorageMediaFile_setUID dvUI
  # VR values: ["UI"]
  def name("00880140"), do: :storage_media_file_set_uid

  # (0088,0200) IconImageSequence dvSQ
  # VR values: ["SQ"]
  def name("00880200"), do: :icon_image_sequence

  # (0088,0904) TopicTitle dvLO
  # VR values: ["LO"]
  def name("00880904"), do: :topic_title

  # (0088,0906) TopicSubject dvST
  # VR values: ["ST"]
  def name("00880906"), do: :topic_subject

  # (0088,0910) TopicAuthor dvLO
  # VR values: ["LO"]
  def name("00880910"), do: :topic_author

  # (0088,0912) TopicKeywords dvLO
  # VR values: ["LO"]
  def name("00880912"), do: :topic_keywords

  # (0095,0001) Undocumented dvLT
  # VR values: ["LT"]
  def name("00950001"), do: :undocumented

  # (0095,0004) Undocumented dvUL
  # VR values: ["UL"]
  def name("00950004"), do: :undocumented

  # (0095,0005) Undocumented dvLT
  # VR values: ["LT"]
  def name("00950005"), do: :undocumented

  # (0095,0007) Undocumented dvLT
  # VR values: ["LT"]
  def name("00950007"), do: :undocumented

  # (0099,0002) Undocumented dvUL
  # VR values: ["UL"]
  def name("00990002"), do: :undocumented

  # (00E1,0001) Undocumented dvUS
  # VR values: ["US"]
  def name("00E10001"), do: :undocumented

  # (00E1,0014) Undocumented dvLT
  # VR values: ["LT"]
  def name("00E10014"), do: :undocumented

  # (00E1,0022) Undocumented dvDS
  # VR values: ["DS"]
  def name("00E10022"), do: :undocumented

  # (00E1,0023) Undocumented dvDS
  # VR values: ["DS"]
  def name("00E10023"), do: :undocumented

  # (00E1,0024) Undocumented dvLT
  # VR values: ["LT"]
  def name("00E10024"), do: :undocumented

  # (00E1,0025) Undocumented dvLT
  # VR values: ["LT"]
  def name("00E10025"), do: :undocumented

  # (00E1,0040) Undocumented dvSH
  # VR values: ["SH"]
  def name("00E10040"), do: :undocumented

  # (0100,0410) SOPInstanceStatus dvCS
  # VR values: ["CS"]
  def name("01000410"), do: :sop_instance_status

  # (0100,0420) SOPAuthorizationDate/Time dvDT
  # VR values: ["DT"]
  def name("01000420"), do: :sop_authorization_date__time

  # (0100,0424) SOPAuthorizationComment dvLT
  # VR values: ["LT"]
  def name("01000424"), do: :sop_authorization_comment

  # (0100,0426) AuthorizationEquipmentCertificationNumber dvLO
  # VR values: ["LO"]
  def name("01000426"), do: :authorization_equipment_certification_number

  # (0193,0002) Undocumented dvDS
  # VR values: ["DS"]
  def name("01930002"), do: :undocumented

  # (0307,0001) Undocumented dvUN
  # VR values: ["UN"]
  def name("03070001"), do: :undocumented

  # (0309,0001) Undocumented dvUN
  # VR values: ["UN"]
  def name("03090001"), do: :undocumented

  # (0400,0005) MACIDNumber dvUS
  # VR values: ["US"]
  def name("04000005"), do: :macid_number

  # (0400,0010) MACCalculationTransferSyntaxUID dvUI
  # VR values: ["UI"]
  def name("04000010"), do: :mac_calculation_transfer_syntax_uid

  # (0400,0015) MACAlgorithm dvCS
  # VR values: ["CS"]
  def name("04000015"), do: :mac_algorithm

  # (0400,0020) DataElementsSigned dvAT
  # VR values: ["AT"]
  def name("04000020"), do: :data_elements_signed

  # (0400,0100) DigitalSignatureUID dvUI
  # VR values: ["UI"]
  def name("04000100"), do: :digital_signature_uid

  # (0400,0105) DigitalSignatureDate/Time dvDT
  # VR values: ["DT"]
  def name("04000105"), do: :digital_signature_date__time

  # (0400,0110) CertificateType dvCS
  # VR values: ["CS"]
  def name("04000110"), do: :certificate_type

  # (0400,0115) CertificateofSigner dvOB
  # VR values: ["OB"]
  def name("04000115"), do: :certificateof_signer

  # (0400,0120) Signature dvOB
  # VR values: ["OB"]
  def name("04000120"), do: :signature

  # (0400,0305) CertifiedTimestampType dvCS
  # VR values: ["CS"]
  def name("04000305"), do: :certified_timestamp_type

  # (0400,0310) CertifiedTimestamp dvOB
  # VR values: ["OB"]
  def name("04000310"), do: :certified_timestamp

  # (0400,0401) DigitalSignaturePurposeCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("04000401"), do: :digital_signature_purpose_code_sequence

  # (0400,0402) ReferencedDigitalSignatureSequence dvSQ
  # VR values: ["SQ"]
  def name("04000402"), do: :referenced_digital_signature_sequence

  # (0400,0403) ReferencedSOPInstanceMACSequence dvSQ
  # VR values: ["SQ"]
  def name("04000403"), do: :referenced_sop_instance_mac_sequence

  # (0400,0404) MAC dvOB
  # VR values: ["OB"]
  def name("04000404"), do: :mac

  # (0400,0500) EncryptedAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("04000500"), do: :encrypted_attributes_sequence

  # (0400,0510) EncryptedContentTransferSyntaxUID dvUI
  # VR values: ["UI"]
  def name("04000510"), do: :encrypted_content_transfer_syntax_uid

  # (0400,0520) EncryptedContent dvOB
  # VR values: ["OB"]
  def name("04000520"), do: :encrypted_content

  # (0400,0550) ModifiedAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("04000550"), do: :modified_attributes_sequence

  # (0400,0561) OriginalAttributesSequence dvSQ
  # VR values: ["SQ"]
  def name("04000561"), do: :original_attributes_sequence

  # (0400,0562) AttributeModificationDate/Time dvDT
  # VR values: ["DT"]
  def name("04000562"), do: :attribute_modification_date__time

  # (0400,0563) ModifyingSystem dvLO
  # VR values: ["LO"]
  def name("04000563"), do: :modifying_system

  # (0400,0564) SourceofPreviousValues dvLO
  # VR values: ["LO"]
  def name("04000564"), do: :sourceof_previous_values

  # (0400,0565) ReasonfortheAttributeModification dvCS
  # VR values: ["CS"]
  def name("04000565"), do: :reasonforthe_attribute_modification

  # (0601,0000) Undocumented dvSH
  # VR values: ["SH"]
  def name("06010000"), do: :undocumented

  # (0601,0020) Undocumented dvDS
  # VR values: ["DS"]
  def name("06010020"), do: :undocumented

  # (0601,0021) Undocumented dvDS
  # VR values: ["DS"]
  def name("06010021"), do: :undocumented

  # (0601,0030) Undocumented dvSH
  # VR values: ["SH"]
  def name("06010030"), do: :undocumented

  # (0601,0031) Undocumented dvDS
  # VR values: ["DS"]
  def name("06010031"), do: :undocumented

  # (0601,0050) Undocumented dvSH
  # VR values: ["SH"]
  def name("06010050"), do: :undocumented

  # (0601,0070) Undocumented dvDS
  # VR values: ["DS"]
  def name("06010070"), do: :undocumented

  # (0601,0071) Undocumented dvDS
  # VR values: ["DS"]
  def name("06010071"), do: :undocumented

  # (0601,0072) Undocumented dvDS
  # VR values: ["DS"]
  def name("06010072"), do: :undocumented

  # (1000,0000) EscapeTriplet dvUS
  # VR values: ["US"]
  def name("10000000"), do: :escape_triplet

  # (1000,0001) RunLengthTriplet dvUS
  # VR values: ["US"]
  def name("10000001"), do: :run_length_triplet

  # (1000,0002) HuffmanTableSize dvUS
  # VR values: ["US"]
  def name("10000002"), do: :huffman_table_size

  # (1000,0003) HuffmanTableTriplet dvUS
  # VR values: ["US"]
  def name("10000003"), do: :huffman_table_triplet

  # (1000,0004) ShiftTableSize dvUS
  # VR values: ["US"]
  def name("10000004"), do: :shift_table_size

  # (1000,0005) ShiftTableTriplet dvUS
  # VR values: ["US"]
  def name("10000005"), do: :shift_table_triplet

  # (1000,0010) EscapeTriplet dvUS
  # VR values: ["US"]
  def name("10000010"), do: :escape_triplet

  # (1000,0011) RunLengthTriplet dvUS
  # VR values: ["US"]
  def name("10000011"), do: :run_length_triplet

  # (1000,0012) HuffmanTableSize dvUS
  # VR values: ["US"]
  def name("10000012"), do: :huffman_table_size

  # (1000,0013) HuffmanTableTriplet dvUS
  # VR values: ["US"]
  def name("10000013"), do: :huffman_table_triplet

  # (1000,0014) ShiftTableSize dvUS
  # VR values: ["US"]
  def name("10000014"), do: :shift_table_size

  # (1000,0015) ShiftTableTriplet dvUS
  # VR values: ["US"]
  def name("10000015"), do: :shift_table_triplet

  # (1010,0000) ZonalMap dvUS
  # VR values: ["US"]
  def name("10100000"), do: :zonal_map

  # (1010,0004) ZonalMap dvUS
  # VR values: ["US"]
  def name("10100004"), do: :zonal_map

  # (1369,0000) Undocumented dvUS
  # VR values: ["US"]
  def name("13690000"), do: :undocumented

  # (2000,0000) FilmSessionGroupLength dvUL
  # VR values: ["UL"]
  def name("20000000"), do: :film_session_group_length

  # (2000,0010) NumberofCopies dvIS
  # VR values: ["IS"]
  def name("20000010"), do: :numberof_copies

  # (2000,001E) PrinterConfigurationSequence dvSQ
  # VR values: ["SQ"]
  def name("2000001E"), do: :printer_configuration_sequence

  # (2000,0020) PrintPriority dvCS
  # VR values: ["CS"]
  def name("20000020"), do: :print_priority

  # (2000,0030) MediumType dvCS
  # VR values: ["CS"]
  def name("20000030"), do: :medium_type

  # (2000,0040) FilmDestination dvCS
  # VR values: ["CS"]
  def name("20000040"), do: :film_destination

  # (2000,0050) FilmSessionLabel dvLO
  # VR values: ["LO"]
  def name("20000050"), do: :film_session_label

  # (2000,0060) MemoryAllocation dvIS
  # VR values: ["IS"]
  def name("20000060"), do: :memory_allocation

  # (2000,0061) MaximumMemoryAllocation dvIS
  # VR values: ["IS"]
  def name("20000061"), do: :maximum_memory_allocation

  # (2000,0062) ColorImagePrintingFlag dvCS
  # VR values: ["CS"]
  def name("20000062"), do: :color_image_printing_flag

  # (2000,0063) CollationFlag dvCS
  # VR values: ["CS"]
  def name("20000063"), do: :collation_flag

  # (2000,0065) AnnotationFlag dvCS
  # VR values: ["CS"]
  def name("20000065"), do: :annotation_flag

  # (2000,0067) ImageOverlayFlag dvCS
  # VR values: ["CS"]
  def name("20000067"), do: :image_overlay_flag

  # (2000,0069) PresentationLUTFlag dvCS
  # VR values: ["CS"]
  def name("20000069"), do: :presentation_lut_flag

  # (2000,006A) ImageBoxPresentationLUTFlag dvCS
  # VR values: ["CS"]
  def name("2000006A"), do: :image_box_presentation_lut_flag

  # (2000,00A0) MemoryBitDepth dvUS
  # VR values: ["US"]
  def name("200000A0"), do: :memory_bit_depth

  # (2000,00A1) PrintingBitDepth dvUS
  # VR values: ["US"]
  def name("200000A1"), do: :printing_bit_depth

  # (2000,00A2) MediaInstalledSequence dvSQ
  # VR values: ["SQ"]
  def name("200000A2"), do: :media_installed_sequence

  # (2000,00A4) OtherMediaAvailableSequence dvSQ
  # VR values: ["SQ"]
  def name("200000A4"), do: :other_media_available_sequence

  # (2000,00A8) SupportedImageDisplayFormatsSequence dvSQ
  # VR values: ["SQ"]
  def name("200000A8"), do: :supported_image_display_formats_sequence

  # (2000,0500) ReferencedFilmBoxSequence dvSQ
  # VR values: ["SQ"]
  def name("20000500"), do: :referenced_film_box_sequence

  # (2000,0510) ReferencedStoredPrintSequence dvSQ
  # VR values: ["SQ"]
  def name("20000510"), do: :referenced_stored_print_sequence

  # (2010,0000) FilmBoxGroupLength dvUL
  # VR values: ["UL"]
  def name("20100000"), do: :film_box_group_length

  # (2010,0010) ImageDisplayFormat dvST
  # VR values: ["ST"]
  def name("20100010"), do: :image_display_format

  # (2010,0030) AnnotationDisplayFormatID dvCS
  # VR values: ["CS"]
  def name("20100030"), do: :annotation_display_format_id

  # (2010,0040) FilmOrientation dvCS
  # VR values: ["CS"]
  def name("20100040"), do: :film_orientation

  # (2010,0050) FilmSizeID dvCS
  # VR values: ["CS"]
  def name("20100050"), do: :film_size_id

  # (2010,0052) PrinterResolutionID dvCS
  # VR values: ["CS"]
  def name("20100052"), do: :printer_resolution_id

  # (2010,0054) DefaultPrinterResolutionID dvCS
  # VR values: ["CS"]
  def name("20100054"), do: :default_printer_resolution_id

  # (2010,0060) MagnificationType dvCS
  # VR values: ["CS"]
  def name("20100060"), do: :magnification_type

  # (2010,0080) SmoothingType dvCS
  # VR values: ["CS"]
  def name("20100080"), do: :smoothing_type

  # (2010,00A6) DefaultMagnificationType dvCS
  # VR values: ["CS"]
  def name("201000A6"), do: :default_magnification_type

  # (2010,00A7) OtherMagnificationTypesAvailable dvCS
  # VR values: ["CS"]
  def name("201000A7"), do: :other_magnification_types_available

  # (2010,00A8) DefaultSmoothingType dvCS
  # VR values: ["CS"]
  def name("201000A8"), do: :default_smoothing_type

  # (2010,00A9) OtherSmoothingTypesAvailable dvCS
  # VR values: ["CS"]
  def name("201000A9"), do: :other_smoothing_types_available

  # (2010,0100) BorderDensity dvCS
  # VR values: ["CS"]
  def name("20100100"), do: :border_density

  # (2010,0110) EmptyImageDensity dvCS
  # VR values: ["CS"]
  def name("20100110"), do: :empty_image_density

  # (2010,0120) MinDensity dvUS
  # VR values: ["US"]
  def name("20100120"), do: :min_density

  # (2010,0130) MaxDensity dvUS
  # VR values: ["US"]
  def name("20100130"), do: :max_density

  # (2010,0140) Trim dvCS
  # VR values: ["CS"]
  def name("20100140"), do: :trim

  # (2010,0150) ConfigurationInformation dvST
  # VR values: ["ST"]
  def name("20100150"), do: :configuration_information

  # (2010,0152) ConfigurationInformationDescription dvLT
  # VR values: ["LT"]
  def name("20100152"), do: :configuration_information_description

  # (2010,0154) MaximumCollatedFilms dvIS
  # VR values: ["IS"]
  def name("20100154"), do: :maximum_collated_films

  # (2010,015E) Illumination dvUS
  # VR values: ["US"]
  def name("2010015E"), do: :illumination

  # (2010,0160) ReflectedAmbientLight dvUS
  # VR values: ["US"]
  def name("20100160"), do: :reflected_ambient_light

  # (2010,0376) PrinterPixelSpacing dvDS
  # VR values: ["DS"]
  def name("20100376"), do: :printer_pixel_spacing

  # (2010,0500) ReferencedFilmSessionSequence dvSQ
  # VR values: ["SQ"]
  def name("20100500"), do: :referenced_film_session_sequence

  # (2010,0510) ReferencedImageBoxSequence dvSQ
  # VR values: ["SQ"]
  def name("20100510"), do: :referenced_image_box_sequence

  # (2010,0520) ReferencedBasicAnnotationBoxSequence dvSQ
  # VR values: ["SQ"]
  def name("20100520"), do: :referenced_basic_annotation_box_sequence

  # (2020,0000) ImageBoxGroupLength dvUL
  # VR values: ["UL"]
  def name("20200000"), do: :image_box_group_length

  # (2020,0010) ImageBoxPosition dvUS
  # VR values: ["US"]
  def name("20200010"), do: :image_box_position

  # (2020,0020) Polarity dvCS
  # VR values: ["CS"]
  def name("20200020"), do: :polarity

  # (2020,0030) RequestedImageSize dvDS
  # VR values: ["DS"]
  def name("20200030"), do: :requested_image_size

  # (2020,0040) RequestedDecimate/CropBehavior dvCS
  # VR values: ["CS"]
  def name("20200040"), do: :requested_decimate__crop_behavior

  # (2020,0050) RequestedResolutionID dvCS
  # VR values: ["CS"]
  def name("20200050"), do: :requested_resolution_id

  # (2020,00A0) RequestedImageSizeFlag dvCS
  # VR values: ["CS"]
  def name("202000A0"), do: :requested_image_size_flag

  # (2020,00A2) Decimate/CropResult dvCS
  # VR values: ["CS"]
  def name("202000A2"), do: :decimate__crop_result

  # (2020,0110) BasicGrayscaleImageSequence dvSQ
  # VR values: ["SQ"]
  def name("20200110"), do: :basic_grayscale_image_sequence

  # (2020,0111) BasicColorImageSequence dvSQ
  # VR values: ["SQ"]
  def name("20200111"), do: :basic_color_image_sequence

  # (2020,0130) ReferencedImageOverlayBoxSequence dvSQ
  # VR values: ["SQ"]
  def name("20200130"), do: :referenced_image_overlay_box_sequence

  # (2020,0140) ReferencedVOILUTBoxSequence dvSQ
  # VR values: ["SQ"]
  def name("20200140"), do: :referenced_voilut_box_sequence

  # (2030,0000) AnnotationGroupLength dvUL
  # VR values: ["UL"]
  def name("20300000"), do: :annotation_group_length

  # (2030,0010) AnnotationPosition dvUS
  # VR values: ["US"]
  def name("20300010"), do: :annotation_position

  # (2030,0020) TextString dvLO
  # VR values: ["LO"]
  def name("20300020"), do: :text_string

  # (2040,0000) OverlayBoxGroupLength dvUL
  # VR values: ["UL"]
  def name("20400000"), do: :overlay_box_group_length

  # (2040,0010) ReferencedOverlayPlaneSequence dvSQ
  # VR values: ["SQ"]
  def name("20400010"), do: :referenced_overlay_plane_sequence

  # (2040,0011) ReferencedOverlayPlaneGroups dvUS
  # VR values: ["US"]
  def name("20400011"), do: :referenced_overlay_plane_groups

  # (2040,0020) OverlayPixelDataSequence dvSQ
  # VR values: ["SQ"]
  def name("20400020"), do: :overlay_pixel_data_sequence

  # (2040,0060) OverlayMagnificationType dvCS
  # VR values: ["CS"]
  def name("20400060"), do: :overlay_magnification_type

  # (2040,0070) OverlaySmoothingType dvCS
  # VR values: ["CS"]
  def name("20400070"), do: :overlay_smoothing_type

  # (2040,0072) OverlayorImageMagnification dvCS
  # VR values: ["CS"]
  def name("20400072"), do: :overlayor_image_magnification

  # (2040,0074) MagnifytoNumberofColumns dvUS
  # VR values: ["US"]
  def name("20400074"), do: :magnifyto_numberof_columns

  # (2040,0080) OverlayForegroundDensity dvCS
  # VR values: ["CS"]
  def name("20400080"), do: :overlay_foreground_density

  # (2040,0082) OverlayBackgroundDensity dvCS
  # VR values: ["CS"]
  def name("20400082"), do: :overlay_background_density

  # (2040,0090) OverlayMode dvCS
  # VR values: ["CS"]
  def name("20400090"), do: :overlay_mode

  # (2040,0100) ThresholdDensity dvCS
  # VR values: ["CS"]
  def name("20400100"), do: :threshold_density

  # (2040,0500) ReferencedImageBoxSequence(Retired) dvSQ
  # VR values: ["SQ"]
  def name("20400500"), do: :referenced_image_box_sequence_retired

  # (2050,0000) PresentationLUTGroupLength dvUL
  # VR values: ["UL"]
  def name("20500000"), do: :presentation_lut_group_length

  # (2050,0010) PresentationLUTSequence dvSQ
  # VR values: ["SQ"]
  def name("20500010"), do: :presentation_lut_sequence

  # (2050,0020) PresentationLUTShape dvCS
  # VR values: ["CS"]
  def name("20500020"), do: :presentation_lut_shape

  # (2050,0500) ReferencedPresentationLUTSequence dvSQ
  # VR values: ["SQ"]
  def name("20500500"), do: :referenced_presentation_lut_sequence

  # (2100,0000) PrintJobGroupLength dvUL
  # VR values: ["UL"]
  def name("21000000"), do: :print_job_group_length

  # (2100,0010) PrintJobID dvSH
  # VR values: ["SH"]
  def name("21000010"), do: :print_job_id

  # (2100,0020) ExecutionStatus dvCS
  # VR values: ["CS"]
  def name("21000020"), do: :execution_status

  # (2100,0030) ExecutionStatusInfo dvCS
  # VR values: ["CS"]
  def name("21000030"), do: :execution_status_info

  # (2100,0040) CreationDate dvDA
  # VR values: ["DA"]
  def name("21000040"), do: :creation_date

  # (2100,0050) CreationTime dvTM
  # VR values: ["TM"]
  def name("21000050"), do: :creation_time

  # (2100,0070) Originator dvAE
  # VR values: ["AE"]
  def name("21000070"), do: :originator

  # (2100,0140) DestinationAE dvAE
  # VR values: ["AE"]
  def name("21000140"), do: :destination_ae

  # (2100,0160) OwnerID dvSH
  # VR values: ["SH"]
  def name("21000160"), do: :owner_id

  # (2100,0170) NumberofFilms dvIS
  # VR values: ["IS"]
  def name("21000170"), do: :numberof_films

  # (2100,0500) ReferencedPrintJobSequence(PullStoredPrint) dvSQ
  # VR values: ["SQ"]
  def name("21000500"), do: :referenced_print_job_sequence_pull_stored_print

  # (2110,0000) PrinterGroupLength dvUL
  # VR values: ["UL"]
  def name("21100000"), do: :printer_group_length

  # (2110,0010) PrinterStatus dvCS
  # VR values: ["CS"]
  def name("21100010"), do: :printer_status

  # (2110,0020) PrinterStatusInfo dvCS
  # VR values: ["CS"]
  def name("21100020"), do: :printer_status_info

  # (2110,0030) PrinterName dvLO
  # VR values: ["LO"]
  def name("21100030"), do: :printer_name

  # (2110,0099) PrintQueueID dvSH
  # VR values: ["SH"]
  def name("21100099"), do: :print_queue_id

  # (2120,0000) QueueGroupLength dvUL
  # VR values: ["UL"]
  def name("21200000"), do: :queue_group_length

  # (2120,0010) QueueStatus dvCS
  # VR values: ["CS"]
  def name("21200010"), do: :queue_status

  # (2120,0050) PrintJobDescriptionSequence dvSQ
  # VR values: ["SQ"]
  def name("21200050"), do: :print_job_description_sequence

  # (2120,0070) ReferencedPrintJobSequence dvSQ
  # VR values: ["SQ"]
  def name("21200070"), do: :referenced_print_job_sequence

  # (2130,0000) PrintContentGroupLength dvUL
  # VR values: ["UL"]
  def name("21300000"), do: :print_content_group_length

  # (2130,0010) PrintManagementCapabilitiesSequence dvSQ
  # VR values: ["SQ"]
  def name("21300010"), do: :print_management_capabilities_sequence

  # (2130,0015) PrinterCharacteristicsSequence dvSQ
  # VR values: ["SQ"]
  def name("21300015"), do: :printer_characteristics_sequence

  # (2130,0030) FilmBoxContentSequence dvSQ
  # VR values: ["SQ"]
  def name("21300030"), do: :film_box_content_sequence

  # (2130,0040) ImageBoxContentSequence dvSQ
  # VR values: ["SQ"]
  def name("21300040"), do: :image_box_content_sequence

  # (2130,0050) AnnotationContentSequence dvSQ
  # VR values: ["SQ"]
  def name("21300050"), do: :annotation_content_sequence

  # (2130,0060) ImageOverlayBoxContentSequence dvSQ
  # VR values: ["SQ"]
  def name("21300060"), do: :image_overlay_box_content_sequence

  # (2130,0080) PresentationLUTContentSequence dvSQ
  # VR values: ["SQ"]
  def name("21300080"), do: :presentation_lut_content_sequence

  # (2130,00A0) ProposedStudySequence dvSQ
  # VR values: ["SQ"]
  def name("213000A0"), do: :proposed_study_sequence

  # (2130,00C0) OriginalImageSequence dvSQ
  # VR values: ["SQ"]
  def name("213000C0"), do: :original_image_sequence

  # (2200,0001) LabelUsingInformationExtractedFromInstances dvCS
  # VR values: ["CS"]
  def name("22000001"), do: :label_using_information_extracted_from_instances

  # (2200,0002) LabelText dvUT
  # VR values: ["UT"]
  def name("22000002"), do: :label_text

  # (2200,0003) LabelStyleSelection dvCS
  # VR values: ["CS"]
  def name("22000003"), do: :label_style_selection

  # (2200,0004) MediaDisposition dvLT
  # VR values: ["LT"]
  def name("22000004"), do: :media_disposition

  # (2200,0005) BarcodeValue dvLT
  # VR values: ["LT"]
  def name("22000005"), do: :barcode_value

  # (2200,0006) BarcodeSymbology dvCS
  # VR values: ["CS"]
  def name("22000006"), do: :barcode_symbology

  # (2200,0007) AllowMediaSplitting dvCS
  # VR values: ["CS"]
  def name("22000007"), do: :allow_media_splitting

  # (2200,0008) IncludeNon_DICOMObjects dvCS
  # VR values: ["CS"]
  def name("22000008"), do: :include_non_dicom_objects

  # (2200,0009) IncludeDisplayApplication dvCS
  # VR values: ["CS"]
  def name("22000009"), do: :include_display_application

  # (2200,000A) PreserveCompositeInstancesAfterMediaCreation dvCS
  # VR values: ["CS"]
  def name("2200000A"), do: :preserve_composite_instances_after_media_creation

  # (2200,000B) TotalNumberofPiecesofMediaCreated dvUS
  # VR values: ["US"]
  def name("2200000B"), do: :total_numberof_piecesof_media_created

  # (2200,000C) RequestedMediaApplicationProfile dvLO
  # VR values: ["LO"]
  def name("2200000C"), do: :requested_media_application_profile

  # (2200,000D) ReferencedStorageMediaSequence dvSQ
  # VR values: ["SQ"]
  def name("2200000D"), do: :referenced_storage_media_sequence

  # (2200,000E) FailureAttributes dvAT
  # VR values: ["AT"]
  def name("2200000E"), do: :failure_attributes

  # (2200,000F) AllowLossyCompression dvCS
  # VR values: ["CS"]
  def name("2200000F"), do: :allow_lossy_compression

  # (2200,0020) RequestPriority dvCS
  # VR values: ["CS"]
  def name("22000020"), do: :request_priority

  # (3002,0000) RTImageGroupLength dvUL
  # VR values: ["UL"]
  def name("30020000"), do: :rt_image_group_length

  # (3002,0002) RTImageLabel dvSH
  # VR values: ["SH"]
  def name("30020002"), do: :rt_image_label

  # (3002,0003) RTImageName dvLO
  # VR values: ["LO"]
  def name("30020003"), do: :rt_image_name

  # (3002,0004) RTImageDescription dvST
  # VR values: ["ST"]
  def name("30020004"), do: :rt_image_description

  # (3002,000A) ReportedValuesOrigin dvCS
  # VR values: ["CS"]
  def name("3002000A"), do: :reported_values_origin

  # (3002,000C) RTImagePlane dvCS
  # VR values: ["CS"]
  def name("3002000C"), do: :rt_image_plane

  # (3002,000D) X_RayImageReceptorTranslation dvDS
  # VR values: ["DS"]
  def name("3002000D"), do: :x_ray_image_receptor_translation

  # (3002,000E) X_RayImageReceptorAngle dvDS
  # VR values: ["DS"]
  def name("3002000E"), do: :x_ray_image_receptor_angle

  # (3002,0010) RTImageOrientation dvDS
  # VR values: ["DS"]
  def name("30020010"), do: :rt_image_orientation

  # (3002,0011) ImagePlanePixelSpacing dvDS
  # VR values: ["DS"]
  def name("30020011"), do: :image_plane_pixel_spacing

  # (3002,0012) RTImagePosition dvDS
  # VR values: ["DS"]
  def name("30020012"), do: :rt_image_position

  # (3002,0020) RadiationMachineName dvSH
  # VR values: ["SH"]
  def name("30020020"), do: :radiation_machine_name

  # (3002,0022) RadiationMachineSAD dvDS
  # VR values: ["DS"]
  def name("30020022"), do: :radiation_machine_sad

  # (3002,0024) RadiationMachineSSD dvDS
  # VR values: ["DS"]
  def name("30020024"), do: :radiation_machine_ssd

  # (3002,0026) RTImageSID dvDS
  # VR values: ["DS"]
  def name("30020026"), do: :rt_image_sid

  # (3002,0028) SourcetoReferenceObjectDistance dvDS
  # VR values: ["DS"]
  def name("30020028"), do: :sourceto_reference_object_distance

  # (3002,0029) FractionNumber dvIS
  # VR values: ["IS"]
  def name("30020029"), do: :fraction_number

  # (3002,0030) ExposureSequence dvSQ
  # VR values: ["SQ"]
  def name("30020030"), do: :exposure_sequence

  # (3002,0032) MetersetExposure dvDS
  # VR values: ["DS"]
  def name("30020032"), do: :meterset_exposure

  # (3002,0034) DiaphragmPosition dvDS
  # VR values: ["DS"]
  def name("30020034"), do: :diaphragm_position

  # (3002,0040) FluenceMapSequence dvSQ
  # VR values: ["SQ"]
  def name("30020040"), do: :fluence_map_sequence

  # (3002,0041) FluenceDataSource dvCS
  # VR values: ["CS"]
  def name("30020041"), do: :fluence_data_source

  # (3002,0042) FluenceDataScale dvDS
  # VR values: ["DS"]
  def name("30020042"), do: :fluence_data_scale

  # (3002,0050) PrimaryFluenceModeSequence dvSQ
  # VR values: ["SQ"]
  def name("30020050"), do: :primary_fluence_mode_sequence

  # (3002,0051) FluenceMode dvCS
  # VR values: ["CS"]
  def name("30020051"), do: :fluence_mode

  # (3002,0052) FluenceModeID dvSH
  # VR values: ["SH"]
  def name("30020052"), do: :fluence_mode_id

  # (3004,0000) DoseGroupLength dvUL
  # VR values: ["UL"]
  def name("30040000"), do: :dose_group_length

  # (3004,0001) DVHType dvCS
  # VR values: ["CS"]
  def name("30040001"), do: :dvh_type

  # (3004,0002) DoseUnits dvCS
  # VR values: ["CS"]
  def name("30040002"), do: :dose_units

  # (3004,0004) DoseType dvCS
  # VR values: ["CS"]
  def name("30040004"), do: :dose_type

  # (3004,0005) SpatialTransformofDose dvCS
  # VR values: ["CS"]
  def name("30040005"), do: :spatial_transformof_dose

  # (3004,0006) DoseComment dvLO
  # VR values: ["LO"]
  def name("30040006"), do: :dose_comment

  # (3004,0008) NormalizationPoint dvDS
  # VR values: ["DS"]
  def name("30040008"), do: :normalization_point

  # (3004,000A) DoseSummationType dvCS
  # VR values: ["CS"]
  def name("3004000A"), do: :dose_summation_type

  # (3004,000C) GridFrameOffsetVector dvDS
  # VR values: ["DS"]
  def name("3004000C"), do: :grid_frame_offset_vector

  # (3004,000E) DoseGridScaling dvDS
  # VR values: ["DS"]
  def name("3004000E"), do: :dose_grid_scaling

  # (3004,0010) RTDoseROISequence dvSQ
  # VR values: ["SQ"]
  def name("30040010"), do: :rt_dose_roi_sequence

  # (3004,0012) DoseValue dvDS
  # VR values: ["DS"]
  def name("30040012"), do: :dose_value

  # (3004,0014) TissueHeterogeneityCorrection dvCS
  # VR values: ["CS"]
  def name("30040014"), do: :tissue_heterogeneity_correction

  # (3004,0040) DVHNormalizationPoint dvDS
  # VR values: ["DS"]
  def name("30040040"), do: :dvh_normalization_point

  # (3004,0042) DVHNormalizationDoseValue dvDS
  # VR values: ["DS"]
  def name("30040042"), do: :dvh_normalization_dose_value

  # (3004,0050) DVHSequence dvSQ
  # VR values: ["SQ"]
  def name("30040050"), do: :dvh_sequence

  # (3004,0052) DVHDoseScaling dvDS
  # VR values: ["DS"]
  def name("30040052"), do: :dvh_dose_scaling

  # (3004,0054) DVHVolumeUnits dvCS
  # VR values: ["CS"]
  def name("30040054"), do: :dvh_volume_units

  # (3004,0056) DVHNumberofBins dvIS
  # VR values: ["IS"]
  def name("30040056"), do: :dvh_numberof_bins

  # (3004,0058) DVHData dvDS
  # VR values: ["DS"]
  def name("30040058"), do: :dvh_data

  # (3004,0060) DVHReferencedROISequence dvSQ
  # VR values: ["SQ"]
  def name("30040060"), do: :dvh_referenced_roi_sequence

  # (3004,0062) DVHROIContributionType dvCS
  # VR values: ["CS"]
  def name("30040062"), do: :dvhroi_contribution_type

  # (3004,0070) DVHMinimumDose dvDS
  # VR values: ["DS"]
  def name("30040070"), do: :dvh_minimum_dose

  # (3004,0072) DVHMaximumDose dvDS
  # VR values: ["DS"]
  def name("30040072"), do: :dvh_maximum_dose

  # (3004,0074) DVHMeanDose dvDS
  # VR values: ["DS"]
  def name("30040074"), do: :dvh_mean_dose

  # (3006,0000) StructureSetGroupLength dvUL
  # VR values: ["UL"]
  def name("30060000"), do: :structure_set_group_length

  # (3006,0002) StructureSetLabel dvSH
  # VR values: ["SH"]
  def name("30060002"), do: :structure_set_label

  # (3006,0004) StructureSetName dvLO
  # VR values: ["LO"]
  def name("30060004"), do: :structure_set_name

  # (3006,0006) StructureSetDescription dvST
  # VR values: ["ST"]
  def name("30060006"), do: :structure_set_description

  # (3006,0008) StructureSetDate dvDA
  # VR values: ["DA"]
  def name("30060008"), do: :structure_set_date

  # (3006,0009) StructureSetTime dvTM
  # VR values: ["TM"]
  def name("30060009"), do: :structure_set_time

  # (3006,0010) ReferencedFrameofReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("30060010"), do: :referenced_frameof_reference_sequence

  # (3006,0012) RTReferencedStudySequence dvSQ
  # VR values: ["SQ"]
  def name("30060012"), do: :rt_referenced_study_sequence

  # (3006,0014) RTReferencedSeriesSequence dvSQ
  # VR values: ["SQ"]
  def name("30060014"), do: :rt_referenced_series_sequence

  # (3006,0016) ContourImageSequence dvSQ
  # VR values: ["SQ"]
  def name("30060016"), do: :contour_image_sequence

  # (3006,0018) PredecessorStructureSetSequence dvSQ
  # VR values: ["SQ"]
  def name("30060018"), do: :predecessor_structure_set_sequence

  # (3006,0020) StructureSetROISequence dvSQ
  # VR values: ["SQ"]
  def name("30060020"), do: :structure_set_roi_sequence

  # (3006,0022) ROINumber dvIS
  # VR values: ["IS"]
  def name("30060022"), do: :roi_number

  # (3006,0024) ReferencedFrameofReferenceUID dvUI
  # VR values: ["UI"]
  def name("30060024"), do: :referenced_frameof_reference_uid

  # (3006,0026) ROIName dvLO
  # VR values: ["LO"]
  def name("30060026"), do: :roi_name

  # (3006,0028) ROIDescription dvST
  # VR values: ["ST"]
  def name("30060028"), do: :roi_description

  # (3006,002A) ROIDisplayColor dvIS
  # VR values: ["IS"]
  def name("3006002A"), do: :roi_display_color

  # (3006,002C) ROIVolume dvDS
  # VR values: ["DS"]
  def name("3006002C"), do: :roi_volume

  # (3006,0030) RTRelatedROISequence dvSQ
  # VR values: ["SQ"]
  def name("30060030"), do: :rt_related_roi_sequence

  # (3006,0033) RTROIRelationship dvCS
  # VR values: ["CS"]
  def name("30060033"), do: :rtroi_relationship

  # (3006,0036) ROIGenerationAlgorithm dvCS
  # VR values: ["CS"]
  def name("30060036"), do: :roi_generation_algorithm

  # (3006,0038) ROIGenerationDescription dvLO
  # VR values: ["LO"]
  def name("30060038"), do: :roi_generation_description

  # (3006,0039) ROIContourSequence dvSQ
  # VR values: ["SQ"]
  def name("30060039"), do: :roi_contour_sequence

  # (3006,0040) ContourSequence dvSQ
  # VR values: ["SQ"]
  def name("30060040"), do: :contour_sequence

  # (3006,0042) ContourGeometricType dvCS
  # VR values: ["CS"]
  def name("30060042"), do: :contour_geometric_type

  # (3006,0044) ContourSlabThickness dvDS
  # VR values: ["DS"]
  def name("30060044"), do: :contour_slab_thickness

  # (3006,0045) ContourOffsetVector dvDS
  # VR values: ["DS"]
  def name("30060045"), do: :contour_offset_vector

  # (3006,0046) NumberofContourPoints dvIS
  # VR values: ["IS"]
  def name("30060046"), do: :numberof_contour_points

  # (3006,0048) ContourNumber dvIS
  # VR values: ["IS"]
  def name("30060048"), do: :contour_number

  # (3006,0049) AttachedContours dvIS
  # VR values: ["IS"]
  def name("30060049"), do: :attached_contours

  # (3006,0050) ContourData dvDS
  # VR values: ["DS"]
  def name("30060050"), do: :contour_data

  # (3006,0080) RTROIObservationsSequence dvSQ
  # VR values: ["SQ"]
  def name("30060080"), do: :rtroi_observations_sequence

  # (3006,0082) ObservationNumber dvIS
  # VR values: ["IS"]
  def name("30060082"), do: :observation_number

  # (3006,0084) ReferencedROINumber dvIS
  # VR values: ["IS"]
  def name("30060084"), do: :referenced_roi_number

  # (3006,0085) ROIObservationLabel dvSH
  # VR values: ["SH"]
  def name("30060085"), do: :roi_observation_label

  # (3006,0086) RTROIIdentificationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("30060086"), do: :rtroi_identification_code_sequence

  # (3006,0088) ROIObservationDescription dvST
  # VR values: ["ST"]
  def name("30060088"), do: :roi_observation_description

  # (3006,00A0) RelatedRTROIObservationsSequence dvSQ
  # VR values: ["SQ"]
  def name("300600A0"), do: :related_rtroi_observations_sequence

  # (3006,00A4) RTROIInterpretedType dvCS
  # VR values: ["CS"]
  def name("300600A4"), do: :rtroi_interpreted_type

  # (3006,00A6) ROIInterpreter dvPN
  # VR values: ["PN"]
  def name("300600A6"), do: :roi_interpreter

  # (3006,00B0) ROIPhysicalPropertiesSequence dvSQ
  # VR values: ["SQ"]
  def name("300600B0"), do: :roi_physical_properties_sequence

  # (3006,00B2) ROIPhysicalProperty dvCS
  # VR values: ["CS"]
  def name("300600B2"), do: :roi_physical_property

  # (3006,00B4) ROIPhysicalPropertyValue dvDS
  # VR values: ["DS"]
  def name("300600B4"), do: :roi_physical_property_value

  # (3006,00B6) ROIElementalCompositionSequence dvSQ
  # VR values: ["SQ"]
  def name("300600B6"), do: :roi_elemental_composition_sequence

  # (3006,00B7) ROIElementalCompositionAtomicNumber dvUS
  # VR values: ["US"]
  def name("300600B7"), do: :roi_elemental_composition_atomic_number

  # (3006,00B8) ROIElementalCompositionAtomicMassFraction dvFL
  # VR values: ["FL"]
  def name("300600B8"), do: :roi_elemental_composition_atomic_mass_fraction

  # (3006,00B9) AdditionalRTROIIdentificationCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("300600B9"), do: :additional_rtroi_identification_code_sequence

  # (3006,00C0) FrameofReferenceRelationshipSequence dvSQ
  # VR values: ["SQ"]
  def name("300600C0"), do: :frameof_reference_relationship_sequence

  # (3006,00C2) RelatedFrameofReferenceUID dvUI
  # VR values: ["UI"]
  def name("300600C2"), do: :related_frameof_reference_uid

  # (3006,00C4) FrameofReferenceTransformationType dvCS
  # VR values: ["CS"]
  def name("300600C4"), do: :frameof_reference_transformation_type

  # (3006,00C6) FrameofReferenceTransformationMatrix dvDS
  # VR values: ["DS"]
  def name("300600C6"), do: :frameof_reference_transformation_matrix

  # (3006,00C8) FrameofReferenceTransformationComment dvLO
  # VR values: ["LO"]
  def name("300600C8"), do: :frameof_reference_transformation_comment

  # (3008,0010) MeasuredDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("30080010"), do: :measured_dose_reference_sequence

  # (3008,0012) MeasuredDoseDescription dvST
  # VR values: ["ST"]
  def name("30080012"), do: :measured_dose_description

  # (3008,0014) MeasuredDoseType dvCS
  # VR values: ["CS"]
  def name("30080014"), do: :measured_dose_type

  # (3008,0016) MeasuredDoseValue dvDS
  # VR values: ["DS"]
  def name("30080016"), do: :measured_dose_value

  # (3008,0020) TreatmentSessionBeamSequence dvSQ
  # VR values: ["SQ"]
  def name("30080020"), do: :treatment_session_beam_sequence

  # (3008,0021) TreatmentSessionIonBeamSequence dvSQ
  # VR values: ["SQ"]
  def name("30080021"), do: :treatment_session_ion_beam_sequence

  # (3008,0022) CurrentFractionNumber dvIS
  # VR values: ["IS"]
  def name("30080022"), do: :current_fraction_number

  # (3008,0024) TreatmentControlPointDate dvDA
  # VR values: ["DA"]
  def name("30080024"), do: :treatment_control_point_date

  # (3008,0025) TreatmentControlPointTime dvTM
  # VR values: ["TM"]
  def name("30080025"), do: :treatment_control_point_time

  # (3008,002A) TreatmentTerminationStatus dvCS
  # VR values: ["CS"]
  def name("3008002A"), do: :treatment_termination_status

  # (3008,002B) TreatmentTerminationCode dvSH
  # VR values: ["SH"]
  def name("3008002B"), do: :treatment_termination_code

  # (3008,002C) TreatmentVerificationStatus dvCS
  # VR values: ["CS"]
  def name("3008002C"), do: :treatment_verification_status

  # (3008,0030) ReferencedTreatmentRecordSequence dvSQ
  # VR values: ["SQ"]
  def name("30080030"), do: :referenced_treatment_record_sequence

  # (3008,0032) SpecifiedPrimaryMeterset dvDS
  # VR values: ["DS"]
  def name("30080032"), do: :specified_primary_meterset

  # (3008,0033) SpecifiedSecondaryMeterset dvDS
  # VR values: ["DS"]
  def name("30080033"), do: :specified_secondary_meterset

  # (3008,0036) DeliveredPrimaryMeterset dvDS
  # VR values: ["DS"]
  def name("30080036"), do: :delivered_primary_meterset

  # (3008,0037) DeliveredSecondaryMeterset dvDS
  # VR values: ["DS"]
  def name("30080037"), do: :delivered_secondary_meterset

  # (3008,003A) SpecifiedTreatmentTime dvDS
  # VR values: ["DS"]
  def name("3008003A"), do: :specified_treatment_time

  # (3008,003B) DeliveredTreatmentTime dvDS
  # VR values: ["DS"]
  def name("3008003B"), do: :delivered_treatment_time

  # (3008,0040) ControlPointDeliverySequence dvSQ
  # VR values: ["SQ"]
  def name("30080040"), do: :control_point_delivery_sequence

  # (3008,0041) IonControlPointDeliverySequence dvSQ
  # VR values: ["SQ"]
  def name("30080041"), do: :ion_control_point_delivery_sequence

  # (3008,0042) SpecifiedMeterset dvDS
  # VR values: ["DS"]
  def name("30080042"), do: :specified_meterset

  # (3008,0044) DeliveredMeterset dvDS
  # VR values: ["DS"]
  def name("30080044"), do: :delivered_meterset

  # (3008,0045) MetersetRateSet dvFL
  # VR values: ["FL"]
  def name("30080045"), do: :meterset_rate_set

  # (3008,0046) MetersetRateDelivered dvFL
  # VR values: ["FL"]
  def name("30080046"), do: :meterset_rate_delivered

  # (3008,0047) ScanSpotMetersetsDelivered dvFL
  # VR values: ["FL"]
  def name("30080047"), do: :scan_spot_metersets_delivered

  # (3008,0048) DoseRateDelivered dvDS
  # VR values: ["DS"]
  def name("30080048"), do: :dose_rate_delivered

  # (3008,0050) TreatmentSummaryCalculatedDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("30080050"), do: :treatment_summary_calculated_dose_reference_sequence

  # (3008,0052) CumulativeDosetoDoseReference dvDS
  # VR values: ["DS"]
  def name("30080052"), do: :cumulative_doseto_dose_reference

  # (3008,0054) FirstTreatmentDate dvDA
  # VR values: ["DA"]
  def name("30080054"), do: :first_treatment_date

  # (3008,0056) MostRecentTreatmentDate dvDA
  # VR values: ["DA"]
  def name("30080056"), do: :most_recent_treatment_date

  # (3008,005A) NumberofFractionsDelivered dvIS
  # VR values: ["IS"]
  def name("3008005A"), do: :numberof_fractions_delivered

  # (3008,0060) OverrideSequence dvSQ
  # VR values: ["SQ"]
  def name("30080060"), do: :override_sequence

  # (3008,0061) ParameterSequencePointer dvAT
  # VR values: ["AT"]
  def name("30080061"), do: :parameter_sequence_pointer

  # (3008,0062) OverrideParameterPointer dvAT
  # VR values: ["AT"]
  def name("30080062"), do: :override_parameter_pointer

  # (3008,0063) ParameterItemIndex dvIS
  # VR values: ["IS"]
  def name("30080063"), do: :parameter_item_index

  # (3008,0064) MeasuredDoseReferenceNumber dvIS
  # VR values: ["IS"]
  def name("30080064"), do: :measured_dose_reference_number

  # (3008,0065) ParameterPointer dvAT
  # VR values: ["AT"]
  def name("30080065"), do: :parameter_pointer

  # (3008,0066) OverrideReason dvST
  # VR values: ["ST"]
  def name("30080066"), do: :override_reason

  # (3008,0068) CorrectedParameterSequence dvSQ
  # VR values: ["SQ"]
  def name("30080068"), do: :corrected_parameter_sequence

  # (3008,006A) CorrectionValue dvFL
  # VR values: ["FL"]
  def name("3008006A"), do: :correction_value

  # (3008,0070) CalculatedDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("30080070"), do: :calculated_dose_reference_sequence

  # (3008,0072) CalculatedDoseReferenceNumber dvIS
  # VR values: ["IS"]
  def name("30080072"), do: :calculated_dose_reference_number

  # (3008,0074) CalculatedDoseReferenceDescription dvST
  # VR values: ["ST"]
  def name("30080074"), do: :calculated_dose_reference_description

  # (3008,0076) CalculatedDoseReferenceDoseValue dvDS
  # VR values: ["DS"]
  def name("30080076"), do: :calculated_dose_reference_dose_value

  # (3008,0078) StartMeterset dvDS
  # VR values: ["DS"]
  def name("30080078"), do: :start_meterset

  # (3008,007A) EndMeterset dvDS
  # VR values: ["DS"]
  def name("3008007A"), do: :end_meterset

  # (3008,0080) ReferencedMeasuredDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("30080080"), do: :referenced_measured_dose_reference_sequence

  # (3008,0082) ReferencedMeasuredDoseReferenceNumber dvIS
  # VR values: ["IS"]
  def name("30080082"), do: :referenced_measured_dose_reference_number

  # (3008,0090) ReferencedCalculatedDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("30080090"), do: :referenced_calculated_dose_reference_sequence

  # (3008,0092) ReferencedCalculatedDoseReferenceNumber dvIS
  # VR values: ["IS"]
  def name("30080092"), do: :referenced_calculated_dose_reference_number

  # (3008,00A0) BeamLimitingDeviceLeafPairsSequence dvSQ
  # VR values: ["SQ"]
  def name("300800A0"), do: :beam_limiting_device_leaf_pairs_sequence

  # (3008,00B0) RecordedWedgeSequence dvSQ
  # VR values: ["SQ"]
  def name("300800B0"), do: :recorded_wedge_sequence

  # (3008,00C0) RecordedCompensatorSequence dvSQ
  # VR values: ["SQ"]
  def name("300800C0"), do: :recorded_compensator_sequence

  # (3008,00D0) RecordedBlockSequence dvSQ
  # VR values: ["SQ"]
  def name("300800D0"), do: :recorded_block_sequence

  # (3008,00E0) TreatmentSummaryMeasuredDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("300800E0"), do: :treatment_summary_measured_dose_reference_sequence

  # (3008,00F0) RecordedSnoutSequence dvSQ
  # VR values: ["SQ"]
  def name("300800F0"), do: :recorded_snout_sequence

  # (3008,00F2) RecordedRangeShifterSequence dvSQ
  # VR values: ["SQ"]
  def name("300800F2"), do: :recorded_range_shifter_sequence

  # (3008,00F4) RecordedLateralSpreadingDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300800F4"), do: :recorded_lateral_spreading_device_sequence

  # (3008,00F6) RecordedRangeModulatorSequence dvSQ
  # VR values: ["SQ"]
  def name("300800F6"), do: :recorded_range_modulator_sequence

  # (3008,0100) RecordedSourceSequence dvSQ
  # VR values: ["SQ"]
  def name("30080100"), do: :recorded_source_sequence

  # (3008,0105) SourceSerialNumber dvLO
  # VR values: ["LO"]
  def name("30080105"), do: :source_serial_number

  # (3008,0110) TreatmentSessionApplicationSetupSequence dvSQ
  # VR values: ["SQ"]
  def name("30080110"), do: :treatment_session_application_setup_sequence

  # (3008,0116) ApplicationSetupCheck dvCS
  # VR values: ["CS"]
  def name("30080116"), do: :application_setup_check

  # (3008,0120) RecordedBrachyAccessoryDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("30080120"), do: :recorded_brachy_accessory_device_sequence

  # (3008,0122) ReferencedBrachyAccessoryDeviceNumber dvIS
  # VR values: ["IS"]
  def name("30080122"), do: :referenced_brachy_accessory_device_number

  # (3008,0130) RecordedChannelSequence dvSQ
  # VR values: ["SQ"]
  def name("30080130"), do: :recorded_channel_sequence

  # (3008,0132) SpecifiedChannelTotalTime dvDS
  # VR values: ["DS"]
  def name("30080132"), do: :specified_channel_total_time

  # (3008,0134) DeliveredChannelTotalTime dvDS
  # VR values: ["DS"]
  def name("30080134"), do: :delivered_channel_total_time

  # (3008,0136) SpecifiedNumberofPulses dvIS
  # VR values: ["IS"]
  def name("30080136"), do: :specified_numberof_pulses

  # (3008,0138) DeliveredNumberofPulses dvIS
  # VR values: ["IS"]
  def name("30080138"), do: :delivered_numberof_pulses

  # (3008,013A) SpecifiedPulseRepetitionInterval dvDS
  # VR values: ["DS"]
  def name("3008013A"), do: :specified_pulse_repetition_interval

  # (3008,013C) DeliveredPulseRepetitionInterval dvDS
  # VR values: ["DS"]
  def name("3008013C"), do: :delivered_pulse_repetition_interval

  # (3008,0140) RecordedSourceApplicatorSequence dvSQ
  # VR values: ["SQ"]
  def name("30080140"), do: :recorded_source_applicator_sequence

  # (3008,0142) ReferencedSourceApplicatorNumber dvIS
  # VR values: ["IS"]
  def name("30080142"), do: :referenced_source_applicator_number

  # (3008,0150) RecordedChannelShieldSequence dvSQ
  # VR values: ["SQ"]
  def name("30080150"), do: :recorded_channel_shield_sequence

  # (3008,0152) ReferencedChannelShieldNumber dvIS
  # VR values: ["IS"]
  def name("30080152"), do: :referenced_channel_shield_number

  # (3008,0160) BrachyControlPointDeliveredSequence dvSQ
  # VR values: ["SQ"]
  def name("30080160"), do: :brachy_control_point_delivered_sequence

  # (3008,0162) SafePositionExitDate dvDA
  # VR values: ["DA"]
  def name("30080162"), do: :safe_position_exit_date

  # (3008,0164) SafePositionExitTime dvTM
  # VR values: ["TM"]
  def name("30080164"), do: :safe_position_exit_time

  # (3008,0166) SafePositionReturnDate dvDA
  # VR values: ["DA"]
  def name("30080166"), do: :safe_position_return_date

  # (3008,0168) SafePositionReturnTime dvTM
  # VR values: ["TM"]
  def name("30080168"), do: :safe_position_return_time

  # (3008,0171) PulseSpecificBrachyControlPointDeliveredSequence dvSQ
  # VR values: ["SQ"]
  def name("30080171"), do: :pulse_specific_brachy_control_point_delivered_sequence

  # (3008,0172) PulseNumber dvUS
  # VR values: ["US"]
  def name("30080172"), do: :pulse_number

  # (3008,0173) BrachyPulseControlPointDeliveredSequence dvSQ
  # VR values: ["SQ"]
  def name("30080173"), do: :brachy_pulse_control_point_delivered_sequence

  # (3008,0200) CurrentTreatmentStatus dvCS
  # VR values: ["CS"]
  def name("30080200"), do: :current_treatment_status

  # (3008,0202) TreatmentStatusComment dvST
  # VR values: ["ST"]
  def name("30080202"), do: :treatment_status_comment

  # (3008,0220) FractionGroupSummarySequence dvSQ
  # VR values: ["SQ"]
  def name("30080220"), do: :fraction_group_summary_sequence

  # (3008,0223) ReferencedFractionNumber dvIS
  # VR values: ["IS"]
  def name("30080223"), do: :referenced_fraction_number

  # (3008,0224) FractionGroupType dvCS
  # VR values: ["CS"]
  def name("30080224"), do: :fraction_group_type

  # (3008,0230) BeamStopperPosition dvCS
  # VR values: ["CS"]
  def name("30080230"), do: :beam_stopper_position

  # (3008,0240) FractionStatusSummarySequence dvSQ
  # VR values: ["SQ"]
  def name("30080240"), do: :fraction_status_summary_sequence

  # (3008,0250) TreatmentDate dvDA
  # VR values: ["DA"]
  def name("30080250"), do: :treatment_date

  # (3008,0251) TreatmentTime dvTM
  # VR values: ["TM"]
  def name("30080251"), do: :treatment_time

  # (300A,0000) RTPlanGroupLength dvUL
  # VR values: ["UL"]
  def name("300A0000"), do: :rt_plan_group_length

  # (300A,0002) RTPlanLabel dvSH
  # VR values: ["SH"]
  def name("300A0002"), do: :rt_plan_label

  # (300A,0003) RTPlanName dvLO
  # VR values: ["LO"]
  def name("300A0003"), do: :rt_plan_name

  # (300A,0004) RTPlanDescription dvST
  # VR values: ["ST"]
  def name("300A0004"), do: :rt_plan_description

  # (300A,0006) RTPlanDate dvDA
  # VR values: ["DA"]
  def name("300A0006"), do: :rt_plan_date

  # (300A,0007) RTPlanTime dvTM
  # VR values: ["TM"]
  def name("300A0007"), do: :rt_plan_time

  # (300A,0009) TreatmentProtocols dvLO
  # VR values: ["LO"]
  def name("300A0009"), do: :treatment_protocols

  # (300A,000A) PlanIntent dvCS
  # VR values: ["CS"]
  def name("300A000A"), do: :plan_intent

  # (300A,000B) TreatmentSites dvLO
  # VR values: ["LO"]
  def name("300A000B"), do: :treatment_sites

  # (300A,000C) RTPlanGeometry dvCS
  # VR values: ["CS"]
  def name("300A000C"), do: :rt_plan_geometry

  # (300A,000E) PrescriptionDescription dvST
  # VR values: ["ST"]
  def name("300A000E"), do: :prescription_description

  # (300A,0010) DoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0010"), do: :dose_reference_sequence

  # (300A,0012) DoseReferenceNumber dvIS
  # VR values: ["IS"]
  def name("300A0012"), do: :dose_reference_number

  # (300A,0013) DoseReferenceUID dvUI
  # VR values: ["UI"]
  def name("300A0013"), do: :dose_reference_uid

  # (300A,0014) DoseReferenceStructureType dvCS
  # VR values: ["CS"]
  def name("300A0014"), do: :dose_reference_structure_type

  # (300A,0015) NominalBeamEnergyUnit dvCS
  # VR values: ["CS"]
  def name("300A0015"), do: :nominal_beam_energy_unit

  # (300A,0016) DoseReferenceDescription dvLO
  # VR values: ["LO"]
  def name("300A0016"), do: :dose_reference_description

  # (300A,0018) DoseReferencePointCoordinates dvDS
  # VR values: ["DS"]
  def name("300A0018"), do: :dose_reference_point_coordinates

  # (300A,001A) NominalPriorDose dvDS
  # VR values: ["DS"]
  def name("300A001A"), do: :nominal_prior_dose

  # (300A,0020) DoseReferenceType dvCS
  # VR values: ["CS"]
  def name("300A0020"), do: :dose_reference_type

  # (300A,0021) ConstraintWeight dvDS
  # VR values: ["DS"]
  def name("300A0021"), do: :constraint_weight

  # (300A,0022) DeliveryWarningDose dvDS
  # VR values: ["DS"]
  def name("300A0022"), do: :delivery_warning_dose

  # (300A,0023) DeliveryMaximumDose dvDS
  # VR values: ["DS"]
  def name("300A0023"), do: :delivery_maximum_dose

  # (300A,0025) TargetMinimumDose dvDS
  # VR values: ["DS"]
  def name("300A0025"), do: :target_minimum_dose

  # (300A,0026) TargetPrescriptionDose dvDS
  # VR values: ["DS"]
  def name("300A0026"), do: :target_prescription_dose

  # (300A,0027) TargetMaximumDose dvDS
  # VR values: ["DS"]
  def name("300A0027"), do: :target_maximum_dose

  # (300A,0028) TargetUnderdoseVolumeFraction dvDS
  # VR values: ["DS"]
  def name("300A0028"), do: :target_underdose_volume_fraction

  # (300A,002A) OrganatRiskFull_volumeDose dvDS
  # VR values: ["DS"]
  def name("300A002A"), do: :organat_risk_full_volume_dose

  # (300A,002B) OrganatRiskLimitDose dvDS
  # VR values: ["DS"]
  def name("300A002B"), do: :organat_risk_limit_dose

  # (300A,002C) OrganatRiskMaximumDose dvDS
  # VR values: ["DS"]
  def name("300A002C"), do: :organat_risk_maximum_dose

  # (300A,002D) OrganatRiskOverdoseVolumeFraction dvDS
  # VR values: ["DS"]
  def name("300A002D"), do: :organat_risk_overdose_volume_fraction

  # (300A,0040) ToleranceTableSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0040"), do: :tolerance_table_sequence

  # (300A,0042) ToleranceTableNumber dvIS
  # VR values: ["IS"]
  def name("300A0042"), do: :tolerance_table_number

  # (300A,0043) ToleranceTableLabel dvSH
  # VR values: ["SH"]
  def name("300A0043"), do: :tolerance_table_label

  # (300A,0044) GantryAngleTolerance dvDS
  # VR values: ["DS"]
  def name("300A0044"), do: :gantry_angle_tolerance

  # (300A,0046) BeamLimitingDeviceAngleTolerance dvDS
  # VR values: ["DS"]
  def name("300A0046"), do: :beam_limiting_device_angle_tolerance

  # (300A,0048) BeamLimitingDeviceToleranceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0048"), do: :beam_limiting_device_tolerance_sequence

  # (300A,004A) BeamLimitingDevicePositionTolerance dvDS
  # VR values: ["DS"]
  def name("300A004A"), do: :beam_limiting_device_position_tolerance

  # (300A,004B) SnoutPositionTolerance dvFL
  # VR values: ["FL"]
  def name("300A004B"), do: :snout_position_tolerance

  # (300A,004C) PatientSupportAngleTolerance dvDS
  # VR values: ["DS"]
  def name("300A004C"), do: :patient_support_angle_tolerance

  # (300A,004E) TableTopEccentricAngleTolerance dvDS
  # VR values: ["DS"]
  def name("300A004E"), do: :table_top_eccentric_angle_tolerance

  # (300A,004F) TableTopPitchAngleTolerance dvFL
  # VR values: ["FL"]
  def name("300A004F"), do: :table_top_pitch_angle_tolerance

  # (300A,0050) TableTopRollAngleTolerance dvFL
  # VR values: ["FL"]
  def name("300A0050"), do: :table_top_roll_angle_tolerance

  # (300A,0051) TableTopVerticalPositionTolerance dvDS
  # VR values: ["DS"]
  def name("300A0051"), do: :table_top_vertical_position_tolerance

  # (300A,0052) TableTopLongitudinalPositionTolerance dvDS
  # VR values: ["DS"]
  def name("300A0052"), do: :table_top_longitudinal_position_tolerance

  # (300A,0053) TableTopLateralPositionTolerance dvDS
  # VR values: ["DS"]
  def name("300A0053"), do: :table_top_lateral_position_tolerance

  # (300A,0055) RTPlanRelationship dvCS
  # VR values: ["CS"]
  def name("300A0055"), do: :rt_plan_relationship

  # (300A,0070) FractionGroupSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0070"), do: :fraction_group_sequence

  # (300A,0071) FractionGroupNumber dvIS
  # VR values: ["IS"]
  def name("300A0071"), do: :fraction_group_number

  # (300A,0072) FractionGroupDescription dvLO
  # VR values: ["LO"]
  def name("300A0072"), do: :fraction_group_description

  # (300A,0078) NumberofFractionsPlanned dvIS
  # VR values: ["IS"]
  def name("300A0078"), do: :numberof_fractions_planned

  # (300A,0079) NumberofFractionPatternDigitsperDay dvIS
  # VR values: ["IS"]
  def name("300A0079"), do: :numberof_fraction_pattern_digitsper_day

  # (300A,007A) RepeatFractionCycleLength dvIS
  # VR values: ["IS"]
  def name("300A007A"), do: :repeat_fraction_cycle_length

  # (300A,007B) FractionPattern dvLT
  # VR values: ["LT"]
  def name("300A007B"), do: :fraction_pattern

  # (300A,0080) NumberofBeams dvIS
  # VR values: ["IS"]
  def name("300A0080"), do: :numberof_beams

  # (300A,0082) BeamDoseSpecificationPoint dvDS
  # VR values: ["DS"]
  def name("300A0082"), do: :beam_dose_specification_point

  # (300A,0084) BeamDose dvDS
  # VR values: ["DS"]
  def name("300A0084"), do: :beam_dose

  # (300A,0086) BeamMeterset dvDS
  # VR values: ["DS"]
  def name("300A0086"), do: :beam_meterset

  # (300A,0088) BeamDosePointDepth dvFL
  # VR values: ["FL"]
  def name("300A0088"), do: :beam_dose_point_depth

  # (300A,0089) BeamDosePointEquivalentDepth dvFL
  # VR values: ["FL"]
  def name("300A0089"), do: :beam_dose_point_equivalent_depth

  # (300A,008A) BeamDosePointSSD dvFL
  # VR values: ["FL"]
  def name("300A008A"), do: :beam_dose_point_ssd

  # (300A,008B) BeamDoseMeaning dvCS
  # VR values: ["CS"]
  def name("300A008B"), do: :beam_dose_meaning

  # (300A,008C) BeamDoseVerificationControlPointSequence dvSQ
  # VR values: ["SQ"]
  def name("300A008C"), do: :beam_dose_verification_control_point_sequence

  # (300A,008D) AverageBeamDosePointDepth dvFL
  # VR values: ["FL"]
  def name("300A008D"), do: :average_beam_dose_point_depth

  # (300A,008E) AverageBeamDosePointEquivalentDepth dvFL
  # VR values: ["FL"]
  def name("300A008E"), do: :average_beam_dose_point_equivalent_depth

  # (300A,008F) AverageBeamDosePointSSD dvFL
  # VR values: ["FL"]
  def name("300A008F"), do: :average_beam_dose_point_ssd

  # (300A,00A0) NumberofBrachyApplicationSetups dvIS
  # VR values: ["IS"]
  def name("300A00A0"), do: :numberof_brachy_application_setups

  # (300A,00A2) BrachyApplicationSetupDoseSpecificationPoint dvDS
  # VR values: ["DS"]
  def name("300A00A2"), do: :brachy_application_setup_dose_specification_point

  # (300A,00A4) BrachyApplicationSetupDose dvDS
  # VR values: ["DS"]
  def name("300A00A4"), do: :brachy_application_setup_dose

  # (300A,00B0) BeamSequence dvSQ
  # VR values: ["SQ"]
  def name("300A00B0"), do: :beam_sequence

  # (300A,00B2) TreatmentMachineName dvSH
  # VR values: ["SH"]
  def name("300A00B2"), do: :treatment_machine_name

  # (300A,00B3) PrimaryDosimeterUnit dvCS
  # VR values: ["CS"]
  def name("300A00B3"), do: :primary_dosimeter_unit

  # (300A,00B4) Source_AxisDistance dvDS
  # VR values: ["DS"]
  def name("300A00B4"), do: :source_axis_distance

  # (300A,00B6) BeamLimitingDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A00B6"), do: :beam_limiting_device_sequence

  # (300A,00B8) RTBeamLimitingDeviceType dvCS
  # VR values: ["CS"]
  def name("300A00B8"), do: :rt_beam_limiting_device_type

  # (300A,00BA) SourcetoBeamLimitingDeviceDistance dvDS
  # VR values: ["DS"]
  def name("300A00BA"), do: :sourceto_beam_limiting_device_distance

  # (300A,00BB) IsocentertoBeamLimitingDeviceDistance dvFL
  # VR values: ["FL"]
  def name("300A00BB"), do: :isocenterto_beam_limiting_device_distance

  # (300A,00BC) NumberofLeaf/JawPairs dvIS
  # VR values: ["IS"]
  def name("300A00BC"), do: :numberof_leaf__jaw_pairs

  # (300A,00BE) LeafPositionBoundaries dvDS
  # VR values: ["DS"]
  def name("300A00BE"), do: :leaf_position_boundaries

  # (300A,00C0) BeamNumber dvIS
  # VR values: ["IS"]
  def name("300A00C0"), do: :beam_number

  # (300A,00C2) BeamName dvLO
  # VR values: ["LO"]
  def name("300A00C2"), do: :beam_name

  # (300A,00C3) BeamDescription dvST
  # VR values: ["ST"]
  def name("300A00C3"), do: :beam_description

  # (300A,00C4) BeamType dvCS
  # VR values: ["CS"]
  def name("300A00C4"), do: :beam_type

  # (300A,00C5) BeamDeliveryDurationLimit dvFD
  # VR values: ["FD"]
  def name("300A00C5"), do: :beam_delivery_duration_limit

  # (300A,00C6) RadiationType dvCS
  # VR values: ["CS"]
  def name("300A00C6"), do: :radiation_type

  # (300A,00C7) High_DoseTechniqueType dvCS
  # VR values: ["CS"]
  def name("300A00C7"), do: :high_dose_technique_type

  # (300A,00C8) ReferenceImageNumber dvIS
  # VR values: ["IS"]
  def name("300A00C8"), do: :reference_image_number

  # (300A,00CA) PlannedVerificationImageSequence dvSQ
  # VR values: ["SQ"]
  def name("300A00CA"), do: :planned_verification_image_sequence

  # (300A,00CC) ImagingDevice_SpecificAcquisitionParameters dvLO
  # VR values: ["LO"]
  def name("300A00CC"), do: :imaging_device_specific_acquisition_parameters

  # (300A,00CE) TreatmentDeliveryType dvCS
  # VR values: ["CS"]
  def name("300A00CE"), do: :treatment_delivery_type

  # (300A,00D0) NumberofWedges dvIS
  # VR values: ["IS"]
  def name("300A00D0"), do: :numberof_wedges

  # (300A,00D1) WedgeSequence dvSQ
  # VR values: ["SQ"]
  def name("300A00D1"), do: :wedge_sequence

  # (300A,00D2) WedgeNumber dvIS
  # VR values: ["IS"]
  def name("300A00D2"), do: :wedge_number

  # (300A,00D3) WedgeType dvCS
  # VR values: ["CS"]
  def name("300A00D3"), do: :wedge_type

  # (300A,00D4) WedgeID dvSH
  # VR values: ["SH"]
  def name("300A00D4"), do: :wedge_id

  # (300A,00D5) WedgeAngle dvIS
  # VR values: ["IS"]
  def name("300A00D5"), do: :wedge_angle

  # (300A,00D6) WedgeFactor dvDS
  # VR values: ["DS"]
  def name("300A00D6"), do: :wedge_factor

  # (300A,00D7) TotalWedgeTrayWater_EquivalentThickness dvFL
  # VR values: ["FL"]
  def name("300A00D7"), do: :total_wedge_tray_water_equivalent_thickness

  # (300A,00D8) WedgeOrientation dvDS
  # VR values: ["DS"]
  def name("300A00D8"), do: :wedge_orientation

  # (300A,00D9) IsocentertoWedgeTrayDistance dvFL
  # VR values: ["FL"]
  def name("300A00D9"), do: :isocenterto_wedge_tray_distance

  # (300A,00DA) SourcetoWedgeTrayDistance dvDS
  # VR values: ["DS"]
  def name("300A00DA"), do: :sourceto_wedge_tray_distance

  # (300A,00DB) WedgeThinEdgePosition dvFL
  # VR values: ["FL"]
  def name("300A00DB"), do: :wedge_thin_edge_position

  # (300A,00DC) BolusID dvSH
  # VR values: ["SH"]
  def name("300A00DC"), do: :bolus_id

  # (300A,00DD) BolusDescription dvST
  # VR values: ["ST"]
  def name("300A00DD"), do: :bolus_description

  # (300A,00E0) NumberofCompensators dvIS
  # VR values: ["IS"]
  def name("300A00E0"), do: :numberof_compensators

  # (300A,00E1) MaterialID dvSH
  # VR values: ["SH"]
  def name("300A00E1"), do: :material_id

  # (300A,00E2) TotalCompensatorTrayFactor dvDS
  # VR values: ["DS"]
  def name("300A00E2"), do: :total_compensator_tray_factor

  # (300A,00E3) CompensatorSequence dvSQ
  # VR values: ["SQ"]
  def name("300A00E3"), do: :compensator_sequence

  # (300A,00E4) CompensatorNumber dvIS
  # VR values: ["IS"]
  def name("300A00E4"), do: :compensator_number

  # (300A,00E5) CompensatorID dvSH
  # VR values: ["SH"]
  def name("300A00E5"), do: :compensator_id

  # (300A,00E6) SourcetoCompensatorTrayDistance dvDS
  # VR values: ["DS"]
  def name("300A00E6"), do: :sourceto_compensator_tray_distance

  # (300A,00E7) CompensatorRows dvIS
  # VR values: ["IS"]
  def name("300A00E7"), do: :compensator_rows

  # (300A,00E8) CompensatorColumns dvIS
  # VR values: ["IS"]
  def name("300A00E8"), do: :compensator_columns

  # (300A,00E9) CompensatorPixelSpacing dvDS
  # VR values: ["DS"]
  def name("300A00E9"), do: :compensator_pixel_spacing

  # (300A,00EA) CompensatorPosition dvDS
  # VR values: ["DS"]
  def name("300A00EA"), do: :compensator_position

  # (300A,00EB) CompensatorTransmissionData dvDS
  # VR values: ["DS"]
  def name("300A00EB"), do: :compensator_transmission_data

  # (300A,00EC) CompensatorThicknessData dvDS
  # VR values: ["DS"]
  def name("300A00EC"), do: :compensator_thickness_data

  # (300A,00ED) NumberofBoli dvIS
  # VR values: ["IS"]
  def name("300A00ED"), do: :numberof_boli

  # (300A,00EE) CompensatorType dvCS
  # VR values: ["CS"]
  def name("300A00EE"), do: :compensator_type

  # (300A,00EF) CompensatorTrayID dvSH
  # VR values: ["SH"]
  def name("300A00EF"), do: :compensator_tray_id

  # (300A,00F0) NumberofBlocks dvIS
  # VR values: ["IS"]
  def name("300A00F0"), do: :numberof_blocks

  # (300A,00F2) TotalBlockTrayFactor dvDS
  # VR values: ["DS"]
  def name("300A00F2"), do: :total_block_tray_factor

  # (300A,00F3) TotalBlockTrayWater_EquivalentThickness dvFL
  # VR values: ["FL"]
  def name("300A00F3"), do: :total_block_tray_water_equivalent_thickness

  # (300A,00F4) BlockSequence dvSQ
  # VR values: ["SQ"]
  def name("300A00F4"), do: :block_sequence

  # (300A,00F5) BlockTrayID dvSH
  # VR values: ["SH"]
  def name("300A00F5"), do: :block_tray_id

  # (300A,00F6) SourcetoBlockTrayDistance dvDS
  # VR values: ["DS"]
  def name("300A00F6"), do: :sourceto_block_tray_distance

  # (300A,00F7) IsocentertoBlockTrayDistance dvFL
  # VR values: ["FL"]
  def name("300A00F7"), do: :isocenterto_block_tray_distance

  # (300A,00F8) BlockType dvCS
  # VR values: ["CS"]
  def name("300A00F8"), do: :block_type

  # (300A,00F9) AccessoryCode dvLO
  # VR values: ["LO"]
  def name("300A00F9"), do: :accessory_code

  # (300A,00FA) BlockDivergence dvCS
  # VR values: ["CS"]
  def name("300A00FA"), do: :block_divergence

  # (300A,00FB) BlockMountingPosition dvCS
  # VR values: ["CS"]
  def name("300A00FB"), do: :block_mounting_position

  # (300A,00FC) BlockNumber dvIS
  # VR values: ["IS"]
  def name("300A00FC"), do: :block_number

  # (300A,00FE) BlockName dvLO
  # VR values: ["LO"]
  def name("300A00FE"), do: :block_name

  # (300A,0100) BlockThickness dvDS
  # VR values: ["DS"]
  def name("300A0100"), do: :block_thickness

  # (300A,0102) BlockTransmission dvDS
  # VR values: ["DS"]
  def name("300A0102"), do: :block_transmission

  # (300A,0104) BlockNumberofPoints dvIS
  # VR values: ["IS"]
  def name("300A0104"), do: :block_numberof_points

  # (300A,0106) BlockData dvDS
  # VR values: ["DS"]
  def name("300A0106"), do: :block_data

  # (300A,0107) ApplicatorSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0107"), do: :applicator_sequence

  # (300A,0108) ApplicatorID dvSH
  # VR values: ["SH"]
  def name("300A0108"), do: :applicator_id

  # (300A,0109) ApplicatorType dvCS
  # VR values: ["CS"]
  def name("300A0109"), do: :applicator_type

  # (300A,010A) ApplicatorDescription dvLO
  # VR values: ["LO"]
  def name("300A010A"), do: :applicator_description

  # (300A,010C) CumulativeDoseReferenceCoefficient dvDS
  # VR values: ["DS"]
  def name("300A010C"), do: :cumulative_dose_reference_coefficient

  # (300A,010E) FinalCumulativeMetersetWeight dvDS
  # VR values: ["DS"]
  def name("300A010E"), do: :final_cumulative_meterset_weight

  # (300A,0110) NumberofControlPoints dvIS
  # VR values: ["IS"]
  def name("300A0110"), do: :numberof_control_points

  # (300A,0111) ControlPointSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0111"), do: :control_point_sequence

  # (300A,0112) ControlPointIndex dvIS
  # VR values: ["IS"]
  def name("300A0112"), do: :control_point_index

  # (300A,0114) NominalBeamEnergy dvDS
  # VR values: ["DS"]
  def name("300A0114"), do: :nominal_beam_energy

  # (300A,0115) DoseRateSet dvDS
  # VR values: ["DS"]
  def name("300A0115"), do: :dose_rate_set

  # (300A,0116) WedgePositionSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0116"), do: :wedge_position_sequence

  # (300A,0118) WedgePosition dvCS
  # VR values: ["CS"]
  def name("300A0118"), do: :wedge_position

  # (300A,011A) BeamLimitingDevicePositionSequence dvSQ
  # VR values: ["SQ"]
  def name("300A011A"), do: :beam_limiting_device_position_sequence

  # (300A,011C) Leaf/JawPositions dvDS
  # VR values: ["DS"]
  def name("300A011C"), do: :leaf__jaw_positions

  # (300A,011E) GantryAngle dvDS
  # VR values: ["DS"]
  def name("300A011E"), do: :gantry_angle

  # (300A,011F) GantryRotationDirection dvCS
  # VR values: ["CS"]
  def name("300A011F"), do: :gantry_rotation_direction

  # (300A,0120) BeamLimitingDeviceAngle dvDS
  # VR values: ["DS"]
  def name("300A0120"), do: :beam_limiting_device_angle

  # (300A,0121) BeamLimitingDeviceRotationDirection dvCS
  # VR values: ["CS"]
  def name("300A0121"), do: :beam_limiting_device_rotation_direction

  # (300A,0122) PatientSupportAngle dvDS
  # VR values: ["DS"]
  def name("300A0122"), do: :patient_support_angle

  # (300A,0123) PatientSupportRotationDirection dvCS
  # VR values: ["CS"]
  def name("300A0123"), do: :patient_support_rotation_direction

  # (300A,0124) TableTopEccentricAxisDistance dvDS
  # VR values: ["DS"]
  def name("300A0124"), do: :table_top_eccentric_axis_distance

  # (300A,0125) TableTopEccentricAngle dvDS
  # VR values: ["DS"]
  def name("300A0125"), do: :table_top_eccentric_angle

  # (300A,0126) TableTopEccentricRotationDirection dvCS
  # VR values: ["CS"]
  def name("300A0126"), do: :table_top_eccentric_rotation_direction

  # (300A,0128) TableTopVerticalPosition dvDS
  # VR values: ["DS"]
  def name("300A0128"), do: :table_top_vertical_position

  # (300A,0129) TableTopLongitudinalPosition dvDS
  # VR values: ["DS"]
  def name("300A0129"), do: :table_top_longitudinal_position

  # (300A,012A) TableTopLateralPosition dvDS
  # VR values: ["DS"]
  def name("300A012A"), do: :table_top_lateral_position

  # (300A,012C) IsocenterPosition dvDS
  # VR values: ["DS"]
  def name("300A012C"), do: :isocenter_position

  # (300A,012E) SurfaceEntryPoint dvDS
  # VR values: ["DS"]
  def name("300A012E"), do: :surface_entry_point

  # (300A,0130) SourcetoSurfaceDistance dvDS
  # VR values: ["DS"]
  def name("300A0130"), do: :sourceto_surface_distance

  # (300A,0134) CumulativeMetersetWeight dvDS
  # VR values: ["DS"]
  def name("300A0134"), do: :cumulative_meterset_weight

  # (300A,0140) TableTopPitchAngle dvFL
  # VR values: ["FL"]
  def name("300A0140"), do: :table_top_pitch_angle

  # (300A,0142) TableTopPitchRotationDirection dvCS
  # VR values: ["CS"]
  def name("300A0142"), do: :table_top_pitch_rotation_direction

  # (300A,0144) TableTopRollAngle dvFL
  # VR values: ["FL"]
  def name("300A0144"), do: :table_top_roll_angle

  # (300A,0146) TableTopRollRotationDirection dvCS
  # VR values: ["CS"]
  def name("300A0146"), do: :table_top_roll_rotation_direction

  # (300A,0148) HeadFixationAngle dvFL
  # VR values: ["FL"]
  def name("300A0148"), do: :head_fixation_angle

  # (300A,014A) GantryPitchAngle dvFL
  # VR values: ["FL"]
  def name("300A014A"), do: :gantry_pitch_angle

  # (300A,014C) GantryPitchRotationDirection dvCS
  # VR values: ["CS"]
  def name("300A014C"), do: :gantry_pitch_rotation_direction

  # (300A,014E) GantryPitchAngleTolerance dvFL
  # VR values: ["FL"]
  def name("300A014E"), do: :gantry_pitch_angle_tolerance

  # (300A,0180) PatientSetupSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0180"), do: :patient_setup_sequence

  # (300A,0182) PatientSetupNumber dvIS
  # VR values: ["IS"]
  def name("300A0182"), do: :patient_setup_number

  # (300A,0183) PatientSetupLabel dvLO
  # VR values: ["LO"]
  def name("300A0183"), do: :patient_setup_label

  # (300A,0184) PatientAdditionalPosition dvLO
  # VR values: ["LO"]
  def name("300A0184"), do: :patient_additional_position

  # (300A,0190) FixationDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0190"), do: :fixation_device_sequence

  # (300A,0192) FixationDeviceType dvCS
  # VR values: ["CS"]
  def name("300A0192"), do: :fixation_device_type

  # (300A,0194) FixationDeviceLabel dvSH
  # VR values: ["SH"]
  def name("300A0194"), do: :fixation_device_label

  # (300A,0196) FixationDeviceDescription dvST
  # VR values: ["ST"]
  def name("300A0196"), do: :fixation_device_description

  # (300A,0198) FixationDevicePosition dvSH
  # VR values: ["SH"]
  def name("300A0198"), do: :fixation_device_position

  # (300A,0199) FixationDevicePitchAngle dvFL
  # VR values: ["FL"]
  def name("300A0199"), do: :fixation_device_pitch_angle

  # (300A,019A) FixationDeviceRollAngle dvFL
  # VR values: ["FL"]
  def name("300A019A"), do: :fixation_device_roll_angle

  # (300A,01A0) ShieldingDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A01A0"), do: :shielding_device_sequence

  # (300A,01A2) ShieldingDeviceType dvCS
  # VR values: ["CS"]
  def name("300A01A2"), do: :shielding_device_type

  # (300A,01A4) ShieldingDeviceLabel dvSH
  # VR values: ["SH"]
  def name("300A01A4"), do: :shielding_device_label

  # (300A,01A6) ShieldingDeviceDescription dvST
  # VR values: ["ST"]
  def name("300A01A6"), do: :shielding_device_description

  # (300A,01A8) ShieldingDevicePosition dvSH
  # VR values: ["SH"]
  def name("300A01A8"), do: :shielding_device_position

  # (300A,01B0) SetupTechnique dvCS
  # VR values: ["CS"]
  def name("300A01B0"), do: :setup_technique

  # (300A,01B2) SetupTechniqueDescription dvST
  # VR values: ["ST"]
  def name("300A01B2"), do: :setup_technique_description

  # (300A,01B4) SetupDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A01B4"), do: :setup_device_sequence

  # (300A,01B6) SetupDeviceType dvCS
  # VR values: ["CS"]
  def name("300A01B6"), do: :setup_device_type

  # (300A,01B8) SetupDeviceLabel dvSH
  # VR values: ["SH"]
  def name("300A01B8"), do: :setup_device_label

  # (300A,01BA) SetupDeviceDescription dvST
  # VR values: ["ST"]
  def name("300A01BA"), do: :setup_device_description

  # (300A,01BC) SetupDeviceParameter dvDS
  # VR values: ["DS"]
  def name("300A01BC"), do: :setup_device_parameter

  # (300A,01D0) SetupReferenceDescription dvST
  # VR values: ["ST"]
  def name("300A01D0"), do: :setup_reference_description

  # (300A,01D2) TableTopVerticalSetupDisplacement dvDS
  # VR values: ["DS"]
  def name("300A01D2"), do: :table_top_vertical_setup_displacement

  # (300A,01D4) TableTopLongitudinalSetupDisplacement dvDS
  # VR values: ["DS"]
  def name("300A01D4"), do: :table_top_longitudinal_setup_displacement

  # (300A,01D6) TableTopLateralSetupDisplacement dvDS
  # VR values: ["DS"]
  def name("300A01D6"), do: :table_top_lateral_setup_displacement

  # (300A,0200) BrachyTreatmentTechnique dvCS
  # VR values: ["CS"]
  def name("300A0200"), do: :brachy_treatment_technique

  # (300A,0202) BrachyTreatmentType dvCS
  # VR values: ["CS"]
  def name("300A0202"), do: :brachy_treatment_type

  # (300A,0206) TreatmentMachineSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0206"), do: :treatment_machine_sequence

  # (300A,0210) SourceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0210"), do: :source_sequence

  # (300A,0212) SourceNumber dvIS
  # VR values: ["IS"]
  def name("300A0212"), do: :source_number

  # (300A,0214) SourceType dvCS
  # VR values: ["CS"]
  def name("300A0214"), do: :source_type

  # (300A,0216) SourceManufacturer dvLO
  # VR values: ["LO"]
  def name("300A0216"), do: :source_manufacturer

  # (300A,0218) ActiveSourceDiameter dvDS
  # VR values: ["DS"]
  def name("300A0218"), do: :active_source_diameter

  # (300A,021A) ActiveSourceLength dvDS
  # VR values: ["DS"]
  def name("300A021A"), do: :active_source_length

  # (300A,021B) SourceModelID dvSH
  # VR values: ["SH"]
  def name("300A021B"), do: :source_model_id

  # (300A,021C) SourceDescription dvLO
  # VR values: ["LO"]
  def name("300A021C"), do: :source_description

  # (300A,0222) SourceEncapsulationNominalThickness dvDS
  # VR values: ["DS"]
  def name("300A0222"), do: :source_encapsulation_nominal_thickness

  # (300A,0224) SourceEncapsulationNominalTransmission dvDS
  # VR values: ["DS"]
  def name("300A0224"), do: :source_encapsulation_nominal_transmission

  # (300A,0226) SourceIsotopeName dvLO
  # VR values: ["LO"]
  def name("300A0226"), do: :source_isotope_name

  # (300A,0228) SourceIsotopeHalfLife dvDS
  # VR values: ["DS"]
  def name("300A0228"), do: :source_isotope_half_life

  # (300A,0229) SourceStrengthUnits dvCS
  # VR values: ["CS"]
  def name("300A0229"), do: :source_strength_units

  # (300A,022A) ReferenceAirKermaRate dvDS
  # VR values: ["DS"]
  def name("300A022A"), do: :reference_air_kerma_rate

  # (300A,022B) SourceStrength dvDS
  # VR values: ["DS"]
  def name("300A022B"), do: :source_strength

  # (300A,022C) SourceStrengthReferenceDate dvDA
  # VR values: ["DA"]
  def name("300A022C"), do: :source_strength_reference_date

  # (300A,022E) SourceStrengthReferenceTime dvTM
  # VR values: ["TM"]
  def name("300A022E"), do: :source_strength_reference_time

  # (300A,0230) ApplicationSetupSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0230"), do: :application_setup_sequence

  # (300A,0232) ApplicationSetupType dvCS
  # VR values: ["CS"]
  def name("300A0232"), do: :application_setup_type

  # (300A,0234) ApplicationSetupNumber dvIS
  # VR values: ["IS"]
  def name("300A0234"), do: :application_setup_number

  # (300A,0236) ApplicationSetupName dvLO
  # VR values: ["LO"]
  def name("300A0236"), do: :application_setup_name

  # (300A,0238) ApplicationSetupManufacturer dvLO
  # VR values: ["LO"]
  def name("300A0238"), do: :application_setup_manufacturer

  # (300A,0240) TemplateNumber dvIS
  # VR values: ["IS"]
  def name("300A0240"), do: :template_number

  # (300A,0242) TemplateType dvSH
  # VR values: ["SH"]
  def name("300A0242"), do: :template_type

  # (300A,0244) TemplateName dvLO
  # VR values: ["LO"]
  def name("300A0244"), do: :template_name

  # (300A,0250) TotalReferenceAirKerma dvDS
  # VR values: ["DS"]
  def name("300A0250"), do: :total_reference_air_kerma

  # (300A,0260) BrachyAccessoryDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0260"), do: :brachy_accessory_device_sequence

  # (300A,0262) BrachyAccessoryDeviceNumber dvIS
  # VR values: ["IS"]
  def name("300A0262"), do: :brachy_accessory_device_number

  # (300A,0263) BrachyAccessoryDeviceID dvSH
  # VR values: ["SH"]
  def name("300A0263"), do: :brachy_accessory_device_id

  # (300A,0264) BrachyAccessoryDeviceType dvCS
  # VR values: ["CS"]
  def name("300A0264"), do: :brachy_accessory_device_type

  # (300A,0266) BrachyAccessoryDeviceName dvLO
  # VR values: ["LO"]
  def name("300A0266"), do: :brachy_accessory_device_name

  # (300A,026A) BrachyAccessoryDeviceNominalThickness dvDS
  # VR values: ["DS"]
  def name("300A026A"), do: :brachy_accessory_device_nominal_thickness

  # (300A,026C) BrachyAccessoryDeviceNominalTransmission dvDS
  # VR values: ["DS"]
  def name("300A026C"), do: :brachy_accessory_device_nominal_transmission

  # (300A,0280) ChannelSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0280"), do: :channel_sequence

  # (300A,0282) ChannelNumber dvIS
  # VR values: ["IS"]
  def name("300A0282"), do: :channel_number

  # (300A,0284) ChannelLength dvDS
  # VR values: ["DS"]
  def name("300A0284"), do: :channel_length

  # (300A,0286) ChannelTotalTime dvDS
  # VR values: ["DS"]
  def name("300A0286"), do: :channel_total_time

  # (300A,0288) SourceMovementType dvCS
  # VR values: ["CS"]
  def name("300A0288"), do: :source_movement_type

  # (300A,028A) NumberofPulses dvIS
  # VR values: ["IS"]
  def name("300A028A"), do: :numberof_pulses

  # (300A,028C) PulseRepetitionInterval dvDS
  # VR values: ["DS"]
  def name("300A028C"), do: :pulse_repetition_interval

  # (300A,0290) SourceApplicatorNumber dvIS
  # VR values: ["IS"]
  def name("300A0290"), do: :source_applicator_number

  # (300A,0291) SourceApplicatorID dvSH
  # VR values: ["SH"]
  def name("300A0291"), do: :source_applicator_id

  # (300A,0292) SourceApplicatorType dvCS
  # VR values: ["CS"]
  def name("300A0292"), do: :source_applicator_type

  # (300A,0294) SourceApplicatorName dvLO
  # VR values: ["LO"]
  def name("300A0294"), do: :source_applicator_name

  # (300A,0296) SourceApplicatorLength dvDS
  # VR values: ["DS"]
  def name("300A0296"), do: :source_applicator_length

  # (300A,0298) SourceApplicatorManufacturer dvLO
  # VR values: ["LO"]
  def name("300A0298"), do: :source_applicator_manufacturer

  # (300A,029C) SourceApplicatorWallNominalThickness dvDS
  # VR values: ["DS"]
  def name("300A029C"), do: :source_applicator_wall_nominal_thickness

  # (300A,029E) SourceApplicatorWallNominalTransmission dvDS
  # VR values: ["DS"]
  def name("300A029E"), do: :source_applicator_wall_nominal_transmission

  # (300A,02A0) SourceApplicatorStepSize dvDS
  # VR values: ["DS"]
  def name("300A02A0"), do: :source_applicator_step_size

  # (300A,02A2) TransferTubeNumber dvIS
  # VR values: ["IS"]
  def name("300A02A2"), do: :transfer_tube_number

  # (300A,02A4) TransferTubeLength dvDS
  # VR values: ["DS"]
  def name("300A02A4"), do: :transfer_tube_length

  # (300A,02B0) ChannelShieldSequence dvSQ
  # VR values: ["SQ"]
  def name("300A02B0"), do: :channel_shield_sequence

  # (300A,02B2) ChannelShieldNumber dvIS
  # VR values: ["IS"]
  def name("300A02B2"), do: :channel_shield_number

  # (300A,02B3) ChannelShieldID dvSH
  # VR values: ["SH"]
  def name("300A02B3"), do: :channel_shield_id

  # (300A,02B4) ChannelShieldName dvLO
  # VR values: ["LO"]
  def name("300A02B4"), do: :channel_shield_name

  # (300A,02B8) ChannelShieldNominalThickness dvDS
  # VR values: ["DS"]
  def name("300A02B8"), do: :channel_shield_nominal_thickness

  # (300A,02BA) ChannelShieldNominalTransmission dvDS
  # VR values: ["DS"]
  def name("300A02BA"), do: :channel_shield_nominal_transmission

  # (300A,02C8) FinalCumulativeTimeWeight dvDS
  # VR values: ["DS"]
  def name("300A02C8"), do: :final_cumulative_time_weight

  # (300A,02D0) BrachyControlPointSequence dvSQ
  # VR values: ["SQ"]
  def name("300A02D0"), do: :brachy_control_point_sequence

  # (300A,02D2) ControlPointRelativePosition dvDS
  # VR values: ["DS"]
  def name("300A02D2"), do: :control_point_relative_position

  # (300A,02D4) ControlPoint3DPosition dvDS
  # VR values: ["DS"]
  def name("300A02D4"), do: :control_point3_d_position

  # (300A,02D6) CumulativeTimeWeight dvDS
  # VR values: ["DS"]
  def name("300A02D6"), do: :cumulative_time_weight

  # (300A,02E0) CompensatorDivergence dvCS
  # VR values: ["CS"]
  def name("300A02E0"), do: :compensator_divergence

  # (300A,02E1) CompensatorMountingPosition dvCS
  # VR values: ["CS"]
  def name("300A02E1"), do: :compensator_mounting_position

  # (300A,02E2) SourcetoCompensatorDistance dvDS
  # VR values: ["DS"]
  def name("300A02E2"), do: :sourceto_compensator_distance

  # (300A,02E3) TotalCompensatorTrayWater_EquivalentThickness dvFL
  # VR values: ["FL"]
  def name("300A02E3"), do: :total_compensator_tray_water_equivalent_thickness

  # (300A,02E4) IsocentertoCompensatorTrayDistance dvFL
  # VR values: ["FL"]
  def name("300A02E4"), do: :isocenterto_compensator_tray_distance

  # (300A,02E5) CompensatorColumnOffset dvFL
  # VR values: ["FL"]
  def name("300A02E5"), do: :compensator_column_offset

  # (300A,02E6) IsocentertoCompensatorDistances dvFL
  # VR values: ["FL"]
  def name("300A02E6"), do: :isocenterto_compensator_distances

  # (300A,02E7) CompensatorRelativeStoppingPowerRatio dvFL
  # VR values: ["FL"]
  def name("300A02E7"), do: :compensator_relative_stopping_power_ratio

  # (300A,02E8) CompensatorMillingToolDiameter dvFL
  # VR values: ["FL"]
  def name("300A02E8"), do: :compensator_milling_tool_diameter

  # (300A,02EA) IonRangeCompensatorSequence dvSQ
  # VR values: ["SQ"]
  def name("300A02EA"), do: :ion_range_compensator_sequence

  # (300A,02EB) CompensatorDescription dvLT
  # VR values: ["LT"]
  def name("300A02EB"), do: :compensator_description

  # (300A,0302) RadiationMassNumber dvIS
  # VR values: ["IS"]
  def name("300A0302"), do: :radiation_mass_number

  # (300A,0304) RadiationAtomicNumber dvIS
  # VR values: ["IS"]
  def name("300A0304"), do: :radiation_atomic_number

  # (300A,0306) RadiationChargeState dvSS
  # VR values: ["SS"]
  def name("300A0306"), do: :radiation_charge_state

  # (300A,0308) ScanMode dvCS
  # VR values: ["CS"]
  def name("300A0308"), do: :scan_mode

  # (300A,030A) VirtualSource_AxisDistances dvFL
  # VR values: ["FL"]
  def name("300A030A"), do: :virtual_source_axis_distances

  # (300A,030C) SnoutSequence dvSQ
  # VR values: ["SQ"]
  def name("300A030C"), do: :snout_sequence

  # (300A,030D) SnoutPosition dvFL
  # VR values: ["FL"]
  def name("300A030D"), do: :snout_position

  # (300A,030F) SnoutID dvSH
  # VR values: ["SH"]
  def name("300A030F"), do: :snout_id

  # (300A,0312) NumberofRangeShifters dvIS
  # VR values: ["IS"]
  def name("300A0312"), do: :numberof_range_shifters

  # (300A,0314) RangeShifterSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0314"), do: :range_shifter_sequence

  # (300A,0316) RangeShifterNumber dvIS
  # VR values: ["IS"]
  def name("300A0316"), do: :range_shifter_number

  # (300A,0318) RangeShifterID dvSH
  # VR values: ["SH"]
  def name("300A0318"), do: :range_shifter_id

  # (300A,0320) RangeShifterType dvCS
  # VR values: ["CS"]
  def name("300A0320"), do: :range_shifter_type

  # (300A,0322) RangeShifterDescription dvLO
  # VR values: ["LO"]
  def name("300A0322"), do: :range_shifter_description

  # (300A,0330) NumberofLateralSpreadingDevices dvIS
  # VR values: ["IS"]
  def name("300A0330"), do: :numberof_lateral_spreading_devices

  # (300A,0332) LateralSpreadingDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0332"), do: :lateral_spreading_device_sequence

  # (300A,0334) LateralSpreadingDeviceNumber dvIS
  # VR values: ["IS"]
  def name("300A0334"), do: :lateral_spreading_device_number

  # (300A,0336) LateralSpreadingDeviceID dvSH
  # VR values: ["SH"]
  def name("300A0336"), do: :lateral_spreading_device_id

  # (300A,0338) LateralSpreadingDeviceType dvCS
  # VR values: ["CS"]
  def name("300A0338"), do: :lateral_spreading_device_type

  # (300A,033A) LateralSpreadingDeviceDescription dvLO
  # VR values: ["LO"]
  def name("300A033A"), do: :lateral_spreading_device_description

  # (300A,033C) LateralSpreadingDeviceWaterEquivalentThickness dvFL
  # VR values: ["FL"]
  def name("300A033C"), do: :lateral_spreading_device_water_equivalent_thickness

  # (300A,0340) NumberofRangeModulators dvIS
  # VR values: ["IS"]
  def name("300A0340"), do: :numberof_range_modulators

  # (300A,0342) RangeModulatorSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0342"), do: :range_modulator_sequence

  # (300A,0344) RangeModulatorNumber dvIS
  # VR values: ["IS"]
  def name("300A0344"), do: :range_modulator_number

  # (300A,0346) RangeModulatorID dvSH
  # VR values: ["SH"]
  def name("300A0346"), do: :range_modulator_id

  # (300A,0348) RangeModulatorType dvCS
  # VR values: ["CS"]
  def name("300A0348"), do: :range_modulator_type

  # (300A,034A) RangeModulatorDescription dvLO
  # VR values: ["LO"]
  def name("300A034A"), do: :range_modulator_description

  # (300A,034C) BeamCurrentModulationID dvSH
  # VR values: ["SH"]
  def name("300A034C"), do: :beam_current_modulation_id

  # (300A,0350) PatientSupportType dvCS
  # VR values: ["CS"]
  def name("300A0350"), do: :patient_support_type

  # (300A,0352) PatientSupportID dvSH
  # VR values: ["SH"]
  def name("300A0352"), do: :patient_support_id

  # (300A,0354) PatientSupportAccessoryCode dvLO
  # VR values: ["LO"]
  def name("300A0354"), do: :patient_support_accessory_code

  # (300A,0356) FixationLightAzimuthalAngle dvFL
  # VR values: ["FL"]
  def name("300A0356"), do: :fixation_light_azimuthal_angle

  # (300A,0358) FixationLightPolarAngle dvFL
  # VR values: ["FL"]
  def name("300A0358"), do: :fixation_light_polar_angle

  # (300A,035A) MetersetRate dvFL
  # VR values: ["FL"]
  def name("300A035A"), do: :meterset_rate

  # (300A,0360) RangeShifterSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0360"), do: :range_shifter_settings_sequence

  # (300A,0362) RangeShifterSetting dvLO
  # VR values: ["LO"]
  def name("300A0362"), do: :range_shifter_setting

  # (300A,0364) IsocentertoRangeShifterDistance dvFL
  # VR values: ["FL"]
  def name("300A0364"), do: :isocenterto_range_shifter_distance

  # (300A,0366) RangeShifterWaterEquivalentThickness dvFL
  # VR values: ["FL"]
  def name("300A0366"), do: :range_shifter_water_equivalent_thickness

  # (300A,0370) LateralSpreadingDeviceSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0370"), do: :lateral_spreading_device_settings_sequence

  # (300A,0372) LateralSpreadingDeviceSetting dvLO
  # VR values: ["LO"]
  def name("300A0372"), do: :lateral_spreading_device_setting

  # (300A,0374) IsocentertoLateralSpreadingDeviceDistance dvFL
  # VR values: ["FL"]
  def name("300A0374"), do: :isocenterto_lateral_spreading_device_distance

  # (300A,0380) RangeModulatorSettingsSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0380"), do: :range_modulator_settings_sequence

  # (300A,0382) RangeModulatorGatingStartValue dvFL
  # VR values: ["FL"]
  def name("300A0382"), do: :range_modulator_gating_start_value

  # (300A,0384) RangeModulatorGatingStopValue dvFL
  # VR values: ["FL"]
  def name("300A0384"), do: :range_modulator_gating_stop_value

  # (300A,0386) RangeModulatorGatingStartWaterEquivalentThickness dvFL
  # VR values: ["FL"]
  def name("300A0386"), do: :range_modulator_gating_start_water_equivalent_thickness

  # (300A,0388) RangeModulatorGatingStopWaterEquivalentThickness dvFL
  # VR values: ["FL"]
  def name("300A0388"), do: :range_modulator_gating_stop_water_equivalent_thickness

  # (300A,038A) IsocentertoRangeModulatorDistance dvFL
  # VR values: ["FL"]
  def name("300A038A"), do: :isocenterto_range_modulator_distance

  # (300A,0390) ScanSpotTuneID dvSH
  # VR values: ["SH"]
  def name("300A0390"), do: :scan_spot_tune_id

  # (300A,0392) NumberofScanSpotPositions dvIS
  # VR values: ["IS"]
  def name("300A0392"), do: :numberof_scan_spot_positions

  # (300A,0394) ScanSpotPositionMap dvFL
  # VR values: ["FL"]
  def name("300A0394"), do: :scan_spot_position_map

  # (300A,0396) ScanSpotMetersetWeights dvFL
  # VR values: ["FL"]
  def name("300A0396"), do: :scan_spot_meterset_weights

  # (300A,0398) ScanningSpotSize dvFL
  # VR values: ["FL"]
  def name("300A0398"), do: :scanning_spot_size

  # (300A,039A) NumberofPaintings dvIS
  # VR values: ["IS"]
  def name("300A039A"), do: :numberof_paintings

  # (300A,03A0) IonToleranceTableSequence dvSQ
  # VR values: ["SQ"]
  def name("300A03A0"), do: :ion_tolerance_table_sequence

  # (300A,03A2) IonBeamSequence dvSQ
  # VR values: ["SQ"]
  def name("300A03A2"), do: :ion_beam_sequence

  # (300A,03A4) IonBeamLimitingDeviceSequence dvSQ
  # VR values: ["SQ"]
  def name("300A03A4"), do: :ion_beam_limiting_device_sequence

  # (300A,03A6) IonBlockSequence dvSQ
  # VR values: ["SQ"]
  def name("300A03A6"), do: :ion_block_sequence

  # (300A,03A8) IonControlPointSequence dvSQ
  # VR values: ["SQ"]
  def name("300A03A8"), do: :ion_control_point_sequence

  # (300A,03AA) IonWedgeSequence dvSQ
  # VR values: ["SQ"]
  def name("300A03AA"), do: :ion_wedge_sequence

  # (300A,03AC) IonWedgePositionSequence dvSQ
  # VR values: ["SQ"]
  def name("300A03AC"), do: :ion_wedge_position_sequence

  # (300A,0401) ReferencedSetupImageSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0401"), do: :referenced_setup_image_sequence

  # (300A,0402) SetupImageComment dvST
  # VR values: ["ST"]
  def name("300A0402"), do: :setup_image_comment

  # (300A,0410) MotionSynchronizationSequence dvSQ
  # VR values: ["SQ"]
  def name("300A0410"), do: :motion_synchronization_sequence

  # (300A,0412) ControlPointOrientation dvFL
  # VR values: ["FL"]
  def name("300A0412"), do: :control_point_orientation

  # (300A,0420) GeneralAccessorySequence dvSQ
  # VR values: ["SQ"]
  def name("300A0420"), do: :general_accessory_sequence

  # (300A,0421) GeneralAccessoryID dvSH
  # VR values: ["SH"]
  def name("300A0421"), do: :general_accessory_id

  # (300A,0422) GeneralAccessoryDescription dvST
  # VR values: ["ST"]
  def name("300A0422"), do: :general_accessory_description

  # (300A,0423) GeneralAccessoryType dvCS
  # VR values: ["CS"]
  def name("300A0423"), do: :general_accessory_type

  # (300A,0424) GeneralAccessoryNumber dvIS
  # VR values: ["IS"]
  def name("300A0424"), do: :general_accessory_number

  # (300A,0425) SourcetoGeneralAccessoryDistance dvFL
  # VR values: ["FL"]
  def name("300A0425"), do: :sourceto_general_accessory_distance

  # (300A,0431) ApplicatorGeometrySequence dvSQ
  # VR values: ["SQ"]
  def name("300A0431"), do: :applicator_geometry_sequence

  # (300A,0432) ApplicatorApertureShape dvCS
  # VR values: ["CS"]
  def name("300A0432"), do: :applicator_aperture_shape

  # (300A,0433) ApplicatorOpening dvFL
  # VR values: ["FL"]
  def name("300A0433"), do: :applicator_opening

  # (300A,0434) ApplicatorOpeningX dvFL
  # VR values: ["FL"]
  def name("300A0434"), do: :applicator_opening_x

  # (300A,0435) ApplicatorOpeningY dvFL
  # VR values: ["FL"]
  def name("300A0435"), do: :applicator_opening_y

  # (300A,0436) SourcetoApplicatorMountingPositionDistance dvFL
  # VR values: ["FL"]
  def name("300A0436"), do: :sourceto_applicator_mounting_position_distance

  # (300C,0000) RTRelationshipGroupLength dvUL
  # VR values: ["UL"]
  def name("300C0000"), do: :rt_relationship_group_length

  # (300C,0002) ReferencedRTPlanSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0002"), do: :referenced_rt_plan_sequence

  # (300C,0004) ReferencedBeamSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0004"), do: :referenced_beam_sequence

  # (300C,0006) ReferencedBeamNumber dvIS
  # VR values: ["IS"]
  def name("300C0006"), do: :referenced_beam_number

  # (300C,0007) ReferencedReferenceImageNumber dvIS
  # VR values: ["IS"]
  def name("300C0007"), do: :referenced_reference_image_number

  # (300C,0008) StartCumulativeMetersetWeight dvDS
  # VR values: ["DS"]
  def name("300C0008"), do: :start_cumulative_meterset_weight

  # (300C,0009) EndCumulativeMetersetWeight dvDS
  # VR values: ["DS"]
  def name("300C0009"), do: :end_cumulative_meterset_weight

  # (300C,000A) ReferencedBrachyApplicationSetupSequence dvSQ
  # VR values: ["SQ"]
  def name("300C000A"), do: :referenced_brachy_application_setup_sequence

  # (300C,000C) ReferencedBrachyApplicationSetupNumber dvIS
  # VR values: ["IS"]
  def name("300C000C"), do: :referenced_brachy_application_setup_number

  # (300C,000E) ReferencedSourceNumber dvIS
  # VR values: ["IS"]
  def name("300C000E"), do: :referenced_source_number

  # (300C,0020) ReferencedFractionGroupSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0020"), do: :referenced_fraction_group_sequence

  # (300C,0022) ReferencedFractionGroupNumber dvIS
  # VR values: ["IS"]
  def name("300C0022"), do: :referenced_fraction_group_number

  # (300C,0040) ReferencedVerificationImageSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0040"), do: :referenced_verification_image_sequence

  # (300C,0042) ReferencedReferenceImageSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0042"), do: :referenced_reference_image_sequence

  # (300C,0050) ReferencedDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0050"), do: :referenced_dose_reference_sequence

  # (300C,0051) ReferencedDoseReferenceNumber dvIS
  # VR values: ["IS"]
  def name("300C0051"), do: :referenced_dose_reference_number

  # (300C,0055) BrachyReferencedDoseReferenceSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0055"), do: :brachy_referenced_dose_reference_sequence

  # (300C,0060) ReferencedStructureSetSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0060"), do: :referenced_structure_set_sequence

  # (300C,006A) ReferencedPatientSetupNumber dvIS
  # VR values: ["IS"]
  def name("300C006A"), do: :referenced_patient_setup_number

  # (300C,0080) ReferencedDoseSequence dvSQ
  # VR values: ["SQ"]
  def name("300C0080"), do: :referenced_dose_sequence

  # (300C,00A0) ReferencedToleranceTableNumber dvIS
  # VR values: ["IS"]
  def name("300C00A0"), do: :referenced_tolerance_table_number

  # (300C,00B0) ReferencedBolusSequence dvSQ
  # VR values: ["SQ"]
  def name("300C00B0"), do: :referenced_bolus_sequence

  # (300C,00C0) ReferencedWedgeNumber dvIS
  # VR values: ["IS"]
  def name("300C00C0"), do: :referenced_wedge_number

  # (300C,00D0) ReferencedCompensatorNumber dvIS
  # VR values: ["IS"]
  def name("300C00D0"), do: :referenced_compensator_number

  # (300C,00E0) ReferencedBlockNumber dvIS
  # VR values: ["IS"]
  def name("300C00E0"), do: :referenced_block_number

  # (300C,00F0) ReferencedControlPointIndex dvIS
  # VR values: ["IS"]
  def name("300C00F0"), do: :referenced_control_point_index

  # (300C,00F2) ReferencedControlPointSequence dvSQ
  # VR values: ["SQ"]
  def name("300C00F2"), do: :referenced_control_point_sequence

  # (300C,00F4) ReferencedStartControlPointIndex dvIS
  # VR values: ["IS"]
  def name("300C00F4"), do: :referenced_start_control_point_index

  # (300C,00F6) ReferencedStopControlPointIndex dvIS
  # VR values: ["IS"]
  def name("300C00F6"), do: :referenced_stop_control_point_index

  # (300C,0100) ReferencedRangeShifterNumber dvIS
  # VR values: ["IS"]
  def name("300C0100"), do: :referenced_range_shifter_number

  # (300C,0102) ReferencedLateralSpreadingDeviceNumber dvIS
  # VR values: ["IS"]
  def name("300C0102"), do: :referenced_lateral_spreading_device_number

  # (300C,0104) ReferencedRangeModulatorNumber dvIS
  # VR values: ["IS"]
  def name("300C0104"), do: :referenced_range_modulator_number

  # (300E,0000) ApprovalGroupLength dvUL
  # VR values: ["UL"]
  def name("300E0000"), do: :approval_group_length

  # (300E,0002) ApprovalStatus dvCS
  # VR values: ["CS"]
  def name("300E0002"), do: :approval_status

  # (300E,0004) ReviewDate dvDA
  # VR values: ["DA"]
  def name("300E0004"), do: :review_date

  # (300E,0005) ReviewTime dvTM
  # VR values: ["TM"]
  def name("300E0005"), do: :review_time

  # (300E,0008) ReviewerName dvPN
  # VR values: ["PN"]
  def name("300E0008"), do: :reviewer_name

  # (4000,0000) TextGroupLength dvUL
  # VR values: ["UL"]
  def name("40000000"), do: :text_group_length

  # (4000,0010) Arbitrary dvLT
  # VR values: ["LT"]
  def name("40000010"), do: :arbitrary

  # (4000,4000) TextComments dvLT
  # VR values: ["LT"]
  def name("40004000"), do: :text_comments

  # (4008,0000) ResultsGroupLength dvUL
  # VR values: ["UL"]
  def name("40080000"), do: :results_group_length

  # (4008,0040) ResultsID dvSH
  # VR values: ["SH"]
  def name("40080040"), do: :results_id

  # (4008,0042) ResultsIDIssuer dvLO
  # VR values: ["LO"]
  def name("40080042"), do: :results_id_issuer

  # (4008,0050) ReferencedInterpretationSequence dvSQ
  # VR values: ["SQ"]
  def name("40080050"), do: :referenced_interpretation_sequence

  # (4008,00FF) ReportProductionStatus(Trial) dvCS
  # VR values: ["CS"]
  def name("400800FF"), do: :report_production_status_trial

  # (4008,0100) InterpretationRecordedDate dvDA
  # VR values: ["DA"]
  def name("40080100"), do: :interpretation_recorded_date

  # (4008,0101) InterpretationRecordedTime dvTM
  # VR values: ["TM"]
  def name("40080101"), do: :interpretation_recorded_time

  # (4008,0102) InterpretationRecorder dvPN
  # VR values: ["PN"]
  def name("40080102"), do: :interpretation_recorder

  # (4008,0103) ReferencetoRecordedSound dvLO
  # VR values: ["LO"]
  def name("40080103"), do: :referenceto_recorded_sound

  # (4008,0108) InterpretationTranscriptionDate dvDA
  # VR values: ["DA"]
  def name("40080108"), do: :interpretation_transcription_date

  # (4008,0109) InterpretationTranscriptionTime dvTM
  # VR values: ["TM"]
  def name("40080109"), do: :interpretation_transcription_time

  # (4008,010A) InterpretationTranscriber dvPN
  # VR values: ["PN"]
  def name("4008010A"), do: :interpretation_transcriber

  # (4008,010B) InterpretationText dvST
  # VR values: ["ST"]
  def name("4008010B"), do: :interpretation_text

  # (4008,010C) InterpretationAuthor dvPN
  # VR values: ["PN"]
  def name("4008010C"), do: :interpretation_author

  # (4008,0111) InterpretationApproverSequence dvSQ
  # VR values: ["SQ"]
  def name("40080111"), do: :interpretation_approver_sequence

  # (4008,0112) InterpretationApprovalDate dvDA
  # VR values: ["DA"]
  def name("40080112"), do: :interpretation_approval_date

  # (4008,0113) InterpretationApprovalTime dvTM
  # VR values: ["TM"]
  def name("40080113"), do: :interpretation_approval_time

  # (4008,0114) PhysicianApprovingInterpretation dvPN
  # VR values: ["PN"]
  def name("40080114"), do: :physician_approving_interpretation

  # (4008,0115) InterpretationDiagnosisDescription dvLT
  # VR values: ["LT"]
  def name("40080115"), do: :interpretation_diagnosis_description

  # (4008,0117) InterpretationDiagnosisCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("40080117"), do: :interpretation_diagnosis_code_sequence

  # (4008,0118) ResultsDistributionListSequence dvSQ
  # VR values: ["SQ"]
  def name("40080118"), do: :results_distribution_list_sequence

  # (4008,0119) DistributionName dvPN
  # VR values: ["PN"]
  def name("40080119"), do: :distribution_name

  # (4008,011A) DistributionAddress dvLO
  # VR values: ["LO"]
  def name("4008011A"), do: :distribution_address

  # (4008,0200) InterpretationID dvSH
  # VR values: ["SH"]
  def name("40080200"), do: :interpretation_id

  # (4008,0202) InterpretationIDIssuer dvLO
  # VR values: ["LO"]
  def name("40080202"), do: :interpretation_id_issuer

  # (4008,0210) InterpretationTypeID dvCS
  # VR values: ["CS"]
  def name("40080210"), do: :interpretation_type_id

  # (4008,0212) InterpretationStatusID dvCS
  # VR values: ["CS"]
  def name("40080212"), do: :interpretation_status_id

  # (4008,0300) Impressions dvST
  # VR values: ["ST"]
  def name("40080300"), do: :impressions

  # (4008,4000) ResultsComments dvST
  # VR values: ["ST"]
  def name("40084000"), do: :results_comments

  # (4009,0001) Undocumented dvLT
  # VR values: ["LT"]
  def name("40090001"), do: :undocumented

  # (4009,0020) Undocumented dvLT
  # VR values: ["LT"]
  def name("40090020"), do: :undocumented

  # (4009,0030) Undocumented dvDA
  # VR values: ["DA"]
  def name("40090030"), do: :undocumented

  # (4009,0070) Undocumented dvLT
  # VR values: ["LT"]
  def name("40090070"), do: :undocumented

  # (4009,00E0) Undocumented dvLT
  # VR values: ["LT"]
  def name("400900E0"), do: :undocumented

  # (4009,00E1) Undocumented dvLT
  # VR values: ["LT"]
  def name("400900E1"), do: :undocumented

  # (4009,00E3) Undocumented dvLT
  # VR values: ["LT"]
  def name("400900E3"), do: :undocumented

  # (4010,0001) LowEnergyDetectors dvCS
  # VR values: ["CS"]
  def name("40100001"), do: :low_energy_detectors

  # (4010,0002) HighEnergyDetectors dvCS
  # VR values: ["CS"]
  def name("40100002"), do: :high_energy_detectors

  # (4010,0004) DetectorGeometrySequence dvSQ
  # VR values: ["SQ"]
  def name("40100004"), do: :detector_geometry_sequence

  # (4010,1001) ThreatROIVoxelSequence dvSQ
  # VR values: ["SQ"]
  def name("40101001"), do: :threat_roi_voxel_sequence

  # (4010,1004) ThreatROIBase dvFL
  # VR values: ["FL"]
  def name("40101004"), do: :threat_roi_base

  # (4010,1005) ThreatROIExtents dvFL
  # VR values: ["FL"]
  def name("40101005"), do: :threat_roi_extents

  # (4010,1006) ThreatROIBitmap dvOB
  # VR values: ["OB"]
  def name("40101006"), do: :threat_roi_bitmap

  # (4010,1007) RouteSegmentID dvSH
  # VR values: ["SH"]
  def name("40101007"), do: :route_segment_id

  # (4010,1008) GantryType dvCS
  # VR values: ["CS"]
  def name("40101008"), do: :gantry_type

  # (4010,1009) OOIOwnerType dvCS
  # VR values: ["CS"]
  def name("40101009"), do: :ooi_owner_type

  # (4010,100A) RouteSegmentSequence dvSQ
  # VR values: ["SQ"]
  def name("4010100A"), do: :route_segment_sequence

  # (4010,1010) PotentialThreatObjectID dvUS
  # VR values: ["US"]
  def name("40101010"), do: :potential_threat_object_id

  # (4010,1011) ThreatSequence dvSQ
  # VR values: ["SQ"]
  def name("40101011"), do: :threat_sequence

  # (4010,1012) ThreatCategory dvCS
  # VR values: ["CS"]
  def name("40101012"), do: :threat_category

  # (4010,1013) ThreatCategoryDescription dvLT
  # VR values: ["LT"]
  def name("40101013"), do: :threat_category_description

  # (4010,1014) ATDAbilityAssessment dvCS
  # VR values: ["CS"]
  def name("40101014"), do: :atd_ability_assessment

  # (4010,1015) ATDAssessmentFlag dvCS
  # VR values: ["CS"]
  def name("40101015"), do: :atd_assessment_flag

  # (4010,1016) ATDAssessmentProbability dvFL
  # VR values: ["FL"]
  def name("40101016"), do: :atd_assessment_probability

  # (4010,1017) Mass dvFL
  # VR values: ["FL"]
  def name("40101017"), do: :mass

  # (4010,1018) Density dvFL
  # VR values: ["FL"]
  def name("40101018"), do: :density

  # (4010,1019) ZEffective dvFL
  # VR values: ["FL"]
  def name("40101019"), do: :z_effective

  # (4010,101A) BoardingPassID dvSH
  # VR values: ["SH"]
  def name("4010101A"), do: :boarding_pass_id

  # (4010,101B) CenterofMass dvFL
  # VR values: ["FL"]
  def name("4010101B"), do: :centerof_mass

  # (4010,101C) CenterofPTO dvFL
  # VR values: ["FL"]
  def name("4010101C"), do: :centerof_pto

  # (4010,101D) BoundingPolygon dvFL
  # VR values: ["FL"]
  def name("4010101D"), do: :bounding_polygon

  # (4010,101E) RouteSegmentStartLocationID dvSH
  # VR values: ["SH"]
  def name("4010101E"), do: :route_segment_start_location_id

  # (4010,101F) RouteSegmentEndLocationID dvSH
  # VR values: ["SH"]
  def name("4010101F"), do: :route_segment_end_location_id

  # (4010,1020) RouteSegmentLocationIDType dvCS
  # VR values: ["CS"]
  def name("40101020"), do: :route_segment_location_id_type

  # (4010,1021) AbortReason dvCS
  # VR values: ["CS"]
  def name("40101021"), do: :abort_reason

  # (4010,1023) VolumeofPTO dvFL
  # VR values: ["FL"]
  def name("40101023"), do: :volumeof_pto

  # (4010,1024) AbortFlag dvCS
  # VR values: ["CS"]
  def name("40101024"), do: :abort_flag

  # (4010,1025) RouteSegmentStartTime dvDT
  # VR values: ["DT"]
  def name("40101025"), do: :route_segment_start_time

  # (4010,1026) RouteSegmentEndTime dvDT
  # VR values: ["DT"]
  def name("40101026"), do: :route_segment_end_time

  # (4010,1027) TDRType dvCS
  # VR values: ["CS"]
  def name("40101027"), do: :tdr_type

  # (4010,1028) InternationalRouteSegment dvCS
  # VR values: ["CS"]
  def name("40101028"), do: :international_route_segment

  # (4010,1029) ThreatDetectionAlgorithmandVersion dvLO
  # VR values: ["LO"]
  def name("40101029"), do: :threat_detection_algorithmand_version

  # (4010,102A) AssignedLocation dvSH
  # VR values: ["SH"]
  def name("4010102A"), do: :assigned_location

  # (4010,102B) AlarmDecisionTime dvDT
  # VR values: ["DT"]
  def name("4010102B"), do: :alarm_decision_time

  # (4010,1031) AlarmDecision dvCS
  # VR values: ["CS"]
  def name("40101031"), do: :alarm_decision

  # (4010,1033) NumberofTotalObjects dvUS
  # VR values: ["US"]
  def name("40101033"), do: :numberof_total_objects

  # (4010,1034) NumberofAlarmObjects dvUS
  # VR values: ["US"]
  def name("40101034"), do: :numberof_alarm_objects

  # (4010,1037) PTORepresentationSequence dvSQ
  # VR values: ["SQ"]
  def name("40101037"), do: :pto_representation_sequence

  # (4010,1038) ATDAssessmentSequence dvSQ
  # VR values: ["SQ"]
  def name("40101038"), do: :atd_assessment_sequence

  # (4010,1039) TIPType dvCS
  # VR values: ["CS"]
  def name("40101039"), do: :tip_type

  # (4010,103A) DICOSVersion dvCS
  # VR values: ["CS"]
  def name("4010103A"), do: :dicos_version

  # (4010,1041) OOIOwnerCreationTime dvDT
  # VR values: ["DT"]
  def name("40101041"), do: :ooi_owner_creation_time

  # (4010,1042) OOIType dvCS
  # VR values: ["CS"]
  def name("40101042"), do: :ooi_type

  # (4010,1043) OOISize dvFL
  # VR values: ["FL"]
  def name("40101043"), do: :ooi_size

  # (4010,1044) AcquisitionStatus dvCS
  # VR values: ["CS"]
  def name("40101044"), do: :acquisition_status

  # (4010,1045) BasisMaterialsCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("40101045"), do: :basis_materials_code_sequence

  # (4010,1046) PhantomType dvCS
  # VR values: ["CS"]
  def name("40101046"), do: :phantom_type

  # (4010,1047) OOIOwnerSequence dvSQ
  # VR values: ["SQ"]
  def name("40101047"), do: :ooi_owner_sequence

  # (4010,1048) ScanType dvCS
  # VR values: ["CS"]
  def name("40101048"), do: :scan_type

  # (4010,1051) ItineraryID dvLO
  # VR values: ["LO"]
  def name("40101051"), do: :itinerary_id

  # (4010,1052) ItineraryIDType dvSH
  # VR values: ["SH"]
  def name("40101052"), do: :itinerary_id_type

  # (4010,1053) ItineraryIDAssigningAuthority dvLO
  # VR values: ["LO"]
  def name("40101053"), do: :itinerary_id_assigning_authority

  # (4010,1054) RouteID dvSH
  # VR values: ["SH"]
  def name("40101054"), do: :route_id

  # (4010,1055) RouteIDAssigningAuthority dvSH
  # VR values: ["SH"]
  def name("40101055"), do: :route_id_assigning_authority

  # (4010,1056) InboundArrivalType dvCS
  # VR values: ["CS"]
  def name("40101056"), do: :inbound_arrival_type

  # (4010,1058) CarrierID dvSH
  # VR values: ["SH"]
  def name("40101058"), do: :carrier_id

  # (4010,1059) CarrierIDAssigningAuthority dvCS
  # VR values: ["CS"]
  def name("40101059"), do: :carrier_id_assigning_authority

  # (4010,1060) SourceOrientation dvFL
  # VR values: ["FL"]
  def name("40101060"), do: :source_orientation

  # (4010,1061) SourcePosition dvFL
  # VR values: ["FL"]
  def name("40101061"), do: :source_position

  # (4010,1062) BeltHeight dvFL
  # VR values: ["FL"]
  def name("40101062"), do: :belt_height

  # (4010,1064) AlgorithmRoutingCodeSequence dvSQ
  # VR values: ["SQ"]
  def name("40101064"), do: :algorithm_routing_code_sequence

  # (4010,1067) TransportClassification dvCS
  # VR values: ["CS"]
  def name("40101067"), do: :transport_classification

  # (4010,1068) OOITypeDescriptor dvLT
  # VR values: ["LT"]
  def name("40101068"), do: :ooi_type_descriptor

  # (4010,1069) TotalProcessingTime dvFL
  # VR values: ["FL"]
  def name("40101069"), do: :total_processing_time

  # (4010,106C) DetectorCalibrationData dvOB
  # VR values: ["OB"]
  def name("4010106C"), do: :detector_calibration_data

  # (4010,106D) AdditionalScreeningPerformed dvCS
  # VR values: ["CS"]
  def name("4010106D"), do: :additional_screening_performed

  # (4010,106E) AdditionalInspectionSelectionCriteria dvCS
  # VR values: ["CS"]
  def name("4010106E"), do: :additional_inspection_selection_criteria

  # (4010,106F) AdditionalInspectionMethodSequence dvSQ
  # VR values: ["SQ"]
  def name("4010106F"), do: :additional_inspection_method_sequence

  # (4010,1070) AITDeviceType dvCS
  # VR values: ["CS"]
  def name("40101070"), do: :ait_device_type

  # (4010,1071) QRMeasurementsSequence dvSQ
  # VR values: ["SQ"]
  def name("40101071"), do: :qr_measurements_sequence

  # (4010,1072) TargetMaterialSequence dvSQ
  # VR values: ["SQ"]
  def name("40101072"), do: :target_material_sequence

  # (4010,1073) SNRThreshold dvFD
  # VR values: ["FD"]
  def name("40101073"), do: :snr_threshold

  # (4010,1075) ImageScaleRepresentation dvDS
  # VR values: ["DS"]
  def name("40101075"), do: :image_scale_representation

  # (4010,1076) ReferencedPTOSequence dvSQ
  # VR values: ["SQ"]
  def name("40101076"), do: :referenced_pto_sequence

  # (4010,1077) ReferencedTDRInstanceSequence dvSQ
  # VR values: ["SQ"]
  def name("40101077"), do: :referenced_tdr_instance_sequence

  # (4010,1078) PTOLocationDescription dvST
  # VR values: ["ST"]
  def name("40101078"), do: :pto_location_description

  # (4010,1079) AnomalyLocatorIndicatorSequence dvSQ
  # VR values: ["SQ"]
  def name("40101079"), do: :anomaly_locator_indicator_sequence

  # (4010,107A) AnomalyLocatorIndicator dvFL
  # VR values: ["FL"]
  def name("4010107A"), do: :anomaly_locator_indicator

  # (4010,107B) PTORegionSequence dvSQ
  # VR values: ["SQ"]
  def name("4010107B"), do: :pto_region_sequence

  # (4010,107C) InspectionSelectionCriteria dvCS
  # VR values: ["CS"]
  def name("4010107C"), do: :inspection_selection_criteria

  # (4010,107D) SecondaryInspectionMethodSequence dvSQ
  # VR values: ["SQ"]
  def name("4010107D"), do: :secondary_inspection_method_sequence

  # (4010,107E) PRCStoRCSOrientation dvDS
  # VR values: ["DS"]
  def name("4010107E"), do: :prc_sto_rcs_orientation

  # (4FFE,0001) MACParametersSequence dvSQ
  # VR values: ["SQ"]
  def name("4FFE0001"), do: :mac_parameters_sequence

  # (5000,0000) Undocumented dvUL
  # VR values: ["UL"]
  def name("50000000"), do: :undocumented

  # (5000,0005) CurveDimensions dvUS
  # VR values: ["US"]
  def name("50000005"), do: :curve_dimensions

  # (5000,0010) NumberofPoints dvUS
  # VR values: ["US"]
  def name("50000010"), do: :numberof_points

  # (5000,0020) TypeofData dvCS
  # VR values: ["CS"]
  def name("50000020"), do: :typeof_data

  # (5000,0022) CurveDescription dvLO
  # VR values: ["LO"]
  def name("50000022"), do: :curve_description

  # (5000,0030) AxisUnits dvSH
  # VR values: ["SH"]
  def name("50000030"), do: :axis_units

  # (5000,0040) AxisLabels dvSH
  # VR values: ["SH"]
  def name("50000040"), do: :axis_labels

  # (5000,0103) DataValueRepresentation dvUS
  # VR values: ["US"]
  def name("50000103"), do: :data_value_representation

  # (5000,0104) MinimumCoordinateValue dvUS
  # VR values: ["US"]
  def name("50000104"), do: :minimum_coordinate_value

  # (5000,0105) MaximumCoordinateValue dvUS
  # VR values: ["US"]
  def name("50000105"), do: :maximum_coordinate_value

  # (5000,0106) CurveRange dvSH
  # VR values: ["SH"]
  def name("50000106"), do: :curve_range

  # (5000,0110) CurveDataDescriptor dvUS
  # VR values: ["US"]
  def name("50000110"), do: :curve_data_descriptor

  # (5000,0112) CoordinateStartValue dvUS
  # VR values: ["US"]
  def name("50000112"), do: :coordinate_start_value

  # (5000,0114) CoordinateStepValue dvUS
  # VR values: ["US"]
  def name("50000114"), do: :coordinate_step_value

  # (5000,1001) CurveActivationLayer dvCS
  # VR values: ["CS"]
  def name("50001001"), do: :curve_activation_layer

  # (5000,2000) AudioType dvUS
  # VR values: ["US"]
  def name("50002000"), do: :audio_type

  # (5000,2002) AudioSampleFormat dvUS
  # VR values: ["US"]
  def name("50002002"), do: :audio_sample_format

  # (5000,2004) NumberofChannels dvUS
  # VR values: ["US"]
  def name("50002004"), do: :numberof_channels

  # (5000,2006) NumberofSamples dvUL
  # VR values: ["UL"]
  def name("50002006"), do: :numberof_samples

  # (5000,2008) SampleRate dvUL
  # VR values: ["UL"]
  def name("50002008"), do: :sample_rate

  # (5000,200A) TotalTime dvUL
  # VR values: ["UL"]
  def name("5000200A"), do: :total_time

  # (5000,200C) AudioSampleData dvOW
  # VR values: ["OW"]
  def name("5000200C"), do: :audio_sample_data

  # (5000,200E) AudioComments dvLT
  # VR values: ["LT"]
  def name("5000200E"), do: :audio_comments

  # (5000,2500) CurveLabel dvLO
  # VR values: ["LO"]
  def name("50002500"), do: :curve_label

  # (5000,2600) CurveReferencedOverlaySequence dvSQ
  # VR values: ["SQ"]
  def name("50002600"), do: :curve_referenced_overlay_sequence

  # (5000,2610) CurveReferencedOverlayGroup dvUS
  # VR values: ["US"]
  def name("50002610"), do: :curve_referenced_overlay_group

  # (5000,3000) CurveData dvOW
  # VR values: ["OW"]
  def name("50003000"), do: :curve_data

  # (5200,9229) SharedFunctionalGroupsSequence dvSQ
  # VR values: ["SQ"]
  def name("52009229"), do: :shared_functional_groups_sequence

  # (5200,9230) Per_frameFunctionalGroupsSequence dvSQ
  # VR values: ["SQ"]
  def name("52009230"), do: :per_frame_functional_groups_sequence

  # (5400,0000) WaveformGroupLength dvUL
  # VR values: ["UL"]
  def name("54000000"), do: :waveform_group_length

  # (5400,0100) WaveformSequence dvSQ
  # VR values: ["SQ"]
  def name("54000100"), do: :waveform_sequence

  # (5400,0110) ChannelMinimumValue dvOW
  # VR values: ["OW"]
  def name("54000110"), do: :channel_minimum_value

  # (5400,0112) ChannelMaximumValue dvOW
  # VR values: ["OW"]
  def name("54000112"), do: :channel_maximum_value

  # (5400,1004) WaveformBitsAllocated dvUS
  # VR values: ["US"]
  def name("54001004"), do: :waveform_bits_allocated

  # (5400,1006) WaveformSampleInterpretation dvCS
  # VR values: ["CS"]
  def name("54001006"), do: :waveform_sample_interpretation

  # (5400,100A) WaveformPaddingValue dvOW
  # VR values: ["OW"]
  def name("5400100A"), do: :waveform_padding_value

  # (5400,1010) WaveformData dvOW
  # VR values: ["OW"]
  def name("54001010"), do: :waveform_data

  # (5600,0010) FirstOrderPhaseCorrectionAngle dvOF
  # VR values: ["OF"]
  def name("56000010"), do: :first_order_phase_correction_angle

  # (5600,0020) SpectroscopyData dvOF
  # VR values: ["OF"]
  def name("56000020"), do: :spectroscopy_data

  # (6000,0000) OverlayGroupLength dvUL
  # VR values: ["UL"]
  def name("60000000"), do: :overlay_group_length

  # (6000,0001) Undocumented dvUS
  # VR values: ["US"]
  def name("60000001"), do: :undocumented

  # (6000,0002) Undocumented dvUS
  # VR values: ["US"]
  def name("60000002"), do: :undocumented

  # (6000,0010) OverlayRows dvUS
  # VR values: ["US"]
  def name("60000010"), do: :overlay_rows

  # (6000,0011) OverlayColumns dvUS
  # VR values: ["US"]
  def name("60000011"), do: :overlay_columns

  # (6000,0012) OverlayPlanes dvUS
  # VR values: ["US"]
  def name("60000012"), do: :overlay_planes

  # (6000,0015) NumberofFramesinOverlay dvIS
  # VR values: ["IS"]
  def name("60000015"), do: :numberof_framesin_overlay

  # (6000,0022) OverlayDescription dvLO
  # VR values: ["LO"]
  def name("60000022"), do: :overlay_description

  # (6000,0040) OverlayType dvCS
  # VR values: ["CS"]
  def name("60000040"), do: :overlay_type

  # (6000,0045) OverlaySubtype dvLO
  # VR values: ["LO"]
  def name("60000045"), do: :overlay_subtype

  # (6000,0050) OverlayOrigin dvSS
  # VR values: ["SS"]
  def name("60000050"), do: :overlay_origin

  # (6000,0051) ImageFrameOrigin dvUS
  # VR values: ["US"]
  def name("60000051"), do: :image_frame_origin

  # (6000,0052) OverlayPlaneOrigin dvUS
  # VR values: ["US"]
  def name("60000052"), do: :overlay_plane_origin

  # (6000,0060) OverlayCompressionCode dvCS
  # VR values: ["CS"]
  def name("60000060"), do: :overlay_compression_code

  # (6000,0061) OverlayCompressionOriginator dvSH
  # VR values: ["SH"]
  def name("60000061"), do: :overlay_compression_originator

  # (6000,0062) OverlayCompressionLabel dvSH
  # VR values: ["SH"]
  def name("60000062"), do: :overlay_compression_label

  # (6000,0063) OverlayCompressionDescription dvCS
  # VR values: ["CS"]
  def name("60000063"), do: :overlay_compression_description

  # (6000,0066) OverlayCompressionStepPointers dvAT
  # VR values: ["AT"]
  def name("60000066"), do: :overlay_compression_step_pointers

  # (6000,0068) OverlayRepeatInterval dvUS
  # VR values: ["US"]
  def name("60000068"), do: :overlay_repeat_interval

  # (6000,0069) OverlayBitsGrouped dvUS
  # VR values: ["US"]
  def name("60000069"), do: :overlay_bits_grouped

  # (6000,0100) OverlayBitsAllocated dvUS
  # VR values: ["US"]
  def name("60000100"), do: :overlay_bits_allocated

  # (6000,0102) OverlayBitPosition dvUS
  # VR values: ["US"]
  def name("60000102"), do: :overlay_bit_position

  # (6000,0110) OverlayFormat dvCS
  # VR values: ["CS"]
  def name("60000110"), do: :overlay_format

  # (6000,0200) OverlayLocation dvUS
  # VR values: ["US"]
  def name("60000200"), do: :overlay_location

  # (6000,0800) OverlayCodeLabel dvCS
  # VR values: ["CS"]
  def name("60000800"), do: :overlay_code_label

  # (6000,0802) OverlayNumberofTables dvUS
  # VR values: ["US"]
  def name("60000802"), do: :overlay_numberof_tables

  # (6000,0803) OverlayCodeTableLocation dvAT
  # VR values: ["AT"]
  def name("60000803"), do: :overlay_code_table_location

  # (6000,0804) OverlayBitsforCodeWord dvUS
  # VR values: ["US"]
  def name("60000804"), do: :overlay_bitsfor_code_word

  # (6000,1001) OverlayActivationLayer dvCS
  # VR values: ["CS"]
  def name("60001001"), do: :overlay_activation_layer

  # (6000,1100) OverlayDescriptor_Gray dvUS
  # VR values: ["US"]
  def name("60001100"), do: :overlay_descriptor_gray

  # (6000,1101) OverlayDescriptor_Red dvUS
  # VR values: ["US"]
  def name("60001101"), do: :overlay_descriptor_red

  # (6000,1102) OverlayDescriptor_Green dvUS
  # VR values: ["US"]
  def name("60001102"), do: :overlay_descriptor_green

  # (6000,1103) OverlayDescriptor_Blue dvUS
  # VR values: ["US"]
  def name("60001103"), do: :overlay_descriptor_blue

  # (6000,1200) Overlays_Gray dvUS
  # VR values: ["US"]
  def name("60001200"), do: :overlays_gray

  # (6000,1201) Overlays_Red dvUS
  # VR values: ["US"]
  def name("60001201"), do: :overlays_red

  # (6000,1202) Overlays_Green dvUS
  # VR values: ["US"]
  def name("60001202"), do: :overlays_green

  # (6000,1203) Overlays_Blue dvUS
  # VR values: ["US"]
  def name("60001203"), do: :overlays_blue

  # (6000,1301) ROIArea dvIS
  # VR values: ["IS"]
  def name("60001301"), do: :roi_area

  # (6000,1302) ROIMean dvDS
  # VR values: ["DS"]
  def name("60001302"), do: :roi_mean

  # (6000,1303) ROIStandardDeviation dvDS
  # VR values: ["DS"]
  def name("60001303"), do: :roi_standard_deviation

  # (6000,1500) OverlayLabel dvLO
  # VR values: ["LO"]
  def name("60001500"), do: :overlay_label

  # (6000,3000) OverlayData dvOW
  # VR values: ["OW"]
  def name("60003000"), do: :overlay_data

  # (6000,4000) OverlayComments dvLT
  # VR values: ["LT"]
  def name("60004000"), do: :overlay_comments

  # (6001,0000) Undocumented dvUN
  # VR values: ["UN"]
  def name("60010000"), do: :undocumented

  # (6001,0010) Undocumented dvLO
  # VR values: ["LO"]
  def name("60010010"), do: :undocumented

  # (6001,1010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("60011010"), do: :undocumented

  # (6001,1030) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("60011030"), do: :undocumented

  # (6021,0000) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("60210000"), do: :undocumented

  # (6021,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("60210010"), do: :undocumented

  # (7000,0004) Undocumented dvST
  # VR values: ["ST"]
  def name("70000004"), do: :undocumented

  # (7000,0005) Undocumented dvIS
  # VR values: ["IS"]
  def name("70000005"), do: :undocumented

  # (7000,0007) Undocumented dvIS
  # VR values: ["IS"]
  def name("70000007"), do: :undocumented

  # (7001,0010) Undocumented dvLT
  # VR values: ["LT"]
  def name("70010010"), do: :undocumented

  # (7003,0010) Undocumented dvLT
  # VR values: ["LT"]
  def name("70030010"), do: :undocumented

  # (7005,0010) Undocumented dvLT
  # VR values: ["LT"]
  def name("70050010"), do: :undocumented

  # (7F00,0000) Undocumented dvUL
  # VR values: ["UL"]
  def name("7F000000"), do: :undocumented

  # (7F00,0010) VariablePixelData dvOW
  # VR values: ["OW"]
  def name("7F000010"), do: :variable_pixel_data

  # (7F00,0011) VariableNextDataGroup dvOW
  # VR values: ["OW"]
  def name("7F000011"), do: :variable_next_data_group

  # (7F00,0020) VariableCoefficientsSDVN dvOW
  # VR values: ["OW"]
  def name("7F000020"), do: :variable_coefficients_sdvn

  # (7F00,0030) VariableCoefficientsSDHN dvOW
  # VR values: ["OW"]
  def name("7F000030"), do: :variable_coefficients_sdhn

  # (7F00,0040) VariableCoefficientsSDDN dvOW
  # VR values: ["OW"]
  def name("7F000040"), do: :variable_coefficients_sddn

  # (7FE0,0000) PixelDataGroupLength dvUL
  # VR values: ["UL"]
  def name("7FE00000"), do: :pixel_data_group_length

  # (7FE0,0010) PixelData dvOW
  # VR values: ["OW"]
  def name("7FE00010"), do: :pixel_data

  # (7FE0,0020) CoefficientsSDVN dvOW
  # VR values: ["OW"]
  def name("7FE00020"), do: :coefficients_sdvn

  # (7FE0,0030) CoefficientsSDHN dvOW
  # VR values: ["OW"]
  def name("7FE00030"), do: :coefficients_sdhn

  # (7FE0,0040) CoefficientsSDDN dvOW
  # VR values: ["OW"]
  def name("7FE00040"), do: :coefficients_sddn

  # (7FE1,0000) Undocumented dvOB
  # VR values: ["OB"]
  def name("7FE10000"), do: :undocumented

  # (7FE1,0010) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("7FE10010"), do: :undocumented

  # (7FE3,0000) Undocumented dvLT
  # VR values: ["LT"]
  def name("7FE30000"), do: :undocumented

  # (7FE3,0010) Undocumented dvOB
  # VR values: ["OB"]
  def name("7FE30010"), do: :undocumented

  # (7FE3,0020) Undocumented dvOB
  # VR values: ["OB"]
  def name("7FE30020"), do: :undocumented

  # (7FF1,0001) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF10001"), do: :undocumented

  # (7FF1,0002) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF10002"), do: :undocumented

  # (7FF1,0003) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("7FF10003"), do: :undocumented

  # (7FF1,0004) Undocumented dvIS
  # VR values: ["IS"]
  def name("7FF10004"), do: :undocumented

  # (7FF1,0005) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF10005"), do: :undocumented

  # (7FF1,0007) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF10007"), do: :undocumented

  # (7FF1,0008) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF10008"), do: :undocumented

  # (7FF1,0009) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF10009"), do: :undocumented

  # (7FF1,000A) Undocumented dvLT
  # VR values: ["LT"]
  def name("7FF1000A"), do: :undocumented

  # (7FF1,000B) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF1000B"), do: :undocumented

  # (7FF1,000C) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF1000C"), do: :undocumented

  # (7FF1,000D) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF1000D"), do: :undocumented

  # (7FF1,0010) Undocumented dvUS
  # VR values: ["US"]
  def name("7FF10010"), do: :undocumented

  # (FFFA,FFFA) DigitalSignaturesSequence dvSQ
  # VR values: ["SQ"]
  def name("FFFAFFFA"), do: :digital_signatures_sequence

  # (FFFC,FFFC) DataSetTrailingPadding dvOB
  # VR values: ["OB"]
  def name("FFFCFFFC"), do: :data_set_trailing_padding

  # (FFFE,E000) Item dvUnknown
  # VR values: []
  def name("FFFEE000"), do: :item

  # (FFFE,E00D) ItemDelimitationItem dvUnknown
  # VR values: []
  def name("FFFEE00D"), do: :item_delimitation_item

  # (FFFE,E0DD) SequenceDelimitationItem dvUnknown
  # VR values: []
  def name("FFFEE0DD"), do: :sequence_delimitation_item

  # (FFFF,FFFF) Undocumented dvUSorSS
  # VR values: ["US", "SS"]
  def name("FFFFFFFF"), do: :undocumented
end
