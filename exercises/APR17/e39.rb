# write another method that returns true if the passed string
# is a palindrome, false otherwise
# this time method should be case in-sensitive
# ignore all non-alphanumeric characters

# Examples: 

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

ALPHANUM = (0..9).to_a + ('a'..'z').to_a + ('A'..'Z').to_a

def palindrome?(string)
  string == string.reverse
end

# 1. convert string to array
# 2. iterate over array
# 3. return array of only alphanum and downcase
# 4. convert array to string
# 5. run string thru original method

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?('Madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false