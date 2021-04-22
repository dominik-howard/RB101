# 1. pass in array as argument
# 2. use join() to decide how output will show
# 3. use conditional based on array
#   if 2 elements in array, use the word "or" between elements
#   elsif 3 or more elements use ',' by default between elements
#     and place the word 'or', by default, before last element
#   end

require 'pry'

arr1 = [1,2]
arr2 = [1,2,3]

def prompt(msg)
  puts "==> #{msg}"
end

def joinor(array, delimiter=",", conjuction="or")
  string = ""
  array.each do |value|
    # binding.pry
    if array.last != value
      string << "#{value}#{delimiter} "
    else
      string << "#{conjuction} #{value}"
    end
  end
  string
end

prompt joinor(arr2) 

