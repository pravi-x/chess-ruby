require 'colorize'
require_relative 'piece'
require_relative 'algebraic_notation'

class Board
  include AlgebraicNotation

  # Board colors
  PL1 = :white
  BG_PL1 = :white
  PL2 = :black 
  BG_PL2 = :light_blue

  def initialize()
    @grid = Array.new(8) { Array.new(8) }
  end

  def print_board
    puts "   a  b  c  d  e  f  g  h"
    @grid.each_with_index do |row, i|
      print "#{8 - i} "
      row.each_with_index do |cell, j|
        if cell.nil?
          print "   ".colorize(background: (i + j).even? ? BG_PL1 : BG_PL2)
        else
          print " #{cell.symbol} ".colorize(color: cell.color, background: (i + j).even? ? BG_PL1 : BG_PL2)
        end
      end
      puts " #{8 - i}"
    end
    puts "   a  b  c  d  e  f  g  h"
  end

  def update(start_pos, end_pos)
    piece = get_piece_at(start_pos)
    piece.move(end_pos)
    empty_slot(start_pos)
    place_piece(piece)
  end

  def get_piece_at(pos)
    row, col = translate(pos)
    @grid[row][col]
  end

  def empty_slot(start_pos)
    row, col = translate(start_pos)
    @grid[row][col] = nil
  end

  def place_piece(piece)
    row, col = piece.array_pos
    @grid[row][col] = piece
  end
end
