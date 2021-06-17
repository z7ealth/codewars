defmodule CamelCase do
  def to_camel_case(str) do
    [head | tail] = String.split(str, ~r{[/\-/_]})
    "#{head}#{tail |> Enum.map(&String.capitalize/1) |> Enum.join()}"
  end
end

IO.inspect(CamelCase.to_camel_case("the-stealth-warrior"))
IO.inspect(CamelCase.to_camel_case("The_Stealth_Warrior"))
