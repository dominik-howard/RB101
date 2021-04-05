# write a program that asks the user to enter an integer greater than 0
# then asks if the user wants to determine the sum or product
# of all numbers between 1 and the entered integer

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

number = nil

puts "Please enter an integer greater than 0:"
loop do
number = gets.chomp.to_i
  break if number > 0
  puts "Invalid number entered. Number must be greater than 0."
end
  
loop do
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.to_s.downcase

  if operation == 's'
    sum = (1..number).inject { |sum, n| sum + n}
    puts "The sum of the integers between 1 and #{number} is #{sum}."
    break
  elsif operation == 'p'
    product = (1..number).inject(1) { |product, n| product * n }
    puts "The product of the integers between 1 and #{number} is #{product}."
    break
  else
    puts "Invalid character entered."
  end
end