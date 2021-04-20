# build a program that asks user for the length and width
# of a room in meters
# and then displays the area of the room
# in both sq meters and sq feet
# 1 sq meter == 10.7639 sq ft

# Example run: 

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# Modify this program to ask for the input measurements
# in feet, and display the results in
# square feet, square inches, and square centimeters

puts "==> Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "==> Enter the width of the room in feet:"
width = gets.chomp.to_f

sq_feet = (length * width).round(2)
SQINCHES_PER_SQFOOT = 144
sq_inches = (SQINCHES_PER_SQFOOT * sq_feet).round(2)
SQCENTIMETERS_PER_SQINCH = 6.4516
sq_centimeters = (SQCENTIMETERS_PER_SQINCH * sq_inches).round(2)

puts "The area of the room is #{sq_feet} square feet, " + \
"#{sq_inches} square inches, and #{sq_centimeters} square centimeters."



