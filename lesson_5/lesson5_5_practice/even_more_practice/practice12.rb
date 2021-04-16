arr = [
  [:a, 1],
  ['b', 'two'],
  ['sea', {c: 3}],
  [{a: 1, b: 2, c: 3, d: 4}, 'D']
]

# without using Array#to_h
# return a hash where the key is the first item in each sub array
# value is the second item in each sub array

# expected return value:
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

a = arr.each_with_object({}) do |sub, hash|
  hash[sub.first] = sub[1]
end

p a
