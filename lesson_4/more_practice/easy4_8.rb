# write a method that takes a string of digits
# and returns the appropiate number as an integer
# the string may have a leading + or - sign
# if +, return a positive number
# if -, return a negative number
# if no sign, return positive number
# assume string will contains a valid number
# may not use string.to_i or Integer()

# Examples: 
# 
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

def string_to_integer(string)
  h = {
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '0' => 0
  }

  digits = string.chars.map do |digit|
    h[digit]
  end

  var = 0
  digits.each do |digit|
    var = 10 * var + digit
  end
  var
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

p string_to_signed_integer('-4321')