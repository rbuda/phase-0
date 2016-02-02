# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: methods :initialize, :size & :roll.
# Output: 
# Steps:


# Initial Solution

class Die
  def initialize(labels)
  	die = Die.new[]
  	die << labels
  	if Die.new[].empty?
  		raise ArgumentError.new("ArgumentError")
  	else
  		return die
  	end
  end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])


  def sides
  	die.sides = length
  	return sides
  end

# still returns the number of sides, in this case 6


  def roll
  	# rand = ("A".."F")
  	die = Die.new[]
  	die << random_letter
  end
end

# returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly


# Refactored Solution








# Reflection