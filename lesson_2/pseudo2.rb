# example 2
# a method that takes an array of strings, and returns a string
# that is all those strings concatenated together

# casual
# setup array of strings
# setup method that passes array as arguement
# iterate over each value in array and add to local variable
# print local variable

# formal
# START
# SET array of strings
# SET method that passes one arguement
# In method, ITERATE over each value in array
# add each value to a local variable
# PRINT local variable after iteration, but before ending method
# END

array = ["hello", "my", "name", "is", "john"]

def concatenate(arr)
  combination = ""
  arr.each do |x|
    combination += x + " "
  end
  puts combination
end

concatenate(array)
