[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# without modifying original array
# use map to return a new array
# but where each integer is incremented by 1

a = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.each_with_object({}) do |(k,v), hash|
    hash[k] = v + 1
  end
end

p a