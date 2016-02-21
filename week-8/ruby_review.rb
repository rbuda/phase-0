# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [1.5] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # This takes the input string below and changes all letters to lowercase, puts into an array, and seperates each indexed value in array that has a space or "splits" each value that has a space.
  decoded_sentence = [] #creates decoded_sentence array
  cipher = {"e" => "a",   ### This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   ### the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # this is iterating through each x value of the hash
    found_match = false  # Need to create a variable and need each character to go through cipher.each_key until it finds a match within the if/else stmts.  
    # When set to true it doesn't add any of the numbers or .'s or ?'s.
    cipher.each_key do |y| # iterating through the hashes y values that correspond to the x values.
      if x == y  # Compares x value from code below to assigned y value in cipher hash.
        decoded_sentence << cipher[y]
        found_match = true
        break  # ending the loop with a break keyword.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # If any of these characters are in the string they are replaced with a blank space or " ". 
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # This creates an array with 0 up to and including 9 as indexed values.
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # If the character doesn't match any of the hash x values above, the character is added to the coded sentence without being translated or changed.  This keeps numbers, ., ?'s the same.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  # This joins each character together to form a string of sentences versus strings of individual characters.
end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  decoded_sentence = ""
  cipher = ('a'..'z').to_a
  spaces = ["@", "#", "$", "%", "^", "&", "*", "\n"]
  coded_message.downcase.each_char do |char|
    if spaces.include? char
      decoded_sentence << " "
    elsif cipher.include? char
      decoded_sentence << cipher[cipher.index(char) - 4]
    else 
      decoded_sentence << char
    end
  end
  return decoded_sentence
end 

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# What concepts did you review or learn in this challenge? .join, loops, hashes.

# What is still confusing to you about Ruby? Remembering everything is hard.  Going to just continually keep practicing exercises.

# What are you going to study to get more prepared for Phase 1? JS and ruby methods.

