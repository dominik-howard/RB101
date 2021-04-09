# create a simple tip calculator
# the program should prompt for a bill amount and a tip rate
# the program must compute the tip
# and then display both the tip and total amount of the bill

# Example: 
# 
# What is the bill? 200
# What is the tip percentage? 15
# 
# The tip is $30.0
# The total is $230.0

puts "What is the bill?"
bill_amount = gets.chomp.to_i

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f / 100

tip_calulation = (bill_amount * tip_percentage).round(2)

total_bill = bill_amount + tip_calulation

puts "The tip is $#{tip_calulation}"
puts "The total is $#{total_bill}"
