defmodule TestCode do
  @moduledoc """
  Documentation for TestCode.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TestCode.hello
      :world

  """
  def hello do
    #IO.puts "Hello"
    :world
  end

  def calc_div(num) do
    rem num, 2
  end

  def main do
    input = IO.gets "Input number: "
    # |>...前の関数の結果を次の関数の第一引数として渡す
    num = input |> String.replace("\n", "")
    calc_div = fn a -> rem a, 2 end
    IO.puts calc_div.(String.to_integer(num))
  end
end
