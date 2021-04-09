# write a method that takes one integer argument, which can be pos/neg/zero
# this method returns true if the number's abs value is odd
# assume that the argument is a valid integer value

# Examples: 
# 
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

def is_odd?(number)
  number.abs % 2 != 0
end

puts is_odd?(2)  
puts is_odd?(5)   
puts is_odd?(-17) 
puts is_odd?(-8) 
puts is_odd?(0)  
puts is_odd?(7)    