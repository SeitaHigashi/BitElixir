defmodule BitElixir.Exchange do
    use GenServer

    defmodule Account do
        defstruct BTC: 0, JPY: BitElixir.Exchange.Value.get, Order: nil
    end

    def start_link(init_args) do
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [init_args])
    end

    def init(_args) do
        {:ok, %Account{}}
    end
end
