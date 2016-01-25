
# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def smallest_integer(list_of_nums)
	if list_of_nums.empty?
  		return nil
  	else
  	low_num = list_of_nums[0]
  	count = 1
  	while count < list_of_nums.length
  		if low_num > list_of_nums[count]
  			low_num = list_of_nums[count]
  			count += 1
  		else
  			count += 1
  		end
  	end
  	return low_num
  end
end

#Refactor 
# def smallest_integer(list_of_nums)
# 	lowest = list_of_nums.min
# end