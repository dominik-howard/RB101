arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# return a new array containing the same sub-arrays as original
# BUT ordered logically by only taking into consideration the odd numbers

# Solution: 
# 
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

b = arr.sort_by do |sub|
  sub.select do |value|
    value.odd?
  end
end

p b