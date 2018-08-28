class Piece
  attr_accessor :value


  def initialize
    @value = :p
  end

  def inspect
    self.value
  end

end
