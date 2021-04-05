# write a method that takes one argument, a positive integer,
# and returns the sum of its digits

def test(integer)
  new_number = 0
  integer.to_s.split("").each do |digit|
    new_number += digit.to_i
  end
  new_number
end

def test(integer)
  new_number = 0
  arr = integer.to_s.split("")
  
end

p test(496)