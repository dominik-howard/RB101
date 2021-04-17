# use either select or reject
# to return a new array identical in strucuture to the original
# but only containing the integers that are multiples of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

a = arr.map do |sub|
  sub.select do |value|
    value % 3 == 0
  end
end

p a