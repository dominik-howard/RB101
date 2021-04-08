[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# what is the return value of the select method and why?

# returned value is [1,2,3] because 'hi' returns true as last line evaluated

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# how does count treat the block's return value and how can we find out?

# evaluates the return value (boolean) of the block and prints 
# number of elements that evaluated to true
# 2

[1, 2, 3].reject do |num|
  puts num
end

# what is the return value of reject and why?

# [1,2,3]
# reject evaluates boolean of blocks's returned value
# returns new collection for which element returned 'not true'

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# what is the return value of each_with_object and why?

# {:a => 'ant'...}
# each_with_object returns object in question, which is a hash in this case

hash = { a: 'ant', b: 'bear' }
hash.shift

# what does shift do in the code and how can we find out?

# per documentation, Hash#shift will return the first element (k-v pair)
# in array form
# it will destructively modify the original collection (hash)
# returned value is [:a, 'ant']

['ant', 'bear', 'caterpillar'].pop.size

# what is the return value and why?

# 11
# first method pop() returns "caterpillar" which is 'self'
# second method size() returns number of characters in "ant" which is 11

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# what is block's return value? How it is determined?
# what is return value of any and what does it output?

# block => true, then false, then true based on element.odd? expression
# any? => returns true since at least one of the elements returns true

arr = [1, 2, 3, 4, 5]
arr.take(2)

# how does take work? 
# is it destructive and how can we find out?

# returns first n elements from the array, with n being the argument
# collection is returned in array form
# not destructive
# => [1,2]

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# what is the return value of map and why?

# map returns new collections
# for hashes, map returns arrays
# map returns original length
# => [nil, 'bear']

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# what is the return value and why?

# returns new collection of same length
# evalutes block's return value
# [1, nil, nil]
