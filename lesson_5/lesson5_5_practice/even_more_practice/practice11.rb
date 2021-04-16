arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# use select or reject
# return a new array identical in structure to the original
# but containing only the integers that are multiples of 3

a = arr.map do |sub|
  sub.select do |value|
    value % 3 == 0
  end
end

p a