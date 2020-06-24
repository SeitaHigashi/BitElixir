defmodule BitElixir.ExchangeTest do
  use ExUnit.Case

  alias BitElixir.Account

  doctest BitElixir.Exchange

  test "init test" do
    assert BitElixir.Exchange.init(nil) == {:ok, %Account{}}
  end
end
