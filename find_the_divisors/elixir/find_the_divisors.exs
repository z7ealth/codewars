defmodule FindTheDivisors do
  @spec divisors(non_neg_integer()) :: Enum.t() | String.t()
  def divisors(integer) when integer > 1 do
    case is_prime?(integer) do
      true -> "#{integer} is prime"
      false ->
        get_divisors(integer)
        |> Enum.filter(& &1 != 1 && &1 != integer)
    end
  end

  defp get_divisors(number) do
    Enum.to_list(1..number)
    |> Enum.map(fn i -> if rem(number, i) == 0, do: i end)
    |> Enum.filter(& !is_nil(&1))
  end

  defp is_prime?(number), do: length(get_divisors(number)) == 2
end

IO.inspect(FindTheDivisors.divisors(12))
