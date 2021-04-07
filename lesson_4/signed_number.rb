# write a method that takes a string of digits
# and returns the appropiate number as an integer
# you may not use String#to_i or Integer()

# assume all characters will be numeric

# Examples: 
# 
# string_to_signed_integer('4321') == 432
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# write a method that takes a string of digits and returns the appropiate
# number as an integer
# if leading sign is '+' or no sign is given, return positive number
# if leading sign is '-' then return negative number
# may not use standard ruby conventional methods

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map {|letter| DIGITS[letter]}

  value = 0
  digits.each {|digit| value = 10 * value + digit}
  value
end

# def string_to_signed_integer(string)
#   store = []
#   if string[0] == '-' || string[0] == '+'
#     store << string[0]
#     string.reverse!.chop!
#     string.reverse!
#   else
#     string
#   end

#   if store[0] == '-'
#     return string_to_integer(string) * -1
#   else
#     string_to_integer(string)
#   end
  
# end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')