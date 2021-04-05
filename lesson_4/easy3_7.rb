# write a method that returns an array that contains
# every other element of an array
# that is passed in as an argument
# the values in the returned list should be those values
# that are in the 1st, 3rd, 5th, and so on elements of the argument array

# Examples: 
# 
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

def oddities(arr)
  new_arr = []
  arr.each_with_index do |element, index|
    new_arr << element if index.even?
  end
  new_arr
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])