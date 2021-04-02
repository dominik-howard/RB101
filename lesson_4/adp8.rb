numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# output?
# prints 1
# returns 1
# index is now 1, so prints 3
# returns 2
# index is now 2, but element does not exist at index


numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# output?
# prints 1
# returns 4
# index is now 1, so prints 2
# returns 3
# index is now 2, but element does not exist at index