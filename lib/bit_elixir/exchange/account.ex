defmodule BitElixir.Exchange.Account do
  use GenServer

  defstruct BTC: 1, JPY: 0, Order: []

  @type t :: %__MODULE__{
          BTC: float,
          JPY: float,
          Order: list
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
