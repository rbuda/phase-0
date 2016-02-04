# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data [:array][1][:hash] 

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

def nested(array)
	array.map! { |i| 
		if i.is_a?(Integer)
			i + 5 
		elsif i.is_a?(Array)
			i.map! { |x| x + 5}
		end
		}	
	p array
end

# nested(number_array)

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Initial:
def nested2(array)
	array.each { |x| 
		if x.is_a?(String)
			x << "ly" 
		elsif x.is_a?(Array)
			nested2(x)
		end
		} 
end

# Refactor:
def nested2(array)
	array.flatten!.each { |x| x << "ly"}
end

nested2(startup_names)

p startup_names


# What are some general rules you can apply to nested arrays?
# When you are looking for an object within an array first look to get to the array that the object is located in.  Once there, call the index number.

# What are some ways you can iterate over nested arrays?
# flatten the array to make it all one array. .each method is an easy way to go through it and setting up a loop to see if the object is a string or array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# Flatten was a good new one to work with.  The << adds to each string easier than + and setting a variable.  .map! was a useful one as well.

