class Plant

	@@tallest = nil

	def initialize(name, height)
		@name = name
		@height = height
		check_for_tallest
	end

	attr_reader :height
	# def height
	# 	@height
	# end

	def inspect
		"#{@height}-inch-tall #{@name}"
	end

	def grow(inches)
		@height += inches
		check_for_tallest
	end

	def self.tallest
		@@tallest
	end

	private 
	# Methods after "private" are only availabe from within the class

	def check_for_tallest
		if @@tallest.nil? || @height > @@tallest.height
			@@tallest = self
		end
	end

end