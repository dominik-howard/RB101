# print all odd numbers from 1 to 99, inclusive, to the console
# with each number on a separate line

# 100.times do |i|
  # puts i if i.odd?
# end

counter = 1
until counter > 99
  puts counter if counter.odd?
  counter += 1
end