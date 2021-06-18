defmodule Kata do
  def high_and_low(s) do
    {min, max} =
      s
      |> String.split()
      |> Enum.map(&String.to_integer/1)
      |> Enum.min_max()

    "#{max} #{min}"
  end
end

IO.inspect(Kata.high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6"))
