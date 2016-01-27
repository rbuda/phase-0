# Pad an Array

# I worked on this challenge [with: a majority of the Sealions]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
# What is the output? (i.e. What should the code return?) 
# What are the steps needed to solve the problem?

# What is the input? 
# What is the output? (i.e. What should the code return?) 
# What are the steps needed to solve the problem?

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

arr1 = [1,2,3,4,5,6]
pad!(arr1, 10, 5)


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

arr1 = [1,2,3,4,5,6]
pad(arr1, 10, 5)

# 3. Refactored Solution



# 4. Reflection