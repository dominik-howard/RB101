# write a program that will ask a user for an input of a word
# or multiple words
# and give back the number of characters
# spaces don't count as characters

# example: 

# Please write word or multiple words: walk

# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run

# There are 13 characters in "walk, don't run".

puts "==> Please write word or multiple words:"
input = gets.chomp

length = input.delete(" ").length

puts "There are #{length} characters in \"#{input}\"."