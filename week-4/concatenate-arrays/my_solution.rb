# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  if array_1.empty? && array_2.empty?
  	final_array = []
  else
  	count = 0
  	while count < array_2.length
  		final_array = array_1.push array_2[count]
  		count += 1
  	end
  end
  return final_array
end