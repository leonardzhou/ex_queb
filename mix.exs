defmodule ExQueb.Mixfile do
  use Mix.Project

  @version "1.0.2"

  def project do
    [app: :ex_queb,
     version: @version,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     docs: [extras: ["README.md"], main: "ExQueb"],
     package: package(),
     name: "ExQueb",
     deps: deps(),
     description: """
     Ecto Filter Query Builder
     """
   ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ecto, "~> 3.0"},
      {:ex_doc, "~> 0.18.0", only: :dev},
      {:earmark, "~> 1.1", only: :dev},
    ]
  end

  defp package do
    [ maintainers: ["Leonard Zhou"],
      licenses: ["MIT"],
      links: %{ "Github" => "https://github.com/leonardzhou/ex_queb" },
      files: ~w(lib README.md mix.exs LICENSE)]
  end
end
