# write a method that takes one integer argument, which may be positive
# negative, or zero
# this method returns true if the number's absolute value is odd
# assume argument is a valid integer value

# Examples: 
# 


def is_odd?(integer)
  integer.abs.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true