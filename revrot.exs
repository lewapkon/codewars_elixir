defmodule Revrot do

  def revrot(_, 0) do
    ""
  end

  def revrot(str, sz) do
    str
    |> String.codepoints
    |> Enum.map(&String.to_integer/1)
    |> Enum.chunk(sz)
    |> Enum.flat_map(&process/1)
    |> Enum.join
  end

  defp process(numbers) do
    sum_of_cubes =
      numbers
      |> Enum.map(&(:math.pow(&1, 3)))
      |> Enum.map(&round/1)
      |> Enum.sum
    if rem(sum_of_cubes, 2) == 0 do
      Enum.reverse(numbers)
    else
      [first | rest] = numbers
      rest ++ [first]
    end
  end
end
