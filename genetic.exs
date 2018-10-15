defmodule Genetic do
  def generate(length, acc \\ "")
  
  def generate(0, acc) do
    acc
  end
  
  def generate(length, acc) do
    generate(length - 1, acc <> Integer.to_string(:random.uniform(2)-1))
  end
end
