defmodule EmailObfuscator do

  def execute(email) do
    email
    |> String.replace(".", " [dot] ")
    |> String.replace("@", " [at] ")
  end
end
