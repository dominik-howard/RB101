loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

# modify the code so the loop stops iterating when the user inputs 'yes'