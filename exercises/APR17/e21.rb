# build a program that randomly generates and prints Teddy's age
# to get the age, generate a random number between 20 and 200

# example output: 
# 
# Teddy is 69 years old!

def print_age(name="Teddy")
  name.capitalize!
  puts "#{name} is #{AGE} years old!"
end

AGE = rand(20..200)

puts "What's your name?"
name = gets.chomp.capitalize

print_age(name)
print_age