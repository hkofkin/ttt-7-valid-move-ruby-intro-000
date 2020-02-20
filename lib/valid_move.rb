# code your #valid_move? method here
require 'pry'
def valid_move?(board, index)
  # binding.pry
  if board[index].between?(0, 8) == true && position_taken?(board, index) == false
    return true
  end
  if board[index].between?(0, 8) == false && position_taken?(board, index) == true
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true
  end
end
