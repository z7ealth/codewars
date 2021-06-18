defmodule DuplicateCount do
  def count(""), do: 0

  def count(str) do
    str
    |> String.downcase()
    |> String.codepoints()
    |> Enum.frequencies()
    |> Map.values()
    |> Enum.count(fn e -> e > 1 end)
  end
end

# -> 0
IO.inspect(DuplicateCount.count(""))
# -> 0
IO.inspect(DuplicateCount.count("abcde"))
# -> 2
IO.inspect(DuplicateCount.count("aabbcde"))
# -> 2
IO.inspect(DuplicateCount.count("aabBcde"))
# -> 1
IO.inspect(DuplicateCount.count("Indivisibility"))
# -> 2
IO.inspect(DuplicateCount.count("Indivisibilities"))
