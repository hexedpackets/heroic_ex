defmodule HeroicTest do
  use ExUnit.Case
  doctest Heroic

  test "greets the world" do
    assert Heroic.hello() == :world
  end
end
