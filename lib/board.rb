require 'pry'

class Board 
  attr_accessor :cells
  def initialize 
    @cells = [" "," "," "," "," "," "," "," "," "]
  end 
  
#  def cells # this method should set the cells attribute to an empty array - getter method - gets the value from data
#    @cells
#  end 
#  
#  def cells=(cells)
#    @cells = [] # setter method - sets the data to a value 
#  end 
#  
  def reset! # this method should clear the board - sets all cells to " "
    @cells = [" "," "," "," "," "," "," "," "," "]
  end 
  
  def display
   
    horizontal_lines = "-----------"
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts horizontal_lines
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts horizontal_lines
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end 
  
  def position(index) # this method takes in user input (number) and returns the value of the board cell 
    move = index.to_i - 1
    @cells[move]
  end 
  
end 