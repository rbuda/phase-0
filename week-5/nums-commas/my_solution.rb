# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

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

def separate_comma(num)
	# Change number to a string
	num = num.to_s
	# Create an array with each number as an object, reverse order of array
	array = num.chars.reverse
	# Create arrays within the array in groups of 3. 
	array = array.each_slice(3).to_a
	# Join each array within THE ARRAY, and put a comma between, reverse order back
	array = array.map { |x| x.join }.join(",").reverse
end

# separate_comma(1000000)

# 2. Refactored Solution

def separate_comma(num)
	array = num.to_s.chars.reverse.each_slice(3).to_a.map { |x| x.join }.join(",").reverse
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I originally wanted to check the number's length and then add commas to it by how long it was
# couldn't get the answer to return in a string and a number less than 3 digits was getting too complicated.
# Finally thought that I could do something by organizing and moving the data aruond in an array.

# Was your pseudocode effective in helping you build a successful initial solution?
# Original pseudocode sent me down the wrong path.  Eventually wrote out a litte as I 
# was coding to help out.

# What new Ruby method(s) did you use when refactoring your solution? 
# Describe your experience of using the Ruby documentation to implement it/them 
# (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# Used .chars .slice .map .join.  Needed to make integers objects with .chars, divide array
# up with .slice, use .map method to join comma into the merged arrays.  .chars took me the longest
# since there weren't examples of how to use it in Ruby docs.

# How did you initially iterate through the data structure?
# By counting number of digits within each number.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I don't.  It's basically my initial solution huddled up on one line.  Would have trouble
# reading it if I hadn't done this exercise before.

# ........FAILED ATTEMPT #1.........
# def random_num(min, max)
#    $num = rand(max - min + 1) + min
#    return $num
# end
# random_num(100, 999)
# def seperate_comma(num)
# 	num1 = num.to_s
# 	if num1.length >= 7
# 		num2 = num1.gsub(/(\d)(?=\d{3}+(\.\d*)?$)/,'\1,')
# 		puts num2
# 	elsif num1.length >= 4 
# 		num2 = num1.gsub(/(\d)(?=\d{3}+(\.\d*)?$)/,'\1,')
# 		puts num2
# 	else num1.length < 3 
# 		# num2 = num1.gsub(/(\d)(?=\d{3}+(\.\d*)?$)/,'\1,')
# 		puts num2
# 	end
# end
# ........ATTEMPT #1.........