defmodule Advent3Test do
  use ExUnit.Case
  doctest Advent3

  test "moving" do
    assert Advent3.move({0,0}, "^") == {0,1}
    assert Advent3.move({0,0}, "v") == {0,-1}
    assert Advent3.move({0,0}, ">") == {1,0}
    assert Advent3.move({0,0}, "<") == {-1,0}
  end

  test "follow directions" do
    assert Advent3.follow_directions("^", [{0,0}]) == [{0,1}, {0,0}]
  end

  test "single santa" do
    assert Advent3.single_santa(">") == 2
    assert Advent3.single_santa("^>v<") == 4
    assert Advent3.single_santa("^v^v^v^v^v") == 2

    assert Advent3.single_santa(File.read!("resources/3.txt")) == 2592
  end
end
