# this should be a module 

module Players 
  
  class Board
  end 
  
  class Human < Player
    def move(index) 
      user_input = gets.chomp
      user_input
    end 
  end
  
  class Computer < Player
    def initialize(token) # initialize with token
      @token = token 
    end
    
    def move(board) # this method will take a board object as an argument
      
      board.cells[0].include?(" ") 
      board.cells[0].replace("1")
      board.cells[1].include?(" ") 
      board.cells[1].replace("2")
      board.cells[2].include?(" ") 
      board.cells[2].replace("3")
      board.cells[3].include?(" ") 
      board.cells[3].replace("4")
      board.cells[4].include?(" ") 
      board.cells[4].replace("5")
      board.cells[5].include?(" ") 
      board.cells[5].replace("6")
      board.cells[6].include?(" ") 
      board.cells[6].replace("7")
      board.cells[7].include?(" ") 
      board.cells[7].replace("8")
      board.cells[8].include?(" ") 
      board.cells[8].replace("9")
      
       # go through the cells array and see if position is taken, if not - return open cells
    end
  end 
  
end 