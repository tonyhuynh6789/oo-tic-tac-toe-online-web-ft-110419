class TicTacToe
  
  
def initialize
    @board = Array.new(9, " ")
end 
  
  
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]


def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-------------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-------------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts "-------------"
end 


def input_to_index(input)
    input.to_i - 1
end 


def move(index, current_player = "X")
  @board[index] = current_player
end 


def position_taken?(index)
    if @board[index] == "X" || @board[index] == "O"
    true
    else 
    false
    end
end  


def valid_move?(index)
   if index.between?(0,8) && !position_taken?(index) 
      true
    else
      false
    end 
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


# def turn
#   input = gets.chomp
#   input_of_index = input_to_index(input)
#   if valid_move?(input_of_index)
#     move(input_of_index, current_player)
#     display_board
#   else
#     input = gets.chomp
#   end 
# end 




end 
