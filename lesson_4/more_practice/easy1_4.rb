# write a method that counts the number of occurrences of each element
# in a given array 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  hash = {}

  array.each do |element|
    hash[element] = array.count(element)
  end

  hash.each do |element, count|
    puts "#{element} => #{count}"
  end
  
end

count_occurrences(vehicles)

# the words in the array are case sensitive
# 'suv' != 'SUV'
# once counteed, print each element alongside the number of occurrences

# Expected output: 
# 
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

