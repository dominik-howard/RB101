# create a method that takes an array of integers
# and returns the SAME array of those same integers doubled

def double_numbers(array, selection)
  counter = 0
  new_array = []

  loop do
    break if counter == array.size

    current_number = array[counter]
    current_number *= selection if current_number.odd?
    new_array << current_number
    counter += 1
  end
  new_array
end

arr = [1,2,3]
p double_numbers(arr, 4)
p arr