arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# given data structure and a combo of methods
# including either select or reject methods
# return a new array identical in structure to the original 
# but containing only the integers that are multiples of 3

b = arr.map do |sub_array|
  sub_array.select do |el|
    el % 3 == 0
  end
end

p b 

