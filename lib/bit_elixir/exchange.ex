defmodule BitElixir.Exchange do
  use GenServer
  use Task

  alias BitElixir.Account

  def start_link(init_args) do
    # you may want to register your server with `name: __MODULE__`
    # as a third argument to `start_link`
    GenServer.start_link(__MODULE__, [init_args])
    Task.start_link(__MODULE__, :run, [init_args])
  end

  def init(_args) do
    {:ok, %Account{}}
  end

  def handle_cast({:order, new_order}, %Account{Order: old_order} = account) do
    {:noreply, account}
  end

  def run(args \\ nil) do
    :timer.sleep(3000)
    run(args)
  end
end
