# write a method that takes two strings as arguments
# determines the longest of the two strings
# then returns the result of concatenating the shorter string
# the longer string
# and the shorter string once again

# examples: 
# 
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

def short_long_short(str1, str2)
  long = ""
  short = ""

  if str1.length > str2.length
    long = str1
    short = str2
  else
    long = str2
    short = str1
  end
  "#{short}#{long}#{short}"
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')