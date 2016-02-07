#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: new variable greet and .hello method.
# Output: String in hello method.
# Steps: set up method to return string with name.
# create initialize method to kick up to NameData and retrive name for hello string.
# create instance var in initialize with new instance class.
# create attr :name
# initalize method with instance var stored

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

# Reflection

#### Release 1: ####
# What are these methods doing?
# initialize - sets initial values to variables that will be printed first and sets values put in the attr_readers for age, name & occ.
# what_is_age - attr_reader for age instance var
# what_is_occupation - attr_reader for occ instance var
# what_is_name - attr_reader for name instance var
# change_my_age & change_my_name & change_my_occupation - attr_writers that take in args for new instance class.  Change instance vars for class.

# print_info - when called will print latest instance variables

# How are they modifying or returning the value of instance variables? Changed in the writers by setting instance varss = new arg.  THe instance var is changed throughout the class.

#### Release 2: ####

# What changed between the last release and this release? attr_reader :age replaced def what_is_age.

# What was replaced? the what_is_age method got condensed down to an attr_reader.

# Is this code simpler than the last? Yes.

#### Release 3: ####

# What changed between the last release and this release? the change_my_age method is now and attr_writer..

# What was replaced? the def change_my_age

# Is this code simpler than the last? yes

#### Release 6: ####

# What is a reader method? shorter way of writing a method for an instance variable to be stored.  Returns it and doesn't write a new one.

# What is a writer method? shorter way of writing a method that takes in an arg and changes the instance variable. 

# What do the attr methods do for you? Make the code easier to read. Makes working with classes much easier.

# Should you always use an accessor to cover your bases? Why or why not? An accessor will always look to do the reader command first and then the writer.  If you're only looking to do a writer than it could possible get held up.  

# What is confusing to you about these methods?  They're just new.  I've read the Rubyist chapter on attr's twice and it's just a complicated new subject.  I can see their importance working with classes.

