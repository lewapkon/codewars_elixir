defmodule Pipeline do
  def fix_pipe(pipes) do
    fix_pipe(Enum.sort(pipes), [])
  end

  defp fix_pipe([], acc) do
    acc |> Enum.reverse
  end

  defp fix_pipe([next | rest], []) do
    fix_pipe(rest, [next])
  end

  defp fix_pipe(pipes = [next | rest_pipes], acc = [last | _rest_acc]) do
    if next > last do
      fix_pipe(pipes, [last + 1 | acc])
    else
      fix_pipe(rest_pipes, acc)
    end
  end
end
