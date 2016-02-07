# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # create an array with letters for b-i-n-g-o
  # create an array nested with 5 arrays broken into increments of 20
  # Draw a letter at random.  When B = 1-20, I = 21-40 etc....

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  letters = ["B", "I", "N", "G", "O"]
  numbers = [[1..20],[21..40],[41..60],[61..80],[81..100]]

  def initialize(board)
    @bingo_board = board
  end

  def letternum
    @sel_let = letters.shuffle.sample
    return @sel_let
    def numbers(letters)
      if @sel_let == "B"
        @num = rand(numbers[0][0])
      elsif @sel_let == "I"
        @num = rand(numbers[1][0])
      elsif @sel_let == "N"
        @num = rand(numbers[2][0])
      elsif @sel_let == "G"
        @num = rand(numbers[3][0])
      else @sel_let == "O"
        @num = rand(numbers[4][0])
      end 
      return @num
  end
end

  def called
    if board[1] || board[2] || board[3] || board[4] || board[5].include?(@num) == true
      # slice & replace w "x"???

  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection

