arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# return a new array of the same structure
# but with the sub arrays being ordered(alpha or numerically as appropiate)
# in DESCENDING order

a = arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end

p a