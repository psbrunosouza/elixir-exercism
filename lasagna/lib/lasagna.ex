defmodule Lasagna do
  @minutes_in_oven 40
  @minutes_per_layer 2
  @alarm_message "Ding!"

  def expected_minutes_in_oven, do: @minutes_in_oven

  def remaining_minutes_in_oven(actual_minutes) do 
    expected_minutes_in_oven() - actual_minutes
  end

  def preparation_time_in_minutes(layers), do: layers * @minutes_per_layer

  def total_time_in_minutes(layers, spent_minutes) do 
    preparation_time_in_minutes(layers) + spent_minutes
  end

  def alarm, do: @alarm_message 
end
