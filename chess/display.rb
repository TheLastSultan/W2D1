require 'colorize'
require_relative 'cursor'

class Display
  attr_accessor :cursor, :board

  
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end
  
  def render
    system("clear")
    #print self.board.rows
    @board.rows.each_with_index do |row,i|
      row.each_with_index do |el,j|
        
        if (i + j).odd? && [i,j] != cursor.cursor_pos
          print "#{el} ".colorize(:color => :cyan, :background => :light_black)
        elsif [i,j] == cursor.cursor_pos
          print "#{el} ".colorize(:color => :white, :background => :red)
        else
          print "#{el} ".colorize(:color => :purple, :background => :dark_white)
        end
      end 
      puts "\n"
    end 
    puts "\n"
    puts "\n"
    
    
    
  end 
    
end 