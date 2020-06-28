defmodule BitElixir.Exchange.Order do
  defstruct trade: nil, value: 0, volume: 0, method: :normal, order: []

  def ifd(if_order, done_order) do
    %__MODULE__{if_order | method: :ifd, order: [done_order]}
  end

  def oco(one_order, two_order) do
    [
      %__MODULE__{one_order | method: :oco, order: [two_order]},
      %__MODULE__{two_order | method: :oco, order: [one_order]}
    ]
  end
end
