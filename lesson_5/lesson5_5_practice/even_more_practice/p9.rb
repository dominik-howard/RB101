# return a new array of same structure
# but with the sub arrays being ordered
# alphabetically or numerically as appropiate
# in descending order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

b = arr.map do |sub|
  sub.sort do |a,b|
    b <=> a 
  end
end

p b