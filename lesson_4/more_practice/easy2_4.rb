# build a program that displays when the user will retire
# and how many years she has to work till retirement

# Example: 
# 
# What is your age? 30
# At what age would you like to retire? 70
# 
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At which age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.new.year
age_difference = retirement_age - current_age
retirement_year = current_year + age_difference

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{age_difference} years of work to go!"