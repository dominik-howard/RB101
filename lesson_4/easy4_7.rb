# write a method that takes a string of digits
# and returns the appropiate number as an integer
# you may not use String#to_i or Integer()

# assume all characters will be numeric

# Examples: 
# 
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# def string_to_integer(string)

#   string.split("").map do |letter|
#     case letter
#     when '0' then print 0
#     when '1' then print 1
#     when '2' then print 2
#     when '3' then print 3
#     when '4' then print 4
#     when '5' then print 5
#     when '6' then print 6
#     when '7' then print 7
#     when '8' then print 8
#     when '9' then print 9
#     end
#   end
# end

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

p string_to_integer('4321')
p string_to_integer('570')