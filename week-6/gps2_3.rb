# Your Names
# 1) Luis Ybarra
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # Menu of Baked Goods for DBC Bakery
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # Error Check 

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} Not Found")
  end

  # End Error Check

  # Calculate Serving Size
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  baked = num_of_ingredients / serving_size
  
  suggested_baked_good = ""
  
  return_string = "Calculations complete: Make #{baked} of #{item_to_make}"
  
  # Check remaining ingredients
  if remaining_ingredients == 0
    return return_string
  elsif remaining_ingredients >= 5
    suggested_baked_good = "cake"
    return return_string + ", you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_baked_good}"
  else
    suggested_baked_good = "cookie"
    return return_string + ", you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_baked_good}"
    return remaining
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 13)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# Breaking into sections is easier.  Setting variables versus calculations within a #{}.

# Did you learn any new methods? What did you learn about them?
# I had to look up the .values_at? method as it's a little old an outdated.  Also found it as an easy way to return a key as an array

# What did you learn about accessing data in hashes? 
# Echo the statement above.  Easier to set variables than iterating through hash in if statements.

# What concepts were solidified when working through this challenge?
# Raising ArgumentErrors if and case stmts

