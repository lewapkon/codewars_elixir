defmodule Divisible13 do

  def thirt(n) do
    thirt(n, 0)
  end

  def thirt(n, n) do
    n
  end

  def thirt(n, _) do
    n
    |> Integer.digits
    |> Enum.reverse
    |> Stream.zip(Stream.cycle([1, 10, 9, 12, 3, 4]))
    |> Stream.map(fn {a, b} -> a * b end)
    |> Enum.sum
    |> thirt(n)
  end

end
