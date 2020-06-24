defprotocol BitElixir.Exchange.Order do
  alias BitElixir.Exchange.Order.{Normal, IFD, OCO}

  defmodule Normal do
    defstruct SB: nil, value: nil, volume: nil
    @type t :: %__MODULE__{SB: :sell | :buy, value: float, volume: float}
  end

  defmodule IFD do
    defstruct if: nil, done: nil
    @type t :: %__MODULE__{if: Normal.t(), done: Normal.t() | OCO.t()}
  end

  defmodule OCO do
    defstruct one: nil, two: nil
    @type t :: %__MODULE__{one: Normal.t(), two: Normal.t()}
  end
end

defimpl BitElixir.Exchange.Order, for: BitElixir.Exchange.Order.Normal do
end
