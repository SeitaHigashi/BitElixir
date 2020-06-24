defmodule BitElixir.Exchange do
  use GenServer
  use Task

  alias BitElixir.Exchange.Account

  def start_link(init_args) do
    # you may want to register your server with `name: __MODULE__`
    # as a third argument to `start_link`
    GenServer.start_link(__MODULE__, [init_args], name: __MODULE__)
    Task.start_link(__MODULE__, :run, [init_args])
  end

  def init(_args) do
    {:ok, %Account{}}
  end

  def handle_call(:get_account, _from, state), do: {:reply, state, state}

  def handle_cast({:order, new_order}, %Account{Order: old_order} = account) do
    {:noreply, account}
  end

  def run(args \\ nil) do
    :timer.sleep(3000)
    run(args)
  end

  def get_account, do: GenServer.call(__MODULE__, :get_account)
end
