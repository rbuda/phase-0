# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: methods :initialize, :size & :roll.
# Output: if empty - ArgumentError, return number of sides, return random string of labels
# Steps:
# if labels is empty raise ArgumentError
# set instance variables for labels & sides
# keep sides same from last challenge
# set roll method to return random number of sides from labels array


# Initial Solution

class Die
  def initialize(labels)
    labels = []
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


# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# the argument was labels versus sides.  Had to create an instance variable to get sides assigned a value for the sides method to work. Not too much logic. The answer for roll took me the most time.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# I need to know how to interchangeably use attr_reader/writer/accessors.

# What new methods did you learn when working on this challenge, if any?
# Used the .empty? method more than I have before.

# What concepts about classes were you able to solidify in this challenge?
# Instance variables is a newer concept I'm working to get nailed down yet

