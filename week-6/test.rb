class BingoBoard

numbers = [[1..20],[21..40],[41..60],[61..80],[81..100]]
letters = ["B", "I", "N", "G", "O"]

	def letternum
		@sel_let = letters.shuffle.sample
		return @sel_let
		def numbers(sel_let)
		  if @sel_let == "B"
		    @num = rand(numbers[0][0])
		  elsif @sel_let == "I"
		    @num = rand(numbers[1][0])
		  elsif @sel_let == "N"
		    @num = rand(numbers[2][0])
		  elsif @sel_let == "G"
		    @num = rand(numbers[3][0])
		  else @sel_let == "O"
		    @num = rand(numbers[4][0])
		  end
		  return @num 
		end
	end
end


new = BingoBoard.new
puts "#{@num}"
puts "#{@sel_let}"