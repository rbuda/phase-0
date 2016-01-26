def create_hash(item)
  array = item.split
  defaultQuantity = 1
  groceries = {}
  array.each do |food|
  groceries[food] = defaultQuantity
  end
  return groceries
end

list = create_hash("carrots apples cereal pizza")

def add_item(item, list)
  defaultQuantity = 1
  list[item] = defaultQuantity
  return list
end

add_item("bread", list)

def delete_item(item, list)
  list.delete(item)
  return list
end

delete_item("bread", list)

def update_item(item, quantity, list)
  list[item] = quantity
  return list
end

update_item("pizza", 2, list)

def pretty_list(list)
  dots = "............"
  list.each do |item, quantity|
  x = item.length
  puts item + dots[x..12] + quantity.to_s
  end
end

pretty_list(list)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define the method
  # create a new hash - groceries = {}
  # split string to create separate words that can be turned into keys
  # set default quantity = 1
  # defaultQuantity = 1 ?

  # groceries {
  # arg1: defaultQuantity,
  # }

  # print the list to the console [can you use one of your other methods here?]
  # return the hash
# output: hash

# Method to add an item to a list
# input: item name and optional quantity (key value pair)
# steps:
#   call the hash returned from the first method
#   add arg1 as key, add arg2 as value
#   return the hash   
# output: hash with new key value pair

# Method to remove an item from the list
# input: item name
# steps:
# => call the hash
# => remove arg1 as key
# => return the hash
# output: hash with key value pair removed

# Method to update the quantity of an item
# input: item name, updated quantity
# steps:
# => call the hash
# => pass arg2 as a new value for the arg1 key
# => return the hash
# output: hash with updated value for existing key
# Method to print a list and make it look pretty
# input: hash
# steps: 
# => puts a key-value pair on a single line
# => #{key}.........#{value}
# => some string of dots "........................"
# => subtract key.length from dots.length to format key-value pair
# => iterate through hash to puts all key-value pairs
# output: list of text


# Refactored Code

groceries = {}

def create_hash(item, list)
  array = item.split
  array.each do |food|
  list[food] = 1
  end
  return list
end

create_hash("carrots apples cereal pizza", groceries)

def add_item(item, list)
  list[item] = 1
  return list
end

add_item("bread", groceries)

def delete_item(item, list)
  list.delete(item)
  return list
end

delete_item("bread", groceries)

def update_item(item, quantity, list)
  list[item] = quantity
  return list
end

update_item("pizza", 2, groceries)

def pretty_list(list)
  dots = "............"
  list.each do |item, quantity|
  x = item.length
  puts item + dots[x..12] + quantity.to_s
  end
end

pretty_list(groceries)

# Reflect

# What did you learn about pseudocode from working on this challenge? It is difficult to write without using Ruby terms
# What are the tradeoffs of using Arrays and Hashes for this challenge? Hashes are easier to send a key and value argument to. Arrays are easier
# to use when you are only sending keys and no values in.
# What does a method return? returns the code within def & end.
# What kind of things can you pass into methods as arguments? We passed key, values and what list we wanted to add to.
# How can you pass information between methods? Create variables within a method and move them outside to variables to be used on the global scope.
# What concepts were solidified in this challenge, and what concepts are still confusing? I am still struggling writing methods out the long way much 
# like exercises 4.6.  I want to just look up a simple solution and that won't teach me to do so the right way.
