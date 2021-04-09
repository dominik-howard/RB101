NUM_ALPHA = ("A".."Z").to_a + ("a".."z").to_a + (0..9).to_a

def real_palindrome?(string)
  string = string.chars.keep_if do |letter|
    NUM_ALPHA.include?(letter)
  end.join
  string.downcase == string.downcase.reverse
end

# p real_palindrome?("dominik!!!")

p real_palindrome?('madam')
p real_palindrome?('Madam')        
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653') 
p real_palindrome?('123ab321')

# write another method that returns true if argument is a palindrome
# false if otherwise
# this time, method should be case-insensitive
# and ignore all non-alphanumeric characters