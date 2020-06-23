defmodule BitElixir.Exchange do
    use Task

    def start_link(arg) do
        Task.start_link(__MODULE__, :run, [arg])
    end

    def run(_arg) do
        IO.puts "Exchange"
    end
end