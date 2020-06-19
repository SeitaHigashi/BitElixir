defmodule BitElixirTest do
  use ExUnit.Case
  doctest BitElixir

  test "greets the world" do
    assert BitElixir.hello() == :world
  end
end
