require_relative 'lib/board'

class Chess
  def initialize
    @board = Board.new
    @turn = 0
  end

  def run
    setup_board
    until end?
      # system('clear') || system('cls')
      puts "TURN #{@turn}"
      # print board with peaces
      @board.print_board
      
      # check player turn
      player = @turn.even? ? :white : :balck
      puts "\nPLAYER #{player} MAKE A MOVE.".colorize(background: :orange, color: :white)
      
      # get players input (check if legal)
      move = get_move
      # upddate board
      @board.update(move[0],move[1])

      # next turn
      @turn +=1
    end
    # print the last board
    @board.print_board
    
  end

  def end?
    @turn == 2
  end

  def get_move
    from = user_input(">>FROM: ")
    to = user_input  ("  >>TO: ")
    return from,to
  end
  
  def user_input(prompt)
    until legal?
      print prompt
      pos = gets.chomp
      return pos
    end  
  end

  def legal?
    
  end

  def setup_board
    # Place pawns
    ('a'..'h').each do |file|
      @board.place_piece(Pawn.new("#{file}2", :white))
      @board.place_piece(Pawn.new("#{file}7", :black))
    end

    # Place rooks
    @board.place_piece(Rook.new("a1", :white))
    @board.place_piece(Rook.new("h1", :white))
    @board.place_piece(Rook.new("a8", :black))
    @board.place_piece(Rook.new("h8", :black))

    # Place knights
    @board.place_piece(Knight.new("b1", :white))
    @board.place_piece(Knight.new("g1", :white))
    @board.place_piece(Knight.new("b8", :black))
    @board.place_piece(Knight.new("g8", :black))

    # Place bishops
    @board.place_piece(Bishop.new("c1", :white))
    @board.place_piece(Bishop.new("f1", :white))
    @board.place_piece(Bishop.new("c8", :black))
    @board.place_piece(Bishop.new("f8", :black))

    # Place queens
    @board.place_piece(Queen.new("d1", :white))
    @board.place_piece(Queen.new("d8", :black))

    # Place kings
    @board.place_piece(King.new("e1", :white))
    @board.place_piece(King.new("e8", :black))
  end
end

Chess.new.run
