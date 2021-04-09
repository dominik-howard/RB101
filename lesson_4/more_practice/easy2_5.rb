# write a program that will ask for uer's name
# the program will then greet the user
# if the user writes "name!" then the computer yells it back

# Examples: 
# 
# What is your name? Bob
# Hello Bob.
# 
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

puts "what is your name?"
input = gets.chomp.to_s

if input[-1] == "!"
  puts("HELLO, #{input.upcase.chop}. WHY ARE WE SCREAMING?")
else
  puts "Hello, #{input}."
end

