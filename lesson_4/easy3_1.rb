# write a program that solicits 6 numbers from the user
# then prints a message that describes whether or not
# the 6th number appears amongst the first 5 numbers

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

def store(number, array)
  array << number
end

arr = []

puts "Enter the 1st number:"
store(gets.chomp.to_i, arr)

puts "Enter the 2nd number:"
store(gets.chomp.to_i, arr)

puts "Enter the 3rd number:"
store(gets.chomp.to_i, arr)

puts "Enter the 4th number:"
store(gets.chomp.to_i, arr)

puts "Enter the 5th number:"
store(gets.chomp.to_i, arr)

puts "Enter the last number:"
last = gets.chomp.to_i

if arr.include?(last)
  puts "The number #{last} appears in #{arr}."
else
  puts "The number #{last} does not appear in #{arr}."
end