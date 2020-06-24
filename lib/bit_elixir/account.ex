defmodule BitElixir.Account do
  defstruct BTC: 1, JPY: 0, Order: []

  @type t :: %__MODULE__{
          BTC: float,
          JPY: float,
          Order: list
        }
end
