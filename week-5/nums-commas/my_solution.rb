# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# 0. Pseudocode

# What is the input? random number between min and maximum values given in an argument
# What is the output? should return a number with commas every 3 decimals
# What are the steps needed to solve the problem?
# Calculate random number
# Count number of digits in integer
# IF number is smaller than 4 digits it gets no comma
# IF a number is 4,5,6 digits gets one comma
# ELSIF a number is 7,8 digits gets two commas

# 1. Initial Solution
def random_number(min, max)
	num = rand(min..max)
	return num
	if num >= 7
		return num
	else num.size >= 4
		return num
	elsif num.size < 3
		return num
	end
end

random_number(0, 999)

# 2. Refactored Solution




# 3. Reflection