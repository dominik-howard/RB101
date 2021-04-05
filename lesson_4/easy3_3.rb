# write a program that will ask a user for an input of a word
# or muliple words
# and give back the number of characters
# spaces should not be counted as a character

puts "Please write word or multiple words:"
input = gets.chomp.to_s
count = input.split(" ").join.length

puts "There are #{count} characters in \"#{input}\"."