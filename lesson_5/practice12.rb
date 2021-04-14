arr = [
  [:a, 1],
  ['b', 'two'],
  ['sea', {c: 3}],
  [{a: 1, b: 2, c: 3, d: 4}, 'D']
]

# expected return value:
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# given following data structure and without using Array#to_h
# return a hash where the key is the first item in each sub array
# and value is the second item

a = arr.each_with_object({}) do |sub, hash|
  hash[sub.first] = sub.last
end

p a