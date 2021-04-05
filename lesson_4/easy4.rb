# write a method that counts the number of occurrences
# of each element in a given array

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  array.each_with_object({}) do |type, hash|
    hash[type] = array.count(type)
  end
end

p count_occurrences(vehicles)