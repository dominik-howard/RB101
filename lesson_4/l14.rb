loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "that's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

# modify code so "that's correct!" is printed and loop stops
# when answer == 4
# print "Wrong answer. Try again!" if it doesn't

