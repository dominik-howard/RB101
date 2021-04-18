# write a method that takes one argument, a string
# and returns the given string
# with words that contain five or more characters reversed
# each string will consist of only letters and spaces
# spaces should be included only when more than one word is present

# examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
  string.split.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
