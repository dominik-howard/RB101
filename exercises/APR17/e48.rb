STRING_NUM = {
    '0' => 0,
    '1'=> 1,
    '2'=> 2,
    '3'=> 3, 
    '4'=> 4, 
    '5'=> 5, 
    '6'=> 6,
    '7'=> 7, 
    '8'=> 8, 
    '9'=> 9 
  }

def string_to_integer(string)
  string_array = string.chars.reverse

  string_array.map.with_index do |element, idx|
    element = STRING_NUM[element]
    idx > 0 ? element * (10 ** idx) : element
  end.sum
end

# write a method that takes a string of digits and returns the appropiate
# number as an integer
# the string may have leading '+' or '-' sign
# if first character is a +, method should return a positive number
# if it's a '-', your method should return a negative number
# if no sign is given, you should return a positive number

# assume string will always contain vlaid number
# may not use String#to_i or Integer()

# examples: 

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# def string_to_signed_integer(string)

#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else string_to_integer(string)
#   end

# end

def string_to_signed_integer(string)
  no_sign = string_to_integer(string.delete('+-'))
  string[0] == '-' ? -no_sign : no_sign
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
