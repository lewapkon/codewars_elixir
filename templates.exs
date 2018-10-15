defmodule Templates do
  def build_string(args) do
    "I like #{Enum.join(args, ", ")}!"
  end
end
