hours_a_year = 24 * 365
	puts "#{hours_a_year}" " hours in a year"

minutes_decade = 60 * 24 * 365 * 10
puts "#{minutes_decade}" " minutes in a decade!" 

minutes_decade2 = (60 * 24 * 365 * 8) + (366 * 60 * 24 * 2)
puts "#{minutes_decade2}" " minutes in a decade with 2 leap years!"

minutes_decade3 = (60 * 24 * 365 * 7) + (366 * 60 * 24 * 3)
puts "#{minutes_decade3}" " minutes in a decade with 3 leap years!"



# What does puts do? The puts function will write on the screen whatever string or given function follows it.  In irb, it will write the value AND => nil below the answer.

# What is an integer? What is a float? An integer is a whole number, negative or postive and can be zero.  An integer has no decimal value.  A float or floating-point number is with a decimal.  It can be positive or negative and zero but has to have a decimal point.

# What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming? Float division is going to give an answer with a decimal and an integer will not.  A float would be exactly like what your calculator tells you when the answer isn't divided equally.  An integer will give you a whole number rounded down.  If you have $20 and want to as many candy bars as you can that cost $3/each, you would only be able to buy 6 and not 6.6666 candy bars.