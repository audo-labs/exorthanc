defmodule GDCM do
  
  def exec(cmd, cmd_args) do
    try do
      case System.cmd(cmd, cmd_args, stderr_to_stdout: true) do
        {out, 0} -> {:ok, out}
        {error, _} -> {:error, error}
      end
    rescue
      error -> {:error, error}
    end
  end

end
