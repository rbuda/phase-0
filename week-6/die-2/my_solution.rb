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
  	if labels.empty?
  		raise ArgumentError.new("ArgumentError")
  	end
    @labels = labels
  	@sides = labels.length
  end

  def sides
  	@sides
  end

  def roll
  	@labels[rand(@sides)]
  end
end

# Refactored Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("ArgumentError")
    end
    @labels = labels
    @sides = labels.length
  end

  attr_reader:sides

  def roll
    @labels[rand(@sides)]
  end
end

# Reflection