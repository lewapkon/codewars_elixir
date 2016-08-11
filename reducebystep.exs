defmodule Reducebystep do

  def som(a, b), do: a + b
  def mini(a, b), do: min(a, b)
  def maxi(a, b), do: max(a, b)
  def gcdi(a, 0), do: abs(a)
  def gcdi(a, b), do: gcdi(b, rem(a, b))
  def lcmu(a, b), do: abs(div(a * b, gcdi(a, b)))

  def oper_array(fct, arr, init) do
    Enum.scan(arr, init, fct)
  end
end
