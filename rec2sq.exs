defmodule Rec2sq do

  def squares_in_rect(l, l) do
    nil
  end

  def squares_in_rect(l, w, acc \\ [])
  def squares_in_rect(0, _w, acc) do
    acc |> Enum.reverse
  end
  def squares_in_rect(l, w, acc) when l < w do
    squares_in_rect(w, l, acc)
  end
  def squares_in_rect(l, w, acc) do
    squares_in_rect(l - w, w, [w | acc])
  end
end
