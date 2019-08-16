defmodule Heroic.MixProject do
  use Mix.Project

  def project do
    [
      app: :heroic,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :httpoison, :poison]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.5"},
      {:poison, "~> 4.0"},
      {:typed_struct, "~> 0.1"},
    ]
  end
end
