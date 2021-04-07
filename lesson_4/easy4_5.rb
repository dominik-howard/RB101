# write a method that searches for all multiples of 3 or 5
# that lie between 1 and some other number
# and then computes the sum of those multiples
# for instance, if number = 20
# the result should be 98, which is (3+5+6+9+10+12+15+18+20)

# assume the number passed in is an integer greater than 1

# Examples: 
# 
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# input: integer greater than 1
# create empty array
# find multiples of 3 or 5
# store multiples in array
# then return sum

def multisum(integer)
  multiples = []
  first_counter = 1
  second_counter = 1
  first_integer = integer
  second_integer = integer

  loop do
    multiples << (3*first_counter) if (first_integer / 3) > 0
    first_integer -= 3
    first_counter += 1
    break if first_integer < 3
  end

  loop do
    multiples << (5*second_counter) if (second_integer / 5) > 0
    second_integer -= 5
    second_counter += 1
    break if second_integer < 5
  end

  multiples.uniq.sum
end

p multisum(1000)
      
