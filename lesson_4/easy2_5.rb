# write a program that will ask for user's name
# the program will then greet the user
# if the user writes "name!" then the computer yells back to the user

# Examples: 
# 
# What is your name? Bob
# Hello Bob.
# 
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

puts "What is your name?"
name = gets.chomp.to_s

if name[-1] == "!"
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end


