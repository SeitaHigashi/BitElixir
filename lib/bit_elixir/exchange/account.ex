defmodule BitElixir.Exchange.Account do
  use GenServer

  defstruct btc: 1, jpy: 0, order: []

  @type t :: %__MODULE__{
          btc: float,
          jpy: float,
          order: list
        }

  def start_link(init_args) do
    GenServer.start_link(__MODULE__, [init_args], name: __MODULE__)
  end

  def init(_args), do: {:ok, %__MODULE__{}}

  def handle_call(:get, _from, state), do: {:reply, state, state}

  def handle_cast({:update, account}, _), do: {:noreply, account}

  def get, do: GenServer.call(__MODULE__, :get)

  def update(account), do: GenServer.cast(__MODULE__, {:update, account})
end
