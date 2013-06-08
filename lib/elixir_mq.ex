defmodule ElixirMq do
  use Application.Behaviour

  @doc """
  The application callback used to start this
  application and its Dynamos.
  """
  def start(_type, queue) do
    Queue.Supervisor.start_link(queue)
    ElixirMq.Dynamo.start_link([max_restarts: 5, max_seconds: 5])
  end
end
