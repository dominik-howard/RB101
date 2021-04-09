# write a program that prompts the user for two positive integers
# and then prints the results of the following operations
# on those two numbers: addition, subtraction, product
# quotient, remainder and power
# do not worry about validating input

# Example: 
# 
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

puts "==> Enter the first number:"
first = gets.chomp.to_i

puts "==> Enter the second number:"
second = gets.chomp.to_i

sum = first + second
puts "==> #{first} + #{second} = #{sum}"

difference = first - second
puts "==> #{first} - #{second} = #{difference}"

product = first * second
puts "==> #{first} * #{second} = #{product}"

quotient = first / second
puts "==> #{first} / #{second} = #{quotient}"

remainder = first % second
puts "==> #{first} % #{second} = #{remainder}"

power = first ** second
puts "==> #{first} ** #{second} = #{power}"