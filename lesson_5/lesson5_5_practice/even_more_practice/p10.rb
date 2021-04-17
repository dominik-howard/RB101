# without modifying the original array
# use the map method to return a new array
# identical in structure to the original
# but where the value of each integer is incrememted by 1

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

z = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.each_with_object({}) do |(k,v), hash|
    hash[k] = v + 1
  end
end

p z