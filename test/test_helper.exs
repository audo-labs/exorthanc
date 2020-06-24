Path.wildcard("#{__DIR__}/support/**/*.exs") |> Enum.each(&Code.require_file(&1, __DIR__))

ExUnit.start()
Application.ensure_all_started(:bypass)
