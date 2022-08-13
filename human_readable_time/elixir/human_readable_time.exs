defmodule HumanReadable do
  @sec_in_a_min 60
  @sec_in_a_hour 3600

  @spec format(seconds: non_neg_integer()) :: Time.t()
  def format(seconds) when seconds <= 359999 do
    sec =
      rem(seconds, @sec_in_a_hour)
      |> rem(@sec_in_a_min)
      |> Integer.to_string()
      |> format_zero()

    min =
      rem(seconds, @sec_in_a_hour)
      |> div(@sec_in_a_min)
      |> Integer.to_string()
      |> format_zero()

    hours =
      div(seconds, @sec_in_a_hour)
      |> Integer.to_string()
      |> format_zero()

    "#{hours}:#{min}:#{sec}"
  end

  defp format_zero(str), do: if String.length(str) < 2, do: "0#{str}", else: str
end

IO.inspect(HumanReadable.format(3600))
