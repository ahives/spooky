defmodule SpookyTest do
  use ExUnit.Case
  doctest Spooky

  test "greets the world" do
    assert Spooky.hello() == :world
  end
end
