# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def largest_integer(list_of_nums)
  	high_num = list_of_nums[0]
  	count = 1
  	while count < list_of_nums.length
  		if high_num < list_of_nums[count]
  			high_num = list_of_nums[count]
  			count += 1
  		else
  			count += 1
  		end
  	end
  	return high_num
end

# Refractor
# def largest_integer(list_of_nums)
# 	highest = list_of_nums.max
# end