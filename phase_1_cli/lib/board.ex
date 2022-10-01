defmodule Board do
  @moduledoc """
  Module to generate game boards for Minesweeper game

  A game board will be a map of maps.
  - Each item in the outer map will be an inner map that maps each row of the game board.
  - Each inner map will have items corresponding to each tile in a row
  """

  @x_size 10
  @y_size 8
  @mine_threshold 30

  @mine "X"

  @type

  def generate_row() do

  end

  def generate_board() do

  end

  def randomize_tile() do
    if :rand.uniform() <= @mine_threshold do

    else

    end
  end

end
