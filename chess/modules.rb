module Slideable
  
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
  
  def horizontal_dirs
    HORIZONTAL_DIRS
  end
  
  def diagonal_dirs
    DIAGONAL_DIRS
  end
  
  def moves
    
    grow_unblocked_moves_in_dir(1,1)
    
  end
  
  private
  def move_dirs
    
  end
  
  def grow_unblocked_moves_in_dir(dx,dy)
    moves = []
    #curr_pos = self.pos
    curr_pos = [0,0]  # test stub
    curr_x, curr_y = curr_pos
    
    loop do
      step = 1
      potential = [curr_x + (step * dx), curr_y + (step * dy)] 
      break if self.board(potential).value != nil || self.board.valid_pos?(potential) == false
      moves.concat(potential)
      step += 1
    end
    p moves 
    moves
  end
  
end

module Stepable
end