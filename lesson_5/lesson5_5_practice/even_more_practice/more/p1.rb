arr = ['10', '11', '9', '7', '8']

# order by descending numeric value

a = arr.sort do |a,b|
  b.to_i <=> a.to_i 
end

p a