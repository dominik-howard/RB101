# write a method that returns an array
# that contains every other element of an array
# that is passed in as an argument
# the values in the returned list should be those values
# that are in the 1st, 3rd, 5th and so on elements
# of the argument array

# examples: 
# 
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# def oddities(array)
  # new_arr = []
  # (array.length).times do |i|
    # new_arr << array[i] if i.even?
  # end
  # new_arr
# end

# def oddities(array)
#   counter = 0
#   new_arr = []
#   loop do
#     break if counter >= array.size
#     new_arr << array[counter] if counter.even?
#     counter += 1
#   end
#   new_arr
# end

# def oddities(array)
#   array.select do |x|
#     x if array.index(x).even?
#   end
# end

def oddities(array)
  array.select.with_index do |x, idx|
    idx.even?
  end
end

# def evenies(array)
  # new_arr = []
  # (array.length).times do |i|
    # new_arr << array[i] if i.odd?
  # end
  # new_arr
# end

# def evenies(array)
#   counter = 0
#   new_arr = []
#   loop do
#     break if counter >= array.size
#     new_arr << array[counter] if counter.odd?
#     counter += 1
#   end
#   new_arr
# end

# def evenies(array)
  # array.select do |x|
    # x if array.index(x).odd?
  # end
# end

def evenies(array)
  array.select.with_index do |x, idx|
    idx.odd?
  end
end

p oddities([2, 3, 4, 5, 6]) 
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def']) 
p oddities([123]) 
p oddities([])

p evenies([2, 3, 4, 5, 6]) 
p evenies([1, 2, 3, 4, 5, 6]) 
p evenies(['abc', 'def'])
p evenies([123]) 
p evenies([])