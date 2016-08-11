defmodule Piapprox do
  require Integer

  def iter_pi(epsilon) do
    Stream.iterate(1, &(&1 + 2))
    |> Stream.with_index
    |> Stream.map(fn {n, index} ->
      (if Integer.is_even(index), do: n, else: -n)
    end)
    |> Enum.reduce_while([0, 0], (fn n, [i, acc] ->
      res = acc + 4 / n
      if :math.pi - epsilon <= res && res <= :math.pi + epsilon do
        {:halt, [i + 1, (trunc res * :math.pow(10, 10)) / :math.pow(10, 10)]}
      else
        {:cont, [i + 1, res]}
      end
    end))
  end
end
