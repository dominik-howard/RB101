# write a method that takes a string of digits
# and returns the appropiate number as an integer
# you may not use any of the mehtods such as String#to_i, Integer()
# do not worry about leading + or - signs

# examples: 

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# 1. create hash that points string integers to their equivalents
# 2. set hash inside of method
# 3. pass string into method
# 4. conver string into array of characters
# 5. reverse the array
# 6. iterate over the array using map with index
# 7. convert string character into integer character value from hash
# 8. modify that value by multiplying it by (10 ** idx) if idx > 0
# 9. value should be stored in mapped array
# 10. sum the integers stored in array for final returned value

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

p string_to_integer('4321')
