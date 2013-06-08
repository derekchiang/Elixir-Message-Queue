defmodule Queue.Server do
  use GenServer.Behaviour

  def start_link(queue) do
    :gen_server.start_link({:local, :queue}, __MODULE__, queue, [])
  end

  def init(queue) do
    { :ok, queue }
  end

  def handle_call(:pop, _from, [h|queue]) do
    { :reply, h, queue }
  end

  def handle_call(:pop, _from, []) do
    { :reply, :no_element_in_queue, [] }
  end

  def handle_cast({ :push, data }, queue) do
    { :noreply, :lists.append(queue, [data]) }
  end
end