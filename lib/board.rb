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
  
  def full? # this method checks if the board is full and will return tru for a full board, false for not full
    @cells.all? do |completed_game|
    completed_game.include?("X") || completed_game.include?("O")
  end 
  end 
  
  def turn_count # this method will count how many turns have been played 
    @cells.count("X") + @cells.count("O")
  end 
  
  def taken?(index) # this method is similar to position taken - will return true if the position is an X or an O 
    position = index.to_i - 1
    @cells[position] == "X" || @cells[position] == "O"
  end 
  
  def valid_move?(index) # this method will return true if user input is between 1 and 9 
    index = index.to_i 
    (1..9).include?(index) && !taken?(index)
  end 
  
  def update(index, token)
  
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 