# Pad an Array

# I worked on this challenge [with: Rokas Simkonis & Dan Heintzelman]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# What is the input? 
# array & long_array

# What is the output? 
# should return that it is an array and long_array
# equals 30 total integers

# What are the steps needed to solve the problem?
# IF the length of the array is greater than or equal to the min_size arg return the array
# ELSE set diff var for min_size minus array's length
# create new var to form new array with diff var and value arg
# join array and append arrays



# What is the input? all arrays and arguements

# What is the output? 
# What are the steps needed to solve the problem?
# duplicate array into new var, outside of method
# IF new array's length is greater than or equal to min_size arg return new array
# ELSE create new diff var equal to min_size arg minus new array's length
# create append var equal to new array with diff var and value arg
# join new duplicate array to new append array

# 1. Initial Solution
def pad!(array, min_size, value = nil)
	if array.length >= min_size
		return array
	else
		diff = min_size - array.length
		append = Array.new(diff, value)
		array.concat(append)
	end
end

# arr1 = [[1,2,3] * 10]
# pad!(arr1, 30, "apple")

def pad(array, min_size, value = nil) 
	new_a = array.dup
	if new_a.length >= min_size
		return new_a
	else
		diff = min_size - new_a.length
		append = Array.new(diff, value)
		new_a.concat(append)
		return new_a
	end
end

# arr1 = [1,2,3,4,5,6]
# pad(arr1, 10, 5)

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# We seemed to do better jumping in with the code and pseudoing our problematic spots.
# 
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# We were.  Wasn't easy with 2 navigators and one driver.  There were many times when the group had 3 ideas about how to finish the problem.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our ELSE statements took the longest.  Weren't sure about concat vs push.  Also took awhile to figure out to .dup the array vs clone.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# Did not find any shortcuts to simplifier our intial solution.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# The else part is a little confusing but I thought our var names were straight forward.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive is going to change the original variable versus non-destructive can set a new, different variable or return a different set only within a method.


