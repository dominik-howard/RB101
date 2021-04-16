arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# return a new array of the same structure
# but with the sub arrays being ordered
# alphabetically or numerically as appropiate
# in descending order

a = arr.map do |sub|
  sub.sort do |a,b|
    b <=> a
  end
end

p a