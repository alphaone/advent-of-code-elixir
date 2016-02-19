defmodule Advent3 do

  def move({x,y}, dir) do
    case dir do
      "^" -> {x, y+1}
      "v" -> {x, y-1}
      "<" -> {x-1, y}
      ">" -> {x+1, y}
    end
  end

  def follow_directions(dir, path) do
    new_pos = List.first(path) |> move(dir)
    [new_pos] ++ path
  end

  def single_santa(input) do
    directions = String.split(input, "")
                 |> Enum.filter(fn(x) -> String.strip(x) != "" end)

    Enum.reduce(directions, [{0,0}], &follow_directions/2)
    |> Enum.uniq
    |> Enum.count
  end

end
