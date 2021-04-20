# print all odd numbers from 1 to 99

# 99.times do |i|
#   puts i + 1 if i.even?
# end

# counter = 1

# loop do
#   puts counter if counter.odd?
#   counter += 1
#   break if counter > 99
# end

(1..99).to_a.map do |x|
  puts x if x.odd?
end