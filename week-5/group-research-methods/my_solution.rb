# Research Methods

# I spent [] hours on this challenge.

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 3

def my_array_sorting_method(source)
  order = []
  order = source.sort_by { |x| x.to_s}
  return order
end

def my_hash_sorting_method(source)
  order =[]
  order = source.sort_by { |key,value| value }
  return order
end

# my_array_sorting_method(i_want_pets)
# my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# used sort_by method only. Examines the array and hashes passed in arg
# and puts in order that is defined in brackets.  (Explained more below)
#


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Using the array/hash.sort_by is an easy way to return values into an array
# For the my_array method, I created a new array to return the results to and 
# used the .sort_by on the source. I told it to look at x and organize it
# with strings last.  If you change to_s to to_i strings will be first and then 
# integers.  The hash method was actually a lot easier.  It's code is almost the
# same except I gave it the command to look at both key & values and sort the 
# array by lowest to highest values. It put each key-value pair in it's own array
# by default.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# 
# I think I got lucky as I toyed around with different sort_by functions to land where
# I did.  I spent more time trying to lose the order = [] line and squeeze it in the line
# below it.
#