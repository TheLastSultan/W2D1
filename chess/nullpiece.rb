require 'singleton'

class Nullpiece < Piece
  include Singleton 
  
  def initialize
    super
    @value = nil
  end
  
  def to_s
    return " "
  end
  
end