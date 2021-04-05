# write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise
# this time, the method should be case-insensitive
# and it should ignore all non-alphanumeric characters

# examples: 
# 
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false



def palindrome?(str)
  alphanum = [Array("a".."z"),Array("A".."Z"), Array("0".."9")].flatten!
  new_arr = []

  str.chars do |char|
    new_arr << char.downcase if alphanum.include?(char.downcase)
  end

  new_arr.join == new_arr.join.reverse
end

# p palindrome?([1,2,3,2,1])
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')
p palindrome?('123ab321')