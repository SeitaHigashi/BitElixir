defmodule BitElixir.Exchange do
  use Task

  alias BitElixir.Exchange.{Account, Order}

  def start_link(init_args) do
    # you may want to register your server with `name: __MODULE__`
    # as a third argument to `start_link`
    Task.start_link(__MODULE__, :run, [init_args])
  end

  def run(args \\ nil) do
    :timer.sleep(20000)
    update()
    run(args)
  end

  def update do
    transaction()
  end

  defp transaction do
    order = Account.get().order
    value = BitElixir.Exchange.Value.get()

  end

  defp _transaction(order, value) do
  end
end
