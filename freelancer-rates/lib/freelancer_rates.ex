defmodule FreelancerRates do
  @base_rate_value 8.0

  def daily_rate(hourly_rate) do
    hourly_rate * @base_rate_value
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    (hourly_rate * 8) * 22 
    |> apply_discount(discount) 
    |> Float.ceil()
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / apply_discount(daily_rate(hourly_rate), discount) 
    |> Float.floor(1)
  end
end
