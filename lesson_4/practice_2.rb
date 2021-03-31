# create a method that takes an array of integers
# and returns the SAME array of those same integers doubled

def double_numbers(array)
  counter = 0
  new_array = []

  loop do
    break if counter == array.size

    current_number = array[counter]
    current_number *= 2 if counter.odd?
    new_array << current_number
    counter += 1
  end
  new_array
end

arr = [1,2,3]
p double_numbers(arr)
p arr