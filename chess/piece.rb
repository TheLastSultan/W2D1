#require_relative "board"


class Piece
  attr_accessor :value


  def initialize(color,board, position)
    @color = color
    @board = board
    @position = position
  end

  def empty?
      self.board(pos).value == nil 
  end
  
  # def valid_moves
  # 
  # end
  # 
  # def pos==(value)
  # end
  # 
  # def symbol;end
  # 
  # private 
  # def move_into_check?(end_pos)
  # 
  # 
  
  def to_s
    #@value
    "P"
  end 

end
