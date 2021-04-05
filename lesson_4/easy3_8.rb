# write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise
# a palindrome reads the same forwards and backwards
# case mattersa as does punctuation and spaces

# examples: 
# 
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(str)
  str == str.reverse
end

p palindrome?([1,2,3,2,1])
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')