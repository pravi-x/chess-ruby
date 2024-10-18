require_relative 'algebraic_notation'

class Piece
  include AlgebraicNotation
  
  attr_reader :symbol, :array_pos, :color

  def initialize(symbol, board_pos, color)
    @symbol = symbol
    @array_pos = translate(board_pos)
    @color = color
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
    super(symbol, board_pos, color)
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
    super(symbol, board_pos, color)
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
    super(symbol, board_pos, color)
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
    super(symbol, board_pos, color)
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
    super(symbol, board_pos, color)
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
    super(symbol, board_pos, color)
  end

  def move(new_pos)
    # Specific move logic for King
    super
  end
end