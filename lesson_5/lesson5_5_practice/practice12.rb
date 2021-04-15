# without using the Array#to_h
# return a hash where the key is the first item in each sub
# and the value is the second item

arr = [
  [:a, 1],
  ['b', 'two'],
  ['sea', {c: 3}],
  [{a: 1, b: 2, c: 3, d: 4}, 'D']
]

# expected output: 

# expected return value:
# {:a=>1, "b"=>"two","sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}


a = arr.each_with_object({}) do |sub, hash|
  hash[sub.first] = sub.last 
end

p a

