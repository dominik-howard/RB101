[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# what's the return value of the select method and why?

# [1,2,3]
# 'hi' is always true
# select() only returns collection of values that returned true
# for each iteration, everything returned true, so everything is displayed
# in the new collection

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# How does count treat the block's return value? 

# returns number of items
# returns '2'

[1, 2, 3].reject do |num|
  puts num
end

# what is the return value of reject?
# [1,2,3]
# all 3 elements evaluated to nil since last line is puts
# reject returns new array containing elements that are not 'true'

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# what is the return value of each_with_object?
# {'a' => 'ant', ...}

hash = { a: 'ant', b: 'bear' }
hash.shift

# what does shift do in the following code?
# returns [:a, 'ant']
# for hash, shift() returns 2 element array containing the key and value

['ant', 'bear', 'caterpillar'].pop.size

# what is the return value of the following statement?
# .pop returns the element alone that's being popped off
# .size returns value that represents length of element in questino
# expression returns 11

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# What is the block's return value? 
# true, because at least one element returns true for num.odd?
# any? returns true as long as any element in the collection returns true
# for the block

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Again
# [1,2]
# take() returns new array with non-negative Integers
# optional argument represents up-to how many elements in collection

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# what is the return value of map
# [nil,'bear']
# map() returns new array containing elements that are returned values
# from block

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# What is the return value?
# [1, nil, nil]