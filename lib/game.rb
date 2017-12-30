class Game 
  attr_accessor :board, :player_1, :player_2
  
  def initialize(player_1 = Players::Human.new("X") , player_2 = Players::Human.new("O"), board = Board.new) # initialize with 2 players and a board object - which are default values
    
    @player_1 = player_1
    @player_2 = player_2 
    @board = board
  end 
  
  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]

      ]
  
  def current_player # this method will display the player_1 token on the third move
    if board.turn_count == 2
      player_1
    end
  end 
  
  def won?
     WIN_COMBINATIONS.detect do |winning_combo|
    winning_combo.all? { |index| 
      @board.cells[index] == "X" } ||
    winning_combo.all? { |index| @board.cells[index] == "O" }
     end 
       # this method should return the winning combo
  end 
  
  def draw?
    !won? && board.full?
  end 
  
  def over? 
    won? || draw? 
  end 

  def winner 
    # return the token, "X" or "O" that has won the game given a winning board.
    # if won?(board) && !draw(board)
    if won?
      combo = won? #[0, 1, 2]
      @board.cells[combo[0]]
    end
  end 
  
  def turn # this method will verify user input in between 1-9
    # loop through asking for user input until user input is valid 
    # take user_input value and place token in the index selected
    binding.pry
    user_input = gets.chomp
      while user_input == nil || !(1..9).include?(user_input.to_i)
      puts "invalid"
      user_input = gets.chomp
      end 
    binding.pry
      if valid_move?
        @board.update(user_input, player_1)
        @board.display
      end 
    
#    @board.position(index # this method will check if the position is empty - if it is empty, player can place token there
#    @board.update(index, player)
#    @board.display
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 