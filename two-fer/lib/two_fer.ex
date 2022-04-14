

defmodule TwoFer do
  @moduledoc"""
  two fer module
  """
  @doc"""
    function two fer get a name and return one for name, one for me
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name \\ "you") when is_binary(name), do: "One for #{name}, one for me."
end


