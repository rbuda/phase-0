# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.empty?
  	nil
  else
  	count = 1
  	actual_longest_string = list_of_words[0]
  	longest_string = list_of_words[0].length
  	while count < list_of_words.length
  		if longest_string < list_of_words[count].length
  			longest_string = list_of_words[count].length
  			actual_longest_string = list_of_words[count]
  			count += 1
  		else
  			count += 1
  		end
  	end
  	actual_longest_string
  end
end


# Refactor
# def longest_string(list_of_words)
# 	list_of_words.max_by{|x| x.size} OR
# 	list_of_words.max { |x,y| x.size <=> y.size}
# end

