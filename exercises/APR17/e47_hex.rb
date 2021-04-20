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
    '9'=> 9,
    'A' => 10,
    'B' => 11,
    'C' => 12, 
    'D' => 13,
    'E' => 14,
    'F' => 15
  }

def string_to_integer(string)
  string_array = string.chars.reverse

  string_array.map.with_index do |element, idx|
    element = STRING_NUM[element]
    idx > 0 ? element * (10 ** idx) : element
  end.sum
end

def hexadecimal_to_integer(string)
  string_array = string.upcase.chars.reverse

  string_array.map.with_index do |element, idx|
    STRING_NUM[element] * (16 ** idx)
  end.sum

end

p string_to_integer('4321')
p hexadecimal_to_integer('4D9f')