# write a function named xor
# that takes two arguments
# and returns true
# if exactly one argument is true
# false if otherwise

# Examples: 

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

def xor?(n1, n2)
  (n1 && !n2) || (!n1 && n2)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false