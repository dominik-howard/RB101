# write a method that takes one argument, a positive integer
# and returns the sum of its digits

# Examples: 
# 
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# tests above should print to true

# for a challenge, try writing this without any basic looping constructs
# such as loop, while, until, each

def sum(number)
  new_number = 0
  number.to_s.split("").each do |x|
    new_number += x.to_i
  end
  new_number
end



puts sum(23) 
puts sum(496) 
puts sum(123_456_789) 