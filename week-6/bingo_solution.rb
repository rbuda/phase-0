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
  # iterate through nested data to see if board matches number called (instance var)
  # if it does set instance var to go to 

# If the number is in the column, replace with an 'x'
  #iterate through array looking for number to match random number
  # If it does match put X in with number

# Display a column to the console
  #puts board after each call

# Display the board to the console (prettily)
  #Display number with board
  # call bingo_board with eadh array and rows. 

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def letternum
    letters = ["B", "I", "N", "G", "O"]
    @sel_let = letters.shuffle.sample
    numbers = [[1..20],[21..40],[41..60],[61..80],[81..100]]
      if @sel_let == "B"
        @num = rand(numbers[0][0])
        puts "B#{@num}"
      elsif @sel_let == "I"
        @num = rand(numbers[1][0])
        puts "I#{@num}"
      elsif @sel_let == "N"
        @num = rand(numbers[2][0])
        puts "N#{@num}"
      elsif @sel_let == "G"
        @num = rand(numbers[3][0])
        puts "G#{@num}"
      else @sel_let == "O"
        @num = rand(numbers[4][0])
        puts "O#{@num}"
      end 
  end
  def called
    if @bingo_board[1] || @bingo_board[2] || @bingo_board[3] || @bingo_board[4] || @bingo_board[5].include?(@num) == true
      1.times do |i|
      if @bingo_board[i][@num] = "X"
    end
    end
  end

    puts "| #{@bingo_board[0][0]} | #{@bingo_board[0][1]} | #{@bingo_board[0][2]} | #{@bingo_board[0][3]} | #{@bingo_board[0][4]} |"
    puts "| #{@bingo_board[1][0]} | #{@bingo_board[1][1]} | #{@bingo_board[1][2]} | #{@bingo_board[1][3]} | #{@bingo_board[1][4]} |"
    puts "| #{@bingo_board[2][0]} | #{@bingo_board[2][1]} | #{@bingo_board[2][2]} | #{@bingo_board[2][3]} | #{@bingo_board[2][4]} |"
    puts "| #{@bingo_board[3][0]} | #{@bingo_board[3][1]} | #{@bingo_board[3][2]} | #{@bingo_board[3][3]} | #{@bingo_board[3][4]} |"
    puts "| #{@bingo_board[4][0]} | #{@bingo_board[4][1]} | #{@bingo_board[4][2]} | #{@bingo_board[4][3]} | #{@bingo_board[4][4]} |"
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.letternum
puts "Did you get BINGO!?"
new_game.called
solved = gets.chomp
puts "Are you ready for the next ball?"
again = gets.chomp

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style? I kept adding to it and changing what I initially thought I would need to have done.  I'm still enjoying writing code out and playing with ideas versus pseudocoding everything up front.

# What are the benefits of using a class for this challenge? need to set multiple methods to retrieve a number and put the board in the console.  Classes make doing this easier.

# How can you access coordinates in a nested array? By having the first [] as the nested array you want to be in and then the number following that is the object within the array.  

# What methods did you use to access and modify the array? .shuffle & .sample

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called? Didn't review a new method.

# How did you determine what should be an instance variable versus a local variable? Whatever I needed to call all accross the class was an instance and whatever I needed for just a particular method was a local.

# What do you feel is most improved in your refactored solution?
# I didn't figure out much of any ways to refactor mine.  Very interested to see what others did for this exercise.
