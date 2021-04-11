# write a method that searches for all multiples of 3 or 5
# that lie between 1 and some other number
# and then computes the sum of those multiples
# for instance, if supplied number is 20
# the result should be (3+5+6+9+10+12+15+18+20)

# assume number is an integer greater than 1

# Examples: 

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Problem: 
# input = integer
# output = array.uniq.sum of integers (returned)
# parameters: Input is integer > 1

# Examples: 
# duplicate multiples are removed

# Data structure / Algo
# input = integer > 1
# create empty array
# if integer % multiple is > 0
#   add multiple to array
#   multiple += multiple
#   loop again
#   break if integer % multiple < 1

#   return array

def multisum(number)
  multiple_of_three = 3
  multiple_of_five = 5
  store = []

  loop do
    break if number / multiple_of_three < 1
    store << multiple_of_three
    multiple_of_three += 3
  end  

  loop do
    break if number / multiple_of_five < 1
    store << multiple_of_five
    multiple_of_five += 5
  end

  store.uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168