# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
  if list_of_words.empty?
  	return nil
  else
  	count = 1
  	shortest_string = list_of_words[0].length
  	actual_string = list_of_words[0]
  	while count < list_of_words.length
  		if shortest_string > list_of_words[count].length
  			shortest_string = list_of_words[count].length
  			actual_string = list_of_words[count]
  			count += 1
  		else
  			count += 1
  		end
  	end
  		actual_string
	end
end

# def shortest_string(list_of_words)
# 	list_of_words.min_by{|x| x.size} OR
# list_of_words.min { |x,y| x.size <=> y.size} OR
# list_of_words.sort_by(&:length)[0] OR
# list_of_words.sort_by{|x| x.length}[0] OR
# end
