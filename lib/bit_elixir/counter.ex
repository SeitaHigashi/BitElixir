defmodule BitElixir.Counter do
  use Task

  def start_link(arg) do
    Task.start_link(__MODULE__, :run, [arg])
  end

  def run(arg) do
    :timer.sleep(2000)
    run(arg)
  end
end