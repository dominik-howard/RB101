# write a method that takes one argument, a positive integer
# and returns a string of alternating 1s and 0s
# always starting with 1
# the length of the string should match that of the given integer

# examples: 

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# def stringy(integer, opt=1)
#   string = ""
#   opt_two = opt == 1 ? '0' : '1'
#   integer.times do |x|
#     x.even? ? string += opt.to_s : string += opt_two
#   end
#   string
# end

#  Further exploration
def stringy(number, opt=1)
  ''.rjust(number, (opt == 1 ? '10' : '01'))
end

puts stringy(6,0) 
puts stringy(9) 
puts stringy(4) 
puts stringy(7) 