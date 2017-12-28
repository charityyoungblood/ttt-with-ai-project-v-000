class Board 

  def initialize 
    
  end 
  
  def cells # this method should set the cells attribute to an empty array
    @cells = []
  end 
  
  def cells=(cells)
    @cells = cells
  end 
  
  def reset! # this method should clear the board - sets all cells to " "
    @cells = [" "," "," "," "," "," "," "," "," "]
  end 
  
end 