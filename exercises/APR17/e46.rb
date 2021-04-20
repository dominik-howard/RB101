# write a method that takes an array of numbers
# and returns an array with the same number of elements
# and each element has the running total from the original array

# example: 

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# 1. def method
# 2. set variable equal to original array cloned
# 3. iterate over clone using map to return array with same lengths
# 4. define algo so element is equal to sum of self and previous element
# 5. except when index is == 0

def running_total(arr)
  arr.map.with_index do |_, idx|
    arr[0..idx].reduce(:+)
  end
end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

p running_total([2, 5, 13])