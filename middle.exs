defmodule Challenge do
  require Integer
  def get_middle(str) do
    len = String.length(str)
    if Integer.is_even(len) do
      String.at(str, div(len, 2) - 1) <> String.at(str, div(len, 2))
    else
      String.at(str, div(len, 2))
    end
  end
end
