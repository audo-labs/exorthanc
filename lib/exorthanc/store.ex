defmodule Exorthanc.Store do
  import Exorthanc.Helpers
  alias Exorthanc.Retrieve

  @moduledoc """
  Provides a set of functions to store data on Orthanc.
  """
  # STORE STUDY ON ORTHANC USING DICOMWEB
  def study(url, filepath, hackney_opts) do
    build_url(url, "instances")
    |> request(:post, {:file, filepath}, [], hackney_opts)
  end

  # THIS USES DICOM_WEB
  def studies(url, resp, hackney_opts) do
    ct = List.keyfind(resp.headers, "Content-Type", 0)
    build_url(url, "studies")
    |> request(:post, resp.body, build_hackney_opts(hackney_opts), [ct])
  end

  def modality(url, modality, uuid) do
    path = "modalities" |> Path.join(modality) |> Path.join("store")
    build_url(url, path)
    |> request(:post, uuid, [recv_timeout: :infinity])
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
