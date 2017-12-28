class Board 

  def initialize 
    @cells = [" "," "," "," "," "," "," "," "," "]
  end 
  
  def cells # this method should set the cells attribute to an empty array - getter method - gets the value from data
    @cells
  end 
  
  def cells=(cells)
    @cells = [] # setter method - sets the data to a value 
  end 
  
  def reset! # this method should clear the board - sets all cells to " "
    @cells = [" "," "," "," "," "," "," "," "," "]
  end 
  
end 