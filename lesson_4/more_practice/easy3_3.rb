# write a program that will ask a user for an input
# of a word or multiple words
# and give back the number of characters
# spaces should not be counted as a character

# Examples: 
# 
# input
# Please write word or multiple words: walk
# 
# output
# There are 4 characters in "walk".
# 
# input
# Please write word or multiple words: walk, don't run
# 
# output
# There are 13 characters in "walk, don't run".


puts "Please write word or multiple words:"
input = gets.chomp
number_of_chars = input.delete(" ").length

puts "There are #{number_of_chars} characters in \"#{input}\""