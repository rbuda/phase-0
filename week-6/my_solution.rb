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
  	if labels == []
  		raise ArgumentError.new("ArgumentError")
  	end
  	@sides = labels.length
  	@labels = lables
  end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

  def sides
  	@sides
  end

# still returns the number of sides, in this case 6

  def roll
  	# rand = ("A".."F")
  	random_index = rand(1..@sides)
    return @array[(random_index - 1)]
  	# die = Die.new[]
  	# die << random_letter
  end
end

# returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly


# Refactored Solution






# Reflection