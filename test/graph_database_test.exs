defmodule GraphDatabaseTest do
  use ExUnit.Case
  doctest GraphDatabase

  test "greets the world" do
    assert GraphDatabase.hello() == :world
  end
end
