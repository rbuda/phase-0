# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [ Zach Barton & Jones Melton ].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: A 16 digit credit card number
# Output: True or false (depending on if credit card number is valid or not)
# Steps:
# 
# Define CC Class
#
# Define the initialize method:
#   Raise an argument error if CC# is not a 16 digit integer
# 	Take the argument passed into the init method and create a 16-element array
#   Explicitly convert integer to string for this split method
# 		Each element equals a single digit of the CC#
#   Create instance variable with the array   
# 
# Define a math method:
# 	Double the even indexes of our array (destructively)
# 	Iterate through the array to find and split two-digit numbers into one-digit numbers
#		Explicitly convert the even indexes to integers for the math, then put as strings for future use
# 	Split two digit STRINGS into two one-digit STRINGS and convert all to integers
#   Sum all elements of the array
#	Assign this sum to a new instance variable

# Define a check_card method:	
#  Take our sum instance variable modulo 10
#   If 0, true
#   If not zero, false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
    def initialize(number)
        unless number.to_s.length == 16 && number.is_a?(Integer)
            raise ArgumentError.new("Credit Card number needs to be a 16-digit integer")
        end
        @number = number.to_s.split("")
    end

    def math
        evens = @number.select.each_with_index { |x,y| y.even? }
        odds = @number.select.each_with_index { |x,y| y.odd? }
        evens.map! { |x| x.to_i * 2 }        
        evens.map! { |x| x.to_s.split("")}
        @number = evens.flatten + odds
        @number.map! { |x| x.to_i }
        @sum = @number.inject { |total, object| total + object}
    end

    def check_card
    	math
        @sum % 10 == 0 ? (return true) : (return false)
    end
end

# Refactored Solution

class CreditCard
    def initialize(number)
        unless number.to_s.length == 16 && number.is_a?(Integer)
            raise ArgumentError.new("Credit Card number needs to be a 16-digit integer")
        end
        @number = number.to_s.split("")
    end

    def math
		split = @number.partition.each_with_index { |digit, index| index.even? }
		split[0].map! { |number| (number.to_i * 2).divmod(10) }
		split[1].map! { |number| number.to_i }
		@sum = split.flatten.inject {|total, digits| total + digits }
	end

    def check_card
    	math
        @sum % 10 == 0 ? (return true) : (return false)
    end
end

# Reflection

# What was the most difficult part of this challenge for you and your pair? Pulling even numbers out of the array.  We had to try a couple different methods.

# What new methods did you find to help you when you refactored? .partition & .inject

# What concepts or learnings were you able to solidify in this challenge? Splitting numbers into an array.  Code block structure within the {}'s.
