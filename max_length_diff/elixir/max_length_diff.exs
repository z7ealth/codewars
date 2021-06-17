defmodule MaxDiff do
  def mxdiflg(a1, a2) do
    cond do
      length(a1) === 0 || length(a2) === 0 ->
        -1
      true ->
        getResult(a1, a2)
    end
  end

  defp getResult(a1, a2) do
    lengths_a = a1 |> Enum.map(&String.length/1)
    lengths_b = a2 |> Enum.map(&String.length/1)

    lengths_a
    |> Enum.map(fn item_a ->
      lengths_b |> Enum.map(fn item_b -> abs(item_a - item_b) end) |> Enum.max()
    end)
    |> Enum.max()
  end
end

a1 = [
  "hoqq",
  "bbllkw",
  "oox",
  "ejjuyyy",
  "plmiis",
  "xxxzgpsssa",
  "xxwwkktt",
  "znnnnfqknaz",
  "qqquuhii",
  "dvvvwz"
]

a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]

IO.inspect(MaxDiff.mxdiflg(a1, a2))
