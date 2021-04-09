# write a program that solicits 6 numbers from the user
# then prints a message that describes whether or not the 6th number
# appears amongst the first 5 numbers

# Examples: 
# 
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
# 
# 
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

array = []

# puts "Enter the 1st number:"
# first = gets.chomp.to_i
# array << first

# puts "Enter the 2nd number:"
# second = gets.chomp.to_i
# array << second

# puts "Enter the 3rd number:"
# third = gets.chomp.to_i
# array << third

# puts "Enter the 4th number:"
# fourth = gets.chomp.to_i
# array << fourth

# puts "Enter the 5th number:"
# fifth = gets.chomp.to_i
# array << fifth

5.times do |i|
  puts "Enter number ##{i+1}"
  input = gets.chomp.to_i
  array << input
end

puts "Enter the last number:"
last = gets.chomp.to_i

if array.include?(last)
  puts "The number #{last} appears in #{array}."
else
  puts "The number #{last} does not appear in #{array}."
end

