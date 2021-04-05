# Create a simple tip calculator
# the program should prompt for a bill amount and tip rate
# the program must compute the tip and then display both tip and total amount

# Example: 

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = (gets.chomp.to_f)/100

tip_amount = (bill * tip_percentage).truncate(2)
bill_total = (bill + tip_amount).truncate(2)

puts "The tip is $#{tip_amount}"
puts "The total is $#{bill_total}"