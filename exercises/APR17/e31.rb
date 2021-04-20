# write a program that solicits 6 numbers from the user
# then prints a message that describes whether or not
# the 6th number appears amonths the first 5 numbers

# Examples: 

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

arr = %w(1st 2nd 3rd 4th 5th)
new_arr = []

arr.each do |string|
  puts "==> Enter the #{string} number:"
  input = gets.chomp.to_i
  new_arr << input
end

puts "==> Enter the last number:"
input = gets.chomp.to_i

if new_arr.include?(input)
  puts "The number #{input} appears in #{new_arr}."
else
  puts "The number #{input} does not appear in #{new_arr}"
end



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