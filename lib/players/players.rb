# this should be a module 

module Players 
  
  class Human < Player
    def move(index) 
      user_input = gets.chomp
      user_input
    end 
  end
  
  class Computer < Player
    
  end 
  
end 