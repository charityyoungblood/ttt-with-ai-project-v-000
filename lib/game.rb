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
  
  def current_player # this method will display the 
    if board.turn_count.even? # is turn_count even or odd 
      player_1
    else 
      player_2
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
  
  def turn # this method will verify user input 
   
    current_turn = current_player.move(@board) #this calls turn on the return value from the current_player method 
      if !@board.valid_move?(current_turn)
      puts "invalid"
      current_player.move(@board)
      end 
    current_player # how do you switch to the next player?

  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 