# write a method that takes two strings as arguments, determines
# the longest of the two strings, 
# and then returns the result of concatenating the shorter string,
# the longer string, 
# and the shoter string once again
# may assume that the strings are of different lengths

# Examples: 

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# 1. set two empty variables
# 2. set variables = long or shorter
# 3. output short_long_short (concatenate)

def short_long_short(s1, s2)
  s1.size > s2.size ? s2 + s1 + s2 : s1 + s2 + s1
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"