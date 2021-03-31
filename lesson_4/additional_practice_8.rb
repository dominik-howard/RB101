numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# what happens when we modify an array while we are iterating over it?
# What is the output of this code?

# prints 1
# removes and returns 1, which leaves array as [2,3,4]
# each() index is now at 1 (previously 0), so prints 3
# removes and returns 2, which leaves array as [3,4]
# each() index is now at 2, however there isn't an element at index 2

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# what is output by this code?
# prints 1
# removes and returns 4, which leaves array as [1,2,3]
# each() index is now 1, so prints 2
# removes and returns 3, which leaves array as [1,2]
# each() index is now 2; however, there isn't an element at index 2