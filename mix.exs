defmodule Duration.MixProject do
  use Mix.Project

  @version "0.1.1"
  def project do
    [
      app: :duration,
      version: @version,
      elixir: "~> 1.9",
      docs: [extras: ["README.md"], main: "readme", source_ref: "v#{@version}"],
      source_url: "https://github.com/lorenzosinisi/duration",
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:timex, "~> 3.5"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:earmark, "~> 1.2", only: :dev}
    ]
  end

  defp description do
    """
    A wrapper around :timer.tc in Elixir to know how long it takes to execute a function
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Lorenzo Sinisi"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/lorenzosinisi/duration"}
    ]
  end
end
