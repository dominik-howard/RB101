arr = ['10', '11', '9', '7', '8']

# How would you order this array of number strings by descending numberic value?

a = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p a