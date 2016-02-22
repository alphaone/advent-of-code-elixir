defmodule Advent4 do

  def is_coin?(pattern,secret, i) do
    md5_hash = :crypto.hash(:md5, secret <> Integer.to_string(i)) |> Base.encode16
    String.starts_with?(md5_hash, pattern)
  end

  def advent_coins(n, secret) do
    pattern = String.duplicate("0", n)
    Enum.find(0..10_000_000, &(is_coin?(pattern,secret,&1)) )
  end

end
