# Name Challenge

puts "What is your first name?"
first = gets.chomp.capitalize
puts "What is your middle name?"
middle = gets.chomp.capitalize
puts "What is your last name?"
last = gets.chomp.capitalize

puts "Great to meet you " + first + " " + middle + " " + last + ". I like that name!"

# Bigger, Better Favorite Number

puts "What is your favorite number?"
number = gets.chomp
numberplus1 = number.to_i + 1

puts "That\'s a great number but have you thought about " + numberplus1.to_s + "?"

# Reflect: 

# How do you define a local variable? A variable is defined by a name and setting this name equal to
# a string in "" or ''.  Can also assign a variable to a number or integer which doesn't require
# quotes unless you want that integer to be treated like a letter of the alphalbet with no numeric
# value assigned to it.  The variable's name has to start in lower case and cannot be a symbol.

# How do you define a method? A method is declared with def and then the method name.  Also, in 
# the same row, is the word end which closes the method and its' contents.  The lines between
# def and end will have what the method is supposed to do.

# What is the difference between a local variable and a method? A local variable has a value or 
# attribute tied to it that is stored for when the variable is called.  A method is going to take
# in an arguement or do something when the method is called.  A method is more of an action item
# and a variable is a way of storing a statement or number with a word.

# How do you run a ruby program from the command line? ruby file_name.rb

# How do you run an RSpec file from the command line? rspec file_name.rb

# What was confusing about this material? What made sense? Watching the Introduction to RSpec video
# made this so much easier.  I would almost make it mandatory versus optional.  Learning the what
# will appear with puts, prints & p is essiential to getting no error messages in some parts.