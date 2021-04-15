# use a combo of methods, including select or reject
# to return a new array identical in structure to the original 
# but containing only the integers that are multiples
# of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

a = arr.map do |sub|
  sub.select do |integer|
    integer if integer % 3 == 0
  end
end

p a