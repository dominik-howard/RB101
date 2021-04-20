# write a method that takes an integer, and converts it to a string 
# may not use integer #to_s, string(), kernel#format, etc

# Examples: 

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

#

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


def integer_to_string(integer)
  string = ""
  loop do
  integer, remainder = integer.divmod(10)
  string.prepend(NUM_STRING[remainder])
  break if integer == 0
  end
  string
end

# 1. create new method
# 2. set variable equal to absolute value of integer
# 3. run integer through original method which returns string
# 4. prepend +, - or nothing based on original integer being positive or negative, or 0

def signed_integer_to_string(integer)
  sign = integer.positive? ? '+' : integer.negative? ? '-' : ''
  sign + integer_to_string(integer.abs)
end

# def signed_integer_to_string(integer)
#   ['', '+', '-'][integer <=> 0] + integer_to_string(integer.abs)
# end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
# p integer_to_string(0)