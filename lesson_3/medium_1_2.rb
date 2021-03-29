# this will produce an error
# why and what are two ways to fix it?

# puts "the value of 40 + 2 is " + (40 + 2)

# why: needs interpolation. ruby can't add strings and integers

puts "the value of 40 + 2 is #{40+2}"

puts "the value of 40 + 2 is " + "#{40+2}"

puts "the value of 40 + 2 is " + (40+2).to_s