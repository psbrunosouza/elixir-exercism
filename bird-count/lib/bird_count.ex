defmodule BirdCount do
  def today(list) when list == [], do: nil
  def today([head | tail]), do: head                                    

  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]) , do: [head + 1 | tail]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([head | _]) when head == 0, do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)

  def total([]), do: 0 
  def total([count | tail]), do: count + total(tail)

  def busy_days([]), do: 0 
  def busy_days([count | tail]) when count >= 5, do: 1 + busy_days(tail)
  def busy_days([_ | tail]), do: busy_days(tail)
end