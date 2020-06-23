defmodule BitElixir.Exchange do
    use Task

    def start_link(arg) do
        Task.start_link(__MODULE__, :run, [arg])
    end

    def run(arg) do
        :timer.sleep(5000)
        run(arg)
    end
end