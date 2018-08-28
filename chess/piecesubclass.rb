require_relative 'piece'
require_relative 'slideable'


class Rook < Piece
  include Slideable
  
  def symbol;end
  
end

class Queen < Piece
  include Slideable
  
  # def symbol;end
  
  def move_dirs
    horizontal_dirs + diagonal_dirs
  end
  
end

class Bishop < Piece
  include Slideable
  
  
  
  
end

class Knight < Piece
end

class King < Piece
end

class Pawn < Piece
end
