class NameData
	attr_accessor :name

	def initialize
		@name = "Ryan Nebuda"
	end
end

class Greetings
	def initialize
		@human = NameData.new
	end

	def hello
		puts "Hello #{@human.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello