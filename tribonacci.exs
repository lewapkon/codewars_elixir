defmodule TribonacciSequence do
  def tribonacci(signature = {a, b, c}, n) when n >= 3 do
    tribonacci(signature, n - 3, [c, b, a])
  end

  def tribonacci({a, b, c}, n) do
    Enum.take([a, b, c], n)
  end

  defp tribonacci(_signature, 0, res) do
    Enum.reverse(res)
  end

  defp tribonacci({a, b, c}, n, res) do
    sum = a + b + c
    tribonacci({b, c, sum}, n - 1, [sum | res])
  end
end
