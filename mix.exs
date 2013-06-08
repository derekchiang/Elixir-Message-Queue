defmodule ElixirMq.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixir_mq,
      version: "0.0.1",
      dynamos: [ElixirMq.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/elixir_mq/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      registered: [:queue],
      mod: { ElixirMq, [] } ]
  end

  defp deps do
    [ { :ranch, %r(.*), github: "extend/ranch" },
      { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "elixir-lang/dynamo" } ]
  end
end
