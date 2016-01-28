# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Dan Heintzelman ]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# What is the input? each array
# What is the output? need to find the most common integer(s) or string(s) in an array
# What are the steps needed to solve the problem?
# create a new hash 
# iterate through each array setting each integer or string as a key assigned to a value.
# start off with an intial value of 0 and add 1 to each value
# has now has keys matched up with values.  Values equal number of keys in the original array
# create values array with values added to it by iterating through the hash's values
# create max value variable equal to the maximum value(s) found
# create a new array variable
# iterate through the hash looking for value(s) that match the highest value amount(s) put in the max_value var
# push keys to a result array
# return array

# 1. Initial Solution

def mode(array)
  hash = Hash.new {|hash,key| hash[key] = 0} #creates a default value of 0 for all hash values

  array.each {|num|  #iterate through the array and count +1 for each value
    hash[num] += 1
  }

  values = [] # Declare array of all values
  hash.each do |key, value|
  values.push(value)
  end

max_value = values.max  #find the key with the maximum value
result = [] # Declare array where we return result

hash.each do |key, value|
  if value == max_value
    result.push(key)
  end
end
  return result
end

# 3. Refactored Solution

def mode(array)
  hash = Hash.new{0}
  array.each do |x|
    hash[x] += 1
  end     
  result = [] 
  hash.each { |x,y|
  if y == hash.values.max 
    result.push(x)
  end
  }
  return result
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why? we set a lot variables.  basically created a new has and 3 new arrays.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? we needed the pseudocode more for this exercise and doing it made the whold thing easier

# What issues/successes did you run into when translating your pseudocode to code? fully understanding all the different variables we were creating and why

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? .max simplifies a ton

