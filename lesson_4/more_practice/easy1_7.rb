# write a method that takes one argument, a positive integer
# and returns a string of alternating 1s and 0s
# always starting with 1
# the length of the string should match the given integer

# Examples: 
# 
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

def stringy(number)
  string = ""
  number.times do |i|
    i.even? ? string += ('1') : string += ('0')
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'