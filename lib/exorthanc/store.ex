defmodule Exorthanc.Store do
  import Exorthanc.Helpers
  alias Exorthanc.Retrieve

  @moduledoc """
  Provides a set of functions to store data on Orthanc.
  """

  # THIS USES DICOM_WEB
  def studies(url, resp, hackney_opts) do
    ct = List.keyfind(resp.headers, "Content-Type", 0)
    HTTPoison.post!("#{url}/studies", resp.body, [ct], build_hackney_opts(hackney_opts))
  end

  def modality(url, modality, uuid) do
    HTTPoison.post("#{url}/modalities/#{modality}/store", uuid, [], [recv_timeout: :infinity])
    |> decode_response
  end

  def send_dicom_to_modality(url, modality, study_instance_uid) do
    case Retrieve.tools_lookup(url, study_instance_uid) do
      {:ok, [%{"ID" => uuid}]} ->
        case modality(url, modality, uuid) do
          {:ok, _} -> {:ok, true}
          err -> err
        end
      err -> err
    end
  end

end
