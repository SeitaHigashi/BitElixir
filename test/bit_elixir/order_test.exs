defmodule BitElixir.OrderTest do
  use ExUnit.Case

  alias BitElixir.Exchange.Order

  doctest BitElixir.Exchange.Order

  test "order test" do
    a = %Order{trade: :buy, value: 1_000_000, volume: 1}
    b = %Order{trade: :sell, value: 1_020_000, volume: 1}

    assert Order.ifd(a, b) == %Order{
             trade: :buy,
             value: 1_000_000,
             volume: 1,
             method: :ifd,
             order: [
               %Order{trade: :sell, value: 1_020_000, volume: 1, method: :normal, order: []}
             ]
           }
  end
end
