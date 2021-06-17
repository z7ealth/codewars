defmodule Kata do
  def digital_root(n) do
    sum =
      n
      |> Integer.digits()
      |> Enum.sum()

    if length(sum |> Integer.digits ) > 1, do: digital_root(sum), else: sum
  end
end

IO.inspect(Kata.digital_root(16)) # -> 7
IO.inspect(Kata.digital_root(942)) # -> 6
IO.inspect(Kata.digital_root(132_189)) # -> 6
IO.inspect(Kata.digital_root(493_193)) # -> 2
