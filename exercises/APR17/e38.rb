# write a method that reutns true if the passed string as an argument
# is a palindrome, false otherwise
# a palindrome reads the same forward and backward
# case matters as does punctuation and spaces

# examples: 

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1,2,3,2,1])
p palindrome?(['i','e','i','o'])