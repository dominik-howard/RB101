arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# return a new array containing the same sub arrays as the original
# but ordered logically by only taking into consideration the odd numbers

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
# solution above

a = arr.sort_by do |sub|
  sub.select do |v|
    v.odd?
  end
end

p a