# write a method that determines and returns the ASCII value of a string
# that is passed in as an argument
# the ASCII string value is the sum of the ASCII values of every character
# in the string
# use String#ord to determine the ASCII value of a character

# 1. create empty variable
# 2. point variable to 3
# 3. create array of chars but delete ' ' (spaces)
# 4. iterate over array using map
# 5. each element.ord
# 6. sum the mapped array

# examples: 

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

def ascii_value(string)
  string.chars.map(&:ord).sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
