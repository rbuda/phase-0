# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if lower_bound == upper_bound
  	return list_of_integers.length
  elsif list_of_integers.empty?
  	return 0
  else
  	count = 0
  	count_bet = 0
  	while count < list_of_integers.length
  		if list_of_integers[count] >= lower_bound && list_of_integers[count] <= upper_bound
  			count_bet += 1
  			count += 1
  		else
  			count += 1
  		end
  	end
  end
  count_bet
end