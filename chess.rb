require_relative 'lib/board'

class Chess
  def initialize
    @board = Board.new
    @white_pieces = Player.new(:white)
    @black_pieces = Player.new(:balck)
    @turn = 0
  end

  def run
    until end?
      # print board with peaces
      @board.print_board
      
      # check player turn
      player = turn.even? ? :white : :balck
      puts "\nPLAYER #{player} MAKE A MOVE :"
      # get players input (check if legal)
      
      # implement move

      # next turn
      turn +=1
    end
    
  end

  def get_move
    until legal?
      
    end
  end
end

Board.new.print_board
