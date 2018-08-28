require_relative 'piece.rb'
require_relative 'nullpiece'

class Board

  attr_accessor :rows

  def initialize
    @rows = Array.new(8){Array.new(8)}
    # @sentinel = niil
  end


  def setup

    # Setup White
    (0..1).each do |i|
      (0..7).each do |j|
        self.rows[i][j] = Piece.new
      end
    end

    # Setup Black
    (6..7).each do |i|
      (0..7).each do |j|
        self.rows[i][j] = Piece.new
      end
    end
    
    # Setup Null
    (2...6).each do |i|
      (0..7).each do |j|
        self.rows[i][j] = Nullpiece.instance
      end
    end
        

  end


  def [](pos)
    x , y = pos
    self.rows[x][y]
  end


  def []=(pos,value)
    x , y = pos
    self.rows[x][y] = value
  end

  def move_piece(color,start_pos,end_pos)
    if self[start_pos].nil?
      raise "This start position piece is empty."
    end

    unless self[end_pos].nil?
      raise "The end position piece is occupied."
    end
  end

  def valid_pos?(new_pos)
    new_pos.flatten.all?{|num| (0..7).to_a.include?(num) }
  
  end 


end

if $PROGRAM_NAME == __FILE__
  b = Board.new
  b.setup



HORIZONTAL_DIRS = [
  [-1,0],
  [1,0],
  [0,1],
  [0,-1]
].freeze

DIAGONAL_DIRS = [
  [-1,1],
  [1,1],
  [-1,-1],
  [1,-1]
].freeze


def grow_unblocked_moves_in_dir(dx,dy,board)
  moves = []
  #curr_pos = self.pos
  curr_pos = [0,0]  # test stub
  curr_x, curr_y = curr_pos
  
    1.upto(7) do |step|
      potential = [curr_x + (step * dx), curr_y + (step * dy)] 
      potential
      case 
      break if board(potential).value != nil && board(potential).color @oppon
      break if boat
      moves.concat([potential])
    end
  moves.select{|el| el if }
end

grow_unblocked_moves_in_dir(1,0,b)
end