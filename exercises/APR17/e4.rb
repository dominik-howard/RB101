# write a method that counts the number of occurrences
# of each element in a given array

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences(arr)
  h = {}
  new_arr = arr.map do |string|
    string.downcase
  end
  new_arr.each do |string|
    h[string] = new_arr.count(string)
  end
  h.each do |k,v|
    puts "#{k} => #{v}"
  end
end

count_occurrences(vehicles)

# expected output:
# 
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2