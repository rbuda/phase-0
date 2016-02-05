# Build a simple guessing game

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 
# answer
# guess 

# Output:
# Symbols for high, low & correct
# Change :solved? sym when correct to show true
# 

# Steps:
# initialize method needs to have a single arg. Set instance var answer = answer
# guess receives single argument
# guess returns sym high if high (100?)
# guess returns sym low if low (0?)
# guess returns correct if answer (10?)
# incorrect guesses keep :solved? false
# once guess is correct.  change :solved? from false to true.

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else @guess == @answer
  		return :correct
  	end
  end

  def solved?
  	if @guess == @answer
      return true
    else 
      return false
    end
  end 
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_guess = nil
  end

  def guess(guess)
    if guess > @answer
      @last_guess = :high
    elsif guess < @answer
      @last_guess = :low
    elsif guess == @answer
      @last_guess = :correct
    end
    return @last_guess
  end

  def solved?
    @last_guess == :correct ? (return true) : (return false)
  end 
end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object? 
# Real world objects are going to have a class of behaviors or methods that they do.  They will each have their own specific demographics that are applied only to them (instance vars).

# When should you use instance variables? What do they do for you?
# Store info into a var only for that instance of the class.  If you had a class Soldiers and @name = Tom.  The particular soldier is named Tom of the class Soldiers.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# The if else stmts made it easier to flow through the solution.  Struggled with wanting to have solved? changed in the guess method versus solved?

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are good for when the user doesn't want something to be altered.  You can create a new symbol but not change one.  Not having this altered at runtime is an advantage and they allow the code to run quicker.
