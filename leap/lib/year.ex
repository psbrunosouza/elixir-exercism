defmodule Year do
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year) when rem(year, 4) == 0 and not (rem(year, 100) == 0), do: true
  def leap_year?(year) when rem(year, 4) == 0 and rem(year, 400) == 0, do: true
  def leap_year?(year) when not (rem(year, 4) == 0 and not (rem(year, 100) == 0)) 
      or not (rem(year, 4) == 0 and rem(year, 400) == 0), do: false
end
