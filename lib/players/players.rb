# this should be a module 

module Players 
  
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
      binding.pry
      # get program to return all open cells 
      board.cells.find_all do |r, index|
        if r.include?(" ")
          r[index]
        end 
#      unless board.cells.include?("X") || board.cells.include?("O")
#      if valid_move?(index) # check to see if position is occupied 
#      # return string of open position
#        index
      end
    end
        # go through the cells array and see if position is taken, if not - return open cells
    end
  end 
  
end 