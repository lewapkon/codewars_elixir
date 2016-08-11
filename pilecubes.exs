defmodule Pilecubes do

  def find_nb(m, n \\ 0)
  def find_nb(0, n), do: n
  def find_nb(m, _) when m < 0, do: -1
  def find_nb(m, n), do: find_nb(m - cube(n + 1), n + 1)

  defp cube(n) do
    n * n * n
  end
end
