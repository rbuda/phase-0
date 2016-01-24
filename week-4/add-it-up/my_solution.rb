# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array_1 & array_2 
# Output: expected integer & method
# Steps to solve the problem. 
# set variable x=0
# each array item added up and stored to n
# x + n stored for new variable x
# returned x


# 1. total initial solution

# def total(array)
# 	x = 0
# 	array.each do |n|
# 		x+=n
# 	end
# 	return x
# end

# 3. total refactored solution

# def total(array)
# 	(array).inject { |sum, n| sum + n }
# end

# def total(array)
# 	# array.reduce(:+)
# end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: first & second sentence arrays
# Output: Sentences
# Steps to solve the problem.
# set method with array word value
# create variable one_sentence with a blank a value
# call each word in array to one sentence variable with a ' ' between each word
# turn all y values to strings
# used chop! to delete empty space at end of "All my socks..." string
# capitalized beginning of sentence
# ended sentence with a '.'
# returned total sentence string

# 5. sentence_maker initial solution

# def sentence_maker(word)
#  	one_sentence = ''
#  	word.each do |y|
#  		one_sentence+= y.to_s + ' '
#  	end
# 	one_sentence.chop!
#  	one_sentence.capitalize!
#  	one_sentence += '.' 
#  	return one_sentence
# end

# 6. sentence_maker refactored solution

# def sentence_maker(word)
# 	word.join(' ').capitalize + "."
# end
