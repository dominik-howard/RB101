# write a method that takes one argument, a string containing
# one or more words, and returns the given string with words
# that contain five or more characters reversed
# each string will consists of only letters and spaces

# test case
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

def test(string)
  string.split(" ").map do |word|
    if word.length > 4
      word.reverse
    else
      word
    end
  end.join(" ")
end

str = "Walk around the block"

p test(str)