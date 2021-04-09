# write a method that returns true if the string
# passed is as an arguement is a palindrome
# false if otherwise
# a palindrome reads the same forwards and backwards
# for this exercise, case, punctuation and spaces matter

# Examples: 

def palindrome?(string)
  string == string.reverse!
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
