# write a method that takes one argument, an array containing integers
# and returns the averae of all numbers in the array
# the arra will never be empty and the numbers will always be 
# positive integers
# results should also be an integer

def test(array)
  array.sum / array.length
end

arr = [1,5,87,45,8,8]

p test(arr)