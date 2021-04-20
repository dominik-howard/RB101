# write a method that takes a positive integer or zero
# and converts it to a string representation
# may not use integer#to_s or string(), or kernel#format
# method should be old-fashioned

# examples: 

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# 1. create array of digits
# 2. create empty string
# 3. map array of digits
# 4. return hash value equivalent for key
# 5. append key to empty string
# 6. return empty string

NUM_STRING = {
    0 => '0',
    1 => '1',
    2 => '2',
    3 => '3', 
    4 => '4', 
    5 => '5', 
    6 => '6',
    7 => '7', 
    8 => '8', 
    9 => '9'
}

# def integer_to_string(integer)
#   digits = integer.digits
#   string = ""

#   digits.map do |digit|
#     string.prepend(NUM_STRING[digit])
#   end

#   string
# end

def integer_to_string(integer)
  string = ""
  loop do
  integer, remainder = integer.divmod(10)
  string.prepend(NUM_STRING[remainder])
  break if integer == 0
  end
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'