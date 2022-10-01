defmodule Phase1CliTest do
  use ExUnit.Case
  doctest Phase1Cli

  test "greets the world" do
    assert Phase1Cli.hello() == :world
  end
end
