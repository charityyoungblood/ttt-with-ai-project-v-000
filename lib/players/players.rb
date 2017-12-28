# this should be a module 

module Players 
  
  class Human < Player
    def move(index) 
      binding.pry
      user_input = gets.chomp.to_i
      turn = user_input - 1
      @cells[turn]
    end 
  end
  
  
end 