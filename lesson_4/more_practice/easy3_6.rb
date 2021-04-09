# write a function called xor
# that takes two arguments
# and returns true if
# exactly one argument is true
# and returns false if otherwise

def xor?(first, second)
  (first && second) || (!first && !second) ? false : true
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)