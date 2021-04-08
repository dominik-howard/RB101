# write a method that utilizes a loop to multiply each element in the
# collection by 2

array = [1,2,3]

def multiplier(collection, number=2)
  counter = 0
  new_collection = []
  
  loop do
    break if counter == collection.size
    new_collection << (collection[counter] * number)
    counter += 1
  end
  new_collection
end

p multiplier(array, 6)
p array