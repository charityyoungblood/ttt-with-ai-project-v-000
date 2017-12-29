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
    winning_combo.all? { |index| @board[index] == "X" } ||
    winning_combo.all? { |index| @board[index] == "O" }
     end
    
  end 
  
  
  
  def over? 
    won?(board) || draw?(board) || full?(board)
  end 

#  def board # this method should return an empty array
#    @board 
#  end 
#  
end 