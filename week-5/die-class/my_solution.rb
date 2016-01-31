# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: number between 1 & 6. Error or non error of the argument
# Steps: initialize needs to have an error if sides is less than 1, return if greater
# sides needs to set an instance var for sides
# roll needs to generate a number between 1..6

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
  	if sides < 1
  		raise ArgumentError.new("ArgumentError")
  	else sides > 1
  		return
  	end
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1  
  end
end

# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("ArgumentError")
    end
  end

  attr_reader :sides

  def roll
    rand(@sides) + 1  
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one?
# An ArgumentError is when an argument being passed to the method doesn't have enough or too many arguments in the command.  Alerts the user that the method cannot run unless changed.  You would want to use one to alert the user to change the input to get the code to run.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# Added the rand(@sides) + 1 for the first time.  Rand(5) reads like 0...5 meaning you cannot get 5 as a random number.  I needed to get 1..5 so I added 1 to get rid of zero and allow it to return 5.  Could've done rand(1..6) but decided to use instance variable.

# What is a Ruby class?
# A ruby class is a blueprint of which objects are created.  These classes are made up of methods and variables that are specific to the class.

# Why would you use a Ruby class?
# To create varibles & methods that are only attainable through that specific class and aren't tied to other classes.

# What is the difference between a local variable and an instance variable?
# Local variables are only available to a defined method. Lowercased or start with _.  
# Instance variables start with @.  Avaible across methods and change from object to object. 

# Where can an instance variable be used?
# Anywhere within a class.
