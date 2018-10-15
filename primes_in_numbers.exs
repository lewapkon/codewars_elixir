defmodule PrimesInNumbers do

  def prime_factors(n) do
    n
    |> prime_factors(2, %{})
    |> Enum.sort
    |> Enum.map(fn {factor, count} -> "(#{factor}#{if count > 1, do: "**#{count}"})" end)
    |> Enum.join("")
  end

  defp prime_factors(n, _, factors) when n <= 1, do: factors
  
  defp prime_factors(n, factor, factors) when rem(n, factor) == 0, do: prime_factors(div(n, factor), factor, add_factor(factor, factors))
  
  defp prime_factors(n, factor, factors), do: prime_factors(n, factor + 1, factors)
  
  defp add_factor(factor, factors), do: Map.update(factors, factor, 1, &(&1 + 1))
end
