cohort = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

# Input: List of names(cohort)
# Output : Groups of no less than 3, no more than 5 made from the list array cohort, ideally 4-5 per group

# Steps to complete:
# See if cohort is divisible by 5 or 4
# create a new hash
# test if group is divisible by 5 and 4
# find remainder of group when divided by 4 or 5
# go through array and assign 5 or 4 members to a key (group number)
# add one to group number for each set of 4 or 5 members
# add remaining people to groups
# print groups out with keys as group number and hashes as each member


def create_groups(cohort)
  if cohort.length % 5 == 0
    hash = {}  	
  	counter = 1
    group_count = cohort.length / 5
    remainder = cohort.length % 5 	
    # Set to groups(keys) to members(values)
    group_count.times  do
    hash[counter] = cohort.slice!(0..4)
    counter += 1
  end
  else
  	hash = {}
    counter = 1 
    group_count = cohort.length / 4
    remainder = cohort.length % 4
    # Set to groups(keys) to members(values)
    group_count.times  do
    hash[counter] = cohort.slice!(0..3)
    counter += 1
    end
  end
  # Add remainders
  counter = 1
  cohort.each do |string|
    hash[counter] << string
    counter += 1
  end
return hash
end

final_group = create_groups(cohort)

final_group.each do |x,y|
 puts "Group " + x.to_s + ":"
 puts y
 puts "................."
end

# 3 Refactor

# Didn't have success refactoring down

# 4 Reflection

# What was the most interesting and most difficult part of this challenge?
# Getting the remainder of members into a group.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes. I am writing pseudocode as I'm running into new problems and it's helping to go back to what I had and add to it.

# Was your approach for automating this task a good solution? What could have made it even better?
# My inital approach was to keep it all in an array and set arrays within an array.  Hashes were ultimately easier.

# What data structure did you decide to store the accountability groups in and why?
# Hash.  Was easier to put each member with a key that would be their group number.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# Didn't get anything out of the refactoring.  Curious what others did.


