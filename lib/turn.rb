def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[(position.to_i-1)] == "X" || board[(position.to_i-1)] == "O" || position.to_i > 10 || position == "invalid"
    false
  else
    true
  end
end

def valid_move?(board, position)
  if position_taken?(board, position) == true
    true
  else
    false
end
end

def move(board, position, char = "X")
  board[position.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    then move(board, position, char = "X")
    else
      turn(board)
end
    puts display_board(board)
  end
