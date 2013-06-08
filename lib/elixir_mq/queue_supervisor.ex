defmodule Queue.Supervisor do
  use Supervisor.Behaviour

  def start_link(queue) do
    :supervisor.start_link(__MODULE__, queue)
  end

  def init(queue) do
    children = [ worker(Queue.Server, [queue]) ]
    supervise children, strategy: :one_for_one
  end
end