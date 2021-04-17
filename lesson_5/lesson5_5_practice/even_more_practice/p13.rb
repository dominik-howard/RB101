# return a new array containing the same sub-arrays as the original
# but ordered logically 
# by only considering the odd numbers they contain

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

a = arr.sort_by do |sub|
  sub.select do |value|
    value.odd?
  end
end

p a

