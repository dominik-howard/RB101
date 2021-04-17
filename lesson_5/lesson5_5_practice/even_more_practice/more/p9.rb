arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# return a new array of same structure
# sub arrays being ordered 
# in descending order

b = arr.map do |sub|
  sub.sort do |a,b|
    b <=> a 
  end
end

p b