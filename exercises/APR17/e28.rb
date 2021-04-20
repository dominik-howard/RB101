# write a program that asks the user to enter an integer greater than 0
# then asks if the user wants to determine the sum or product
# of all numbers between 1 and the entered integer

# Examples: 

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def output(number, operation)
  store = 0
  case operation
  when 's'
    store = 1.upto(number).map {|x| x }.reduce(:+)
    puts "The sum of the integers between 1 and #{number} is #{store}."
  when 'p'
    store = 1.upto(number).map {|x| x }.reduce(:*)
    puts "The product of the integers between 1 and #{number} is #{store}."
  else
    puts "Oops. Unknown operation."
end



puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to computer the sum, 'p' to compute the product."
choice = gets.chomp.downcase

output(integer, choice)