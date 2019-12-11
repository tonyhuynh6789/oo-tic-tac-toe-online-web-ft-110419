class TicTacToe

def initialize 
  @board = Array.new(9, " ")
end   


WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ]


def display_board 
puts  " #{@board[0]} | #{@board[1]} | #{@board[2]} "
puts  "-------------"
puts  " #{@board[3]} | #{@board[4]} | #{@board[5]} "
puts  "-------------"
puts  " #{@board[6]} | #{@board[7]} | #{@board[8]} "
puts  "-------------"
end 


def input_to_index(input)
  input.to_i - 1
end 


def move(index, current_player = "X")
  @board[index] = current_player
end 


def position_taken?(index)
<<<<<<< HEAD
   @board[index] == "X" || @board[index] == "O"
=======
  if @board[index] == "X" or @board[index] == "O"
    true
  else
    false
  end 
>>>>>>> a705b8e7e607248c35b39a778233135bfa2e7e8d
end 


def valid_move?(index)
<<<<<<< HEAD
   index.between?(0,8) && !position_taken?(index)
end 


def turn_count 
  @board.count {|x| x == "X" || x == "O"}
end 


def current_player
  if turn_count.even?
    "X"
  else
    "O"
  end 
end 


def turn 
  input = gets.chomp
  translated = input_to_index(input)
    if valid_move?(translated)
      move(translated,current_player)
      display_board
    else
      input = gets.chomp
    end
end 


def won?
  a = WIN_COMBINATIONS.find {|combo|
    @board[combo[0]] == "X" && @board[combo[1]] == "X" && @board[combo[2]] == "X"
  }
  b = WIN_COMBINATIONS.find {|combo|
    @board[combo[0]] == "O" && @board[combo[1]] == "O" && @board[combo[2]] == "O"
  }
  a || b
end 
=======
  if 



end 


>>>>>>> a705b8e7e607248c35b39a778233135bfa2e7e8d


def full?
  @board.all? {|x| x == "X" or x == "O"}
end 


def draw?
  full? && !won? 
end


def over?
  full? || won?
end 


def winner 
if won?
  @board[won?[0]]
end 
end 


def play
  until over?
    turn 
  end 
    if won?
      "Congratulation"
    elsif draw?
      "it is ended in draw"
    end 
end 

end 







