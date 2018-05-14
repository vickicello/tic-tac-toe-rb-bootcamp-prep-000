WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]
  
  def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(boardArray, index, value = "X")
  boardArray [index] = value
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif !(index.between?(0, 8))
    false
  else 
    true
 end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
     turn(board)
   end
end

def turn_count(board)
  counter = 0
  board.each do |board|
    if board == "X" || board == "O"
      counter += 1
    end
 end
counter
end

def current_player(board)
  turn_count(board).even? ?  "X":"O"
end
  

