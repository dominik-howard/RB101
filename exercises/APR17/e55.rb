# 1. create constant of alpha numeric characters
# 2. split the string by !constant

# given a string that consists of some words (all lowercased)
# and an assortment of non-alphabetic characters
# write a method that returns that string with all of the non-alphabetic
# characters replaced by spaces
# if one or more non-alphabetic characters occur in a row, you should
# only have one space in the result
# (the result should never have consecutive spaces)

# examples: 

# cleanup("---what's my +*& line?") == ' what s my line '

# 1. create array of alphabetic characters (lowercase)
# 2. iterate through string, by each letter
# 3. if array doesn't include letter, replace letter iwth space
# 4. squeeze?

ARRAY = ("a".."z").to_a

def cleanup(string)
  string.chars.map do |char|
    if ARRAY.include?(char) != true
      char = " "
    else
      char
    end
  end.join.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '