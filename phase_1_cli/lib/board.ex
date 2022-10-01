defmodule Board do
  @moduledoc """
  Module to generate game boards for Minesweeper game

  A game board will be a map of maps.
  - Each item in the outer map will be an inner map that maps each row of the game board.
  - Each inner map will have items corresponding to each tile in a row
  """

  @x_size 10
  @y_size 8
  @mine_threshold 33

  @type board_mine :: X | O
  @type board_row :: %{number => board_mine}
  @type board :: %{number => board_row}

  @spec generate_row() :: board_row()
  def generate_row() do
    Enum.reduce(1..@x_size, %{}, fn x, acc ->
      Map.put(acc, x, randomize_tile())
    end)
  end

  @spec generate_board() :: board()
  def generate_board() do
    Enum.reduce(1..@y_size, %{}, fn x, acc ->
      Map.put(acc, x, generate_row())
    end)
  end

  @spec randomize_tile() :: board
  def randomize_tile() do
    if :rand.uniform(100) <= @mine_threshold do
      "X"
    else
      "O"
    end
  end

end
