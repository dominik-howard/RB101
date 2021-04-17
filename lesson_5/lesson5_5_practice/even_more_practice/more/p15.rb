arr = [
  {a: [1, 2, 3]},
  {b: [2, 4, 6], c: [3, 6], d: [4]},
  {e: [8], f: [6, 10]}
]

# return an array which contains
# only the hashes
# where all integers are even

a = arr.select do |hash|
  hash.all? do |sym, arr|
    arr.all? do |v|
      v.even?
    end
  end
end

p a