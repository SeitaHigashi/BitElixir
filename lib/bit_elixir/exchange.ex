defmodule BitElixir.Exchange do
    use GenServer

    defmodule Account do
        defstruct BTC: 1, JPY: 0, Order: []
    end

    def start_link(init_args) do
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [init_args], name: __MODULE__)
    end

    def init(_args) do
        {:ok, %Account{}}
    end

    def handle_call(:get, _from, state) do
        {:reply, state, state}
    end

    def handle_cast({:order, new_order}, %Account{Order: order_list} = state) do
        {:noreply, %Account{state | Order: [new_order | order_list]}}
    end

    def get do
        GenServer.call(__MODULE__, :get)
    end

    def order(new_order) do
        GenServer.cast(__MODULE__, {:order, new_order})
    end

end
