Dynamo.under_test(ElixirMq.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule ElixirMq.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
