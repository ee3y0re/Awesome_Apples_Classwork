require_relative 'null.rb' #unintialized constant
require_relative 'piece.rb'

class Board

  def initialize
    @rows = Array.new(4){Array.new(4, Null.instance)}
    @rows[0][0] = Piece.new
  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = val
  end

  def move_piece(start_pos, end_pos)
      # raises error if start = null piece or off board
      # raises error if end = piece or off board
      # calls move_piece!
      # Can check for self[pos].nil? here, or could refactor & put the check in the [](pos) & []=(pos, val) methods
      # (can be nice if you're checking if a position is on the board in multiple methods)
      # raise "start position is outside the board" unless (start_pos[0].between?(0, @rows.length - 1) && start_pos[1].between?(0, @rows.length - 1) )
      raise 'bad start' if self[start_pos].nil? || self[start_pos].symbol == 'null'
      raise 'bad end' if self[end_pos].nil? || self[end_pos].symbol != 'null'
      # raise "no piece here" if self[start_pos].is_nil? #would need refatoring when delaing with actual pieces and null

      move_piece!(start_pos, end_pos)
  end

  def move_piece!(start_pos, end_pos)
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    # @rows[start_pos[0], start_pos[1]], @rows[end_pos[0], end_pos[1]] = @rows[end_pos[0], end_pos[1]], @rows[start_pos[0], start_pos[1]]
  end
end