# write a method that takes one argument, an array containing integers
# and returns the average of all numbers in the array
# array won't be empty and numbers are positive
# results should be an integer

# Examples: 

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

def average(array)
  (array.sum.to_f / array.length).to_f
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52]) 