defmodule ExProcessTest do
  use ExUnit.Case
  doctest ExProcess

  test "greets the world" do
    assert ExProcess.hello() == :world
  end
end
