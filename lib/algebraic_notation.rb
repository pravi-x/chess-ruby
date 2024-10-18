module AlgebraicNotation
  COLUMNS = {
    'a' => 0,
    'b' => 1,
    'c' => 2,
    'd' => 3,
    'e' => 4,
    'f' => 5,
    'g' => 6,
    'h' => 7
  }

  ROWS = {
    '1' => 7,
    '2' => 6,
    '3' => 5,
    '4' => 4,
    '5' => 3,
    '6' => 2,
    '7' => 1,
    '8' => 0
  }

  module_function

  # Translates a chessboard position from algebraic notation to array indices.
  #
  # @param input [String] The position in algebraic notation (e.g., "e2").
  # @return [Array<Integer>] The translated position as an array of indices.
  def translate(input)
    letter, number = input.chars
    [ROWS[number],COLUMNS[letter]]
  end
end