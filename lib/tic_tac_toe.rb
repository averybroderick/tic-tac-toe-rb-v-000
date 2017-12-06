WIN_COMBINATIONS = [
  [0,1,2], #horizontal
  [3,4,5], #horizontal
  [6,7,8], #horizontal
  [0,3,6], #vertical
  [1,4,7], #vertical
  [2,5,8], #vertical
  [0,4,8], #diagonal
  [2,4,6] #diagonal
]

def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, position, char)
  board[position] = char
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
