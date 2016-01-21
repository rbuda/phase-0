# Calculate a Grade

# I worked on this challenge [with Luis Ybarra].


# Your Solution Below


# def get_grade(grade)
# 	if grade >= 90
# 		return "A"
# 	elsif grade >= 80
# 		return "B"
# 	elsif grade >= 70
# 		return "C"
# 	elsif grade >= 60
# 		return "D"
# 	else 
# 		return "F"
# 	end
# end

def get_grade(grade)
	case grade
		when 90..100 then "A" 
		when 80...90 then "B" 
		when 70...80 then "C" 
		when 60...70 then "D" 	
		else "F" 	
	end
end