# write a method that takes a string of digits
# and returns the appropiate number as an integer
# may not use string.to_i or Integer()
# don't worry about leading signs or invalid characters

# Examples: 
# 
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570



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
  '0' => 0,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

  digits = string.chars.map do |letter|
    h[letter]
  end

  var = 0
  digits.reverse.each_with_index do |digit, index|
    var += digit * (16**index)
  end
  var

end

p string_to_integer('4D9F')