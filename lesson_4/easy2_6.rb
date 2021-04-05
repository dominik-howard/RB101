# print all odd numbers from 1 to 99, inclusive, to the console
# with each number on a separate line

# 100.times do |index|
#   puts index if index.odd?
# end

# value = 0

# while value < 100
#   puts value if value.odd?
#   value += 1
# end

# 1.upto(99) do |i|
#   puts i if i.odd?
# end

a = (1..99).to_a

a.select do |number|
  puts number if number.odd?
end