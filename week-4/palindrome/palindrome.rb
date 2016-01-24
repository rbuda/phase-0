def is_palindrome?(word)
	until word.length < 2
		# older line before first_and_last return false if word[0] != word[-1]
		return false unless first_and_last_characters_the_same?(word)
		# looking at 2nd letter from left and 2nd letter from end
		# older line before below and trim word = word[1..-2] 
		word = trim(word)
	end

	true
end

def automatic_palindrome?(word)
	word.length < 2
end

def first_and_last_characters_the_same?(word)
	word[0] == word [-1]
end

def trim(word)
	word[1..-2]
end