defmodule BitElixir.Exchange do
    use GenServer

    def start_link(init_args) do
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [init_args])
    end

    def init(_args) do
        IO.puts "init"
        {:ok, :initial_state}
    end
end