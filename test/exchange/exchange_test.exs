defmodule BitElixir.ExchangeTest do
  use ExUnit.Case
  doctest BitElixir.Exchange

  test "exchange test" do
    assert BitElixir.Exchange.get == %BitElixir.Exchange.Account{}

  end

end
