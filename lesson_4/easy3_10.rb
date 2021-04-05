# write a method that returns true if its integer argument
# is palindromic, false otherwise
# palindromes read the same forwards and backwards

# examples:
# 
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

p palindromic_number?(34543) 
p palindromic_number?(123210)
p palindromic_number?(22) 
p palindromic_number?(5)
p palindromic_number?(0055445500)