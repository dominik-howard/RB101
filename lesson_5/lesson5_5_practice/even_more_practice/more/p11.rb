# use select or reject
# return a new array with same structure
# but containing only the integers that are multiples of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

a = arr.map do |sub|
  sub.select do |v|
    v % 3 == 0
  end
end

p a