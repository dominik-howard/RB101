# write a method that takes one argument, a positive integer
# and returns a string of alternating 1s and 0s
# always starting with 1
# the length of string should match the integer

def test(integer)
  new_number = []

  integer.times do |index|
    index.even? ? new_number << 1 : new_number << 0
  end
  new_number.join("")
end

p test(6)