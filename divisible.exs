defmodule Challenge do
  def solution(number, acc \\ [])

  def solution(number, acc) when number <= 3 do
    acc |> Enum.sum
  end

  def solution(number, acc) when rem(number - 1, 3) == 0 or rem(number - 1, 5) == 0 do
    solution(number - 1, [number - 1 | acc])
  end

  def solution(number, acc) do
    solution(number - 1, acc)
  end
end
