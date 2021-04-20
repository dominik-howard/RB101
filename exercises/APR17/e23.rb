# create a simple tip calculator
# should prompt for bill amount and tip rate
# program must compute the tip and then display
# both the tip and the total amount of the bill

# Example: 

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0


puts "==> What is the bill?"
sub_bill = gets.chomp.to_f

puts "==> What is the tip precentage?"
tip_percentage = gets.chomp.to_f

tip_percentage = (tip_percentage / 100).round(2)
tip_amount = (sub_bill * tip_percentage).round(2)
total_bill = (sub_bill + tip_amount).round(2)

puts "The tip is #{format("%.2f", tip_amount)}"
puts "The total is #{format("%.2f", total_bill)}"
# puts "The total is $#{total_bill}"