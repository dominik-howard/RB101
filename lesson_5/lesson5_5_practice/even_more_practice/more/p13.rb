# return a new array containing the same sub arrays
# but ordered logically
# taking into considertation the odd numbers only

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

a = arr.sort_by do |sub|
  sub.select do |v|
    v.odd?
  end
end

p a