# write a program that asks the user to enter an integer
# greater than 0
# then asks IF the user wants to determine
# the sum or product of all numbers between 1 and the integer

# Examples: 
# 
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
# 
# 
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def sum_calc(number)
  (1..number).inject(:+)
end

def prod_calc(number)
  (1..number).inject(:*)
end

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to computer the sum, 'p' to computer the product."
choice = gets.chomp.to_s.downcase

if choice == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum_calc(integer)}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{integer} is #{prod_calc(integer)}."
else
  puts "Invalid choice entered."
end
