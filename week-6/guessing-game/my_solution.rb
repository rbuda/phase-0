# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Your GuessingGame class should be initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.

# In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory. 


class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > answer
  		:high
  	elsif @guess < answer
  		:low
  	else @guess == answer
  		:correct
  	end
  end

  def solved(guess)
  	
  end
  
end




# Refactored Solution






# Reflection