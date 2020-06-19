defmodule BitElixir.CLI do
    def main(_args \\ []) do
        IO.puts BitElixir.Exchange.Value.get
    end
end