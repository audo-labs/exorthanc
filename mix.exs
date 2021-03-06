defmodule Exorthanc.MixProject do
  use Mix.Project

  def project do
    [
      app: :exorthanc,
      version: "0.1.14",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Exorthanc, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  # {:dep_from_hexpm, "~> 0.3.0"},
  # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:httpoison, "~> 0.13"},
      {:bypass, "~> 1.0", only: :test}
    ]
  end
end
