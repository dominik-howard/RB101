# use next to modify the code so that the loops iterates until either
# number_a or number_b equals 5
# print "5 was reached!" before breaking out of the loop

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break 
  end
end