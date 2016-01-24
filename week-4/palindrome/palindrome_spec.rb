require_relative 'palindrome.rb'

describe "is_palindrome" do
	it "considers empty strings as palindromes" do
		expect(is_palindrome?(String.new)).to be true
	end

	it "considers one-letter words as palindromes" do
		expect(is_palindrome?("a")).to be true
	end

	it "considers two-letter words as palindromes" do
		expect(is_palindrome?("aa")).to be true
	end

	it "considers two-letter words of different characters as non-palindromes" do
		expect(is_palindrome?("ab")).to be false
	end

	it "identfies palindromes for three-letter words" do	
		expect(is_palindrome?("aba")).to be true
	end

	it "identfies non-palindromes for three-letter words" do	
		expect(is_palindrome?("abc")).to be false
	end

	it "identfies palindromes for four-letter words" do	
		expect(is_palindrome?("abba")).to be true
	end

	it "identfies non-palindromes for four-letter words" do	
		expect(is_palindrome?("abca")).to be false
	end

	it "identfies long palindromes" do	
		expect(is_palindrome?("abcdefggfedcba")).to be true
	end

	it "identfies long non-palindromes" do	
		expect(is_palindrome?("abcdefggfxedcba")).to be false
	end

end

