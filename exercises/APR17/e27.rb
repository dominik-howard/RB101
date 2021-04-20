# print all even numbers from 1 to 99

# counter = 2

# loop do
#   puts counter if counter.even?
#   counter += 1
#   break if counter > 99
# end

99.times do |i|
  puts i + 1 if i.odd?
end