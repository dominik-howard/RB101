# write a method that utilizes a loop to multiply each element in the
# collection by 2
# then, only transform is value in question is odd

array = [1,2,3]

def multiplier(collection)
  counter = 0
  
  loop do
    break if counter == collection.size
    collection[counter] *= 2 if collection[counter].odd?
    counter += 1
  end
  collection
end

p multiplier(array)
p array