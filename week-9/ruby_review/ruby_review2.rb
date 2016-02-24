# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# Multiples of 3 should be replaced with the string "Fizz"
# Multiples of 5 should be replaced with the string "Buzz"
# Multiples of 15 should be replaced with the string "FizzBuzz"

# super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
# super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
# super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]

# super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]


# # Initial Solution

def super_fizzbuzz(array)
  array.map! do |num|
    if num % 15 == 0
      num = "FizzBuzz"
    elsif num % 5 == 0
      num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    else 
      num
    end 
  end
  return array
end

# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |num|
    string = ''
    string += "Fizz" if num % 3 == 0
    string += "Buzz" if num % 5 == 0
    string.length > 0 ? string : num
  end
  return array
end

# Reflection