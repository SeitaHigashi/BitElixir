defmodule BitElixir.ExchangeTest do
  use ExUnit.Case

  alias BitElixir.Exchange
  alias BitElixir.Exchange.Account

  doctest BitElixir.Exchange

  test "init test" do
    assert Exchange.init(nil) == {:ok, %Account{}}

    assert Exchange.get_account() == %Account{}
  end
end
