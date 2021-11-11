defmodule GraphDatabase.MixProject do
  use Mix.Project

  def project do
    [
      app: :graph_database,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,

      escript: [main_module: GraphDatabase],

      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bolt_sips, "~> 2.0"}
    ]
  end
end
