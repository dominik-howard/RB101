# build a program that asks a user for the length and width
# of a room in meters and then displays the area of the room
# in both sq meters and sq feet

# 1 sq meter == 10.7639 sq ft

# Example run: 
# 
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).truncate(1)
sqft = (area * 10.7639).truncate(2)

puts "The area of the room is #{area} square meters (#{sqft} square feet)."
