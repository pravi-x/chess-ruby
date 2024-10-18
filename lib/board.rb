require 'colorize'
require_relative 'piece'

class Board
  def initialize()
    @grid = Array.new(8) { Array.new(8) }
    setup_starting_position
  end

  # Board colors
  PL1 = :white
  BG_PL1 = :white
  PL2 = :black 
  BG_PL2 = :light_blue

  def print_board
    system('clear') || system('cls')
    @grid.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        background_color = (i + j).even? ? BG_PL1 : BG_PL2
        print (cell.nil? ? '   ' : ' '+cell.to_s+' ').colorize(background: background_color)
      end
      puts
    end
  end

  def setup_starting_position
    # Place pawns
    (0..7).each do |i|
      @grid[1][i] = Pawn.new('a2', PL2)
      @grid[6][i] = Pawn.new('a7', PL1)
    end

    # Place rooks
    @grid[0][0] = Rook.new('a1', PL2)
    @grid[0][7] = Rook.new('h1', PL2)
    @grid[7][0] = Rook.new('a8', PL1)
    @grid[7][7] = Rook.new('h8', PL1)

    # Place knights
    @grid[0][1] = Knight.new('b1', PL2)
    @grid[0][6] = Knight.new('g1', PL2)
    @grid[7][1] = Knight.new('b8', PL1)
    @grid[7][6] = Knight.new('g8', PL1)

    # Place bishops
    @grid[0][2] = Bishop.new('c1', PL2)
    @grid[0][5] = Bishop.new('f1', PL2)
    @grid[7][2] = Bishop.new('c8', PL1)
    @grid[7][5] = Bishop.new('f8', PL1)

    # Place queens
    @grid[0][3] = Queen.new('d1', PL2)
    @grid[7][3] = Queen.new('d8', PL1)

    # Place kings
    @grid[0][4] = King.new('e1', PL2)
    @grid[7][4] = King.new('e8', PL1)
  end

end
