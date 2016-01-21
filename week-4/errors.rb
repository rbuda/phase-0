# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? errors.rb
#
# 2. What is the line number where the error occurs? 166
#
# 3. What is the type of error message? syntax error
#
# 4. What additional information does the interpreter provide about this type of error? 
# Unexpected end of-input, expecting keyword_end
#
# 5. Where is the error in the code? no end tag provided with the "while" loop
#
# 6. Why did the interpreter give you this error? Scans until it sees and end.  Will look
# all the way down to the last line for it.

# --- error -------------------------------------------------------

# south_park = "Simple Colorado Town"

# 1. What is the line number where the error occurs? 37
#
# 2. What is the type of error message? in '<main>'
# 
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main:Object (NameError)
# 
# 4. Where is the error in the code? south_park isn't assigned a value to make it a variable
# or wrote as a method to give it actionable code.
#
# 5. Why did the interpreter give you this error? Doesn't know what to do with south_park
#

# --- error -------------------------------------------------------

# def cartman(insult)
# 	puts "Fah Q Ky'le"
# end

# 1. What is the line number where the error occurs? 54
#
# 2. What is the type of error message? in '<main>'
#
# 3. What additional information does the interpreter provide about this type of error?
# undefined local method 'carman' for main:Object (NoMethodError)
# 
# 4. Where is the error in the code? no def label before the method to let interpreter know
# cartman is a method and needs an end tag or same problem in example number 2 will happen.
# 
# 5. Why did the interpreter give you this error? doesn't know what to do with a word and
# an arguement with it.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase

# 1. What is the line number where the error occurs? 77
#
# 2. What is the type of error message? in 'cartmans phrase'
#
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0) (Arguement Error)
# 
# 4. Where is the error in the code? line 77 trying to send in an argument when method
# has a pre-programmed phrase when called on.
#
# 5. Why did the interpreter give you this error? sending in an argument when the method
# isn't set up to take one in.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says("Fah-Q Ky'le")

# 1. What is the line number where the error occurs? 94
#
# 2. What is the type of error message? in 'cartman_says'
#
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1) (ArgumentError)
# 
# 4. Where is the error in the code? Line 98 isn't sending an argument to the method.
#
# 5. Why did the interpreter give you this error? The method is being called but no 
# argument is being sent for it to be put in the console.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Stan')

# 1. What is the line number where the error occurs? 116
#
# 2. What is the type of error message? in 'cartmans_lie'
#
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2) (ArgumentError)
# 
# 4. Where is the error in the code? The method needs 2 arguments sent in instead of 1.
#
# 5. Why did the interpreter give you this error? Can't put anything in the console without
# a second argument or #{name}.

# --- error -------------------------------------------------------

# 5.times {puts "Respect my authoritay!"}

# 1. What is the line number where the error occurs? 136
#
# 2. What is the type of error message? in '*'
#
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum (TypeError)
# 
# 4. Where is the error in the code? Need to change syntax to repeat string 5 times.
# 
# 5. Why did the interpreter give you this error? Cannot multiply a string with an integer by
# using a multiplier.
#

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20.to_f/0.to_f

# 1. What is the line number where the error occurs? 153
#
# 2. What is the type of error message? in '/'
#
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0 (ZeroDivisionError)
# 
# 4. Where is the error in the code? Need to change the numbers to floats to be able to 
# calculate a number that isn't going to be a whole number.
#
# 5. Why did the interpreter give you this error? Can't divide whole numbers when the answer
# isn't a whole number.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs? 170
#
# 2. What is the type of error message? in 'require_relative'
#
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- (file path../)
# 
# 4. Where is the error in the code? Need to have an actual file and in same directory to link.
#
# 5. Why did the interpreter give you this error? No file to link to errors.#!/usr/bin/env ruby -wKU
#