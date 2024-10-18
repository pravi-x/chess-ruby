require_relative 'algebraic_notation'

class Piece
  include AlgebraicNotation
  
  attr_reader :symbol, :array_pos, :color, :name, :algebraic_symbol

  def initialize(symbol, board_pos, color, name, algebraic_symbol)
    @symbol = symbol
    @array_pos = translate(board_pos)
    @color = color
    @name = name
    @algebraic_symbol = algebraic_symbol
  end

  def move(new_pos)
    # General move logic, to be overridden by specific pieces
    @array_pos = translate(new_pos)
  end

  def to_s
    @symbol.to_s
  end

end

# Subclass for Pawn
class Pawn < Piece
  def initialize(board_pos, color)
    symbol = color == :white ? '♙' : '♟'
    algebraic_symbol = color == :white ? 'p' : 'P'
    super(symbol, board_pos, color, 'Pawn', algebraic_symbol)
  end
  
  def move(new_pos)
    # Specific move logic for Pawn
    super
  end
end

# Subclass for Rook
class Rook < Piece
  def initialize(board_pos, color)
    symbol = color == :white ? '♖' : '♜'
    algebraic_symbol = color == :white ? 'r' : 'R'
    super(symbol, board_pos, color, 'Rook', algebraic_symbol)
  end

  def move(new_pos)
    # Specific move logic for Rook
    super
  end
end

# Subclass for Knight
class Knight < Piece
  def initialize(board_pos, color)
    symbol = color == :white ? '♘' : '♞'
    algebraic_symbol = color == :white ? 'n' : 'N'
    super(symbol, board_pos, color, 'Knight', algebraic_symbol)
  end

  def move(new_pos)
    # Specific move logic for Knight
    super
  end
end

# Subclass for Bishop
class Bishop < Piece
  def initialize(board_pos, color)
    symbol = color == :white ? '♗' : '♝'
    algebraic_symbol = color == :white ? 'b' : 'B'
    super(symbol, board_pos, color, 'Bishop', algebraic_symbol)
  end

  def move(new_pos)
    # Specific move logic for Bishop
    super
  end
end

# Subclass for Queen
class Queen < Piece
  def initialize(board_pos, color)
    symbol = color == :white ? '♕' : '♛'
    algebraic_symbol = color == :white ? 'q' : 'Q'
    super(symbol, board_pos, color, 'Queen', algebraic_symbol)
  end

  def move(new_pos)
    # Specific move logic for Queen
    super
  end
end

# Subclass for King
class King < Piece
  def initialize(board_pos, color)
    symbol = color == :white ? '♔' : '♚'
    algebraic_symbol = color == :white ? 'k' : 'K'
    super(symbol, board_pos, color, 'King', algebraic_symbol)
  end

  def move(new_pos)
    # Specific move logic for King
    super
  end
end