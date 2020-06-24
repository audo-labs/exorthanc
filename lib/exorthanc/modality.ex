defmodule Exorthanc.Modality do
  @moduledoc """
  Provides a set of functions to handle dicom modalities on Orthanc.
  """
  import Exorthanc.Helpers


  @doc """
  Returns a list of modalities configured on an Orthanc instance.

  ## Examples
      iex> Exorthanc.Retrieve.modalities("localhost:8042")
      {:ok, ["sample", "test"]}
  """
  def modalities(url, hackney_opts \\ [], expand \\ false) do
    modalities_path =
      case expand do
        true ->
          "modalities?expand"
        false ->
          "modalities"
      end
    build_url(url, modalities_path)
    |> request(:get, "", hackney_opts)
  end

  @doc """
  Inserts or updates a dicom modality on Orthanc

  ## Examples
    iex> modality_json = %{"AET" => "ORTHANC2", "Host" => "192.167.12.11", "Port" => 4343}
    %{"AET" => "ORTHANC2", "Host" => "192.167.12.11", "Port" => 4343}
    iex> Exorthanc.Retrieve.upsert_modality("localhost:8042", "TEST", modality_json)
    {:ok, _} || {:error, _}
  """
  def upsert_modality(url, modality_name, modality_json) do
    build_url(url, Path.join(["modalities", "#{modality_name}"]))
    |> request(:put, modality_json)
  end

  @doc """
  Deletes a dicom modality from Orthanc

  ## Examples
    iex> Exorthanc.Retrieve.delete_modality("localhost:8042", "TEST")
    {:ok, {"localhost:8042", 200}}
  """
  def delete_modality(url, modality_name) do
    build_url(url, Path.join(["modalities", "#{modality_name}"]))
    |> request(:delete)
  end

  @doc """
  Sends a C-Echo to a dicom modality configured in Orthanc

  ## Examples
    iex> Exorthanc.Retrieve.modality_c_echo("localhost:8042", "TEST")
    {"localhost:8042", 200}
  """
  def modality_c_echo(url, modality_name) do
    build_url(url, Path.join(["modalities", "#{modality_name}", "echo"]))
    |> request(:post, "{}")
  end

  @doc """
  Sends a dicom to a modality
  """
  def send_dicom_to_modality(url, modality, orthanc_uuid, hackney_opts) do
    path = "modalities" |> Path.join(modality) |> Path.join("store")
    build_url(url, path)
    |> request(:post, orthanc_uuid, Keyword.put(hackney_opts, :recv_timeout, :infinity))
    |> case do
      {:ok, _} -> {:ok, true}
      err -> err
    end
  end

end
