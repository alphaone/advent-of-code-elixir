defmodule Advent4Test do
  use ExUnit.Case
  doctest Advent4

  test "find coin" do
    assert Advent4.advent_coins(5, "abcdef") == 609043
    assert Advent4.advent_coins(5, "pqrstuv") == 1048970
    assert Advent4.advent_coins(5, "yzbqklnj") == 282749
    assert Advent4.advent_coins(6, "yzbqklnj") == 9962624
  end

  test "is coin" do
    assert Advent4.is_coin?("00000", "abcdef", 609043) == true
    assert Advent4.is_coin?("00000", "abcdef", 609042) == false
  end

end
