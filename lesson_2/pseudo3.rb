# example 3
# a method that takes an array of integers
# and returns a new array with every other element

# casual
# make an array of integers
# make a method that passes one argument
# iterate over array with both value and index
# create new array with just values whose index numbers are odd
# print new array

# formal
# START
# SET array of integers
# SET method with one argument
# SET local variable for new array
# ITERATE over argument
# BOOLEAN value in array IF it's index is odd?
# SET these values to local var/array
# PRINT variable/new array
# RUN method outside of scope
# END

array = [1,2,3,4,5]

def other(arr)
  array_new = []
  arr.each_with_index do |value, idx|
    array_new << value if idx.odd?
  end
  puts array_new
end

other(array)