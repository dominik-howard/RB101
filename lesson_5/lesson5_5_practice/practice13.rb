# return a new array containing the same sub-arrays
# as the original 
# but ordered logically by only taking into consideration
# the odd numbers they contain

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# expected output: 
# 
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

a = arr.sort_by do |sub|
  sub.select do |element|
    element.odd?
  end
end

p a