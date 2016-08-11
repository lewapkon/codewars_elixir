defmodule Longestconsec do
  def longest_consec(strarr, k) when length(strarr) < k or k <= 0 do
    ""
  end

  def longest_consec(strarr, k) do
    strarr
    |> Enum.chunk(k, 1)
    |> Enum.max_by(fn sec ->
      sec
      |> Enum.map(&String.length/1)
      |> Enum.sum
    end)
    |> Enum.join
  end
end
