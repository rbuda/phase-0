cohort = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

def create_groups(cohort)
  if  cohort.length % 5 == 0
  	counter = 1
    hash = Hash.new(0)
    count = cohort.length / 5
    modulus = cohort.length % 5

    count.times  do
    hash[counter] = cohort.slice!(0..3)
    counter += 1
    end
  else
    counter = 1
    hash = Hash.new(0)
    count = cohort.length / 4
    modulus = cohort.length % 4

    count.times  do
    hash[counter] = cohort.slice!(0..3)
    counter += 1
    end
  end
  counter = 1   #Iterate through leftovers and push values into hash
  cohort.each do |string|
    hash[counter] << string
    counter += 1
  end
return hash
end

group_hash = create_groups(cohort)

group_hash.each do |key,value|
 puts "Group " + key.to_s + " is:"
 puts value
 puts

end

# 3 Refactor

# def create_groups(cre)
#   cohort_new = cohort.dup  # Add this code in to make this non destructive
#   if  cohort_new.length % 5 == 0
#   else
#     counter = 1
#     hash = Hash.new(0) # Create a new hash with default value of 0

#     group_count = cohort_new.length / 4  # Determine group count for groups of 4
#     group_count.times  do            # Create new groups with the key of counter value
#     hash[counter] = cohort_new.slice!(0..3)
#     counter += 1
#     end
#   end
#   counter = 1   #Iterate through leftovers and push values into hash
#   cohort_new.each do |string|
#     hash[counter] << string
#     counter += 1
#   end
# return hash
# end

#   group_hash = group_create(cohort)

#   group_hash.each do |key,value|
#     puts "Group #{key} is:"
#     puts value
#     puts

# end
