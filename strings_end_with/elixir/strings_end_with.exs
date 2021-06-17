defmodule EndsWith do
  def solution(str, ending) do
    str
    |> String.ends_with?(ending)
  end
end

IO.inspect(EndsWith.solution("abc", "bc"))
IO.inspect(EndsWith.solution("abc", "d"))
