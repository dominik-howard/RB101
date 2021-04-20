# ask for the user's name
# then greet the user
# if the user writes name!
# then have program yell back to the user

# Examples: 

# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

puts "What is your name?"
name = gets.chomp!

if name[-1] == "!"
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name.capitalize}."
end