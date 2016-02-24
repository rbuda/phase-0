# Method take in a number
# IF 0-9 ELSIF 10-19 ELSIF 20-99 ELSE 100



def in_words(num)
  
  numbers = {1 => ["one", "ten", "eleven"], 2 => ["two", "twenty", "twelve"], 3 => ["three", "thirty", "thirteen"], 4 => ["four", "forty", "fourteen"], 5 => ["five", "fifty", "fifteen"], 6 => ["six", "sixty", "sixteen"], 7 => ["seven", "seventy", "seventeen"], 8 => ["eight", "eighty", "eighteen"], 9 => ["nine", "ninety", "ninteen"]}
  
  if (1..9).include? num
    word = numbers[num][0]
  elsif (11..19).include? num
    num -= 10
    word = numbers[num][2]
  elsif num % 10 === 0 && num != 100
    num /= 10
    word = numbers[num][1]
  elsif (20..99).include? num
    finder = num.to_s.split("")[0].to_i
    finder2 = num.to_s.split("")[1].to_i
    word = numbers[finder][1] + "-" + numbers[finder2][0]
  else 
    word = "one hundred" 
  end
  return word
end

# What concepts did you review in this challenge? spliting a number to a string and then changing back to integers

# What is still confusing to you about Ruby? not too much..  Just have to focus on data type that fits best.

# What are you going to study to get more prepared for Phase 1? JavaScript!!

