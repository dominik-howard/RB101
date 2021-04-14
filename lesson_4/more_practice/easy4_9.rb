# write a method that takes a positive integer or zero
# and converts it to a string representation
# may not use ruby standard conversion methods

# Examples: 
# 
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

DIGITS = ['0','1','2','3','4','5','6','7','8','9']

def integer_to_string(number)
  result = ""
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result

end

def signed_integer_to_string(number)
  var = integer_to_string(number.abs)
  if number > 0
    "+#{var}"
  elsif number < 0
    "-#{var}"
  else
    "#{var}"
  end
end

p signed_integer_to_string(-4321)

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'