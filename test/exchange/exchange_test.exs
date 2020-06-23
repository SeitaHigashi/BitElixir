defmodule BitElixir.ExchangeTest do
  use ExUnit.Case
  doctest BitElixir.Exchange

  test "account test" do
    assert BitElixir.Account.get == %BitElixir.Account{}

    BitElixir.Account.order("order")

    assert BitElixir.Account.get == %BitElixir.Account{Order: ["order"]}
  end

end
