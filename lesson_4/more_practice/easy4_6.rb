# write a method that takes an Array of numbers
# and returns an Array with the same number of elements
# and each element has the running total from the original array

# Examples: 

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# Problem:
# input: array
# output: new array

# Examples: 
# 2nd value is combo of self and previous value
# 3rd value is combo of self and previous value

# DS:
# arrays

# Algo:




# code: 

def running_total(array)
  var = 0
  array.map do |x|
    var += x
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# p running_total([2,5,13])