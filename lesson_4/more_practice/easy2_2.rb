# build a program that asks a user for the length and width
# of a room in meters
# and then displays the area of the room in both sq meters and sq feet

# note: 1 sq meter == 10.7639 sq ft

# Example run: 
# 
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

SQMETERS_TO_FEET = 10.7639

puts "What's the length of the room?"
length_meters = gets.chomp.to_f

puts "What's the width of the room?"
width_meters = gets.chomp.to_f

square_meters = length_meters * width_meters

square_feet = (square_meters * SQMETERS_TO_FEET).round(2)

puts "The area of the room is #{square_meters} square meters " + \
"(#{square_feet} square feet)."
