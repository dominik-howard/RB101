# modify the following loop so it iterates 5 times intead of just once

iterations = 1

loop do
  puts "number of iterations = #{iterations}"
  break if iterations > 4
  iterations += 1
end