# class Piece 

#   attr_reader :Board, :symbol, :Array
#   def initialize(color, board, pos)
#     @color = symbol
#     @board = Board.new
#     @pos = []
#   end

# end

class Piece
    attr_reader :symbol

    def initialize(symbol)
        # @symbol = 'Pawn'
        @color = symbol
        @board = Board.new
        @pos = []
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end
    
    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    

    def moves

    end
end