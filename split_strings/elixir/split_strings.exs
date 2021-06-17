defmodule SplitStrings do
  def solution(str) do
    case String.length(str) |> rem(2) do
      0 ->
        str |> String.codepoints() |> Enum.chunk_every(2) |> Enum.map(&Enum.join/1)

      1 ->
        str
        |> String.codepoints()
        |> Enum.chunk_every(2)
        |> Enum.map(&Enum.join/1)
        |> List.replace_at(-1, "#{String.last(str)}_")
    end
  end
end

IO.inspect(SplitStrings.solution("abc"))
IO.inspect(SplitStrings.solution("abcdef"))
IO.inspect(SplitStrings.solution(""))
