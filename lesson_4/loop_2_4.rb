# modify the code so that "That's correct!" is printed and the loop stops
# when the user's answer equals 4
# print "Wrong answer. Try again!" if it doesn't equal 4

loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer, try again!"
  end
end