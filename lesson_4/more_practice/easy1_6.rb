# write a method that takes one argument, a string containing one
# or more words
# and returns the given string with words that contain five
# or more characters reversed
# each string will consists of only letters and spaces
# spaces should be included only when more than one word is present

# Examples: 
# 
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
  string.split.each do |word|
    word.reverse! if word.length > 4
  end.join(" ")
end

puts reverse_words('Professional')          
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')