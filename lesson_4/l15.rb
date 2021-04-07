numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

# modify code so that the user's input gets added ot the numbers array
# stop the loop when the array contains 5 numbers

