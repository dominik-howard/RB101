# write a method that searches for all multiples of 3 and 5
# that lie between 1 and some other number
# and then computes the sum of those multiples
# for instance, if 20 is supplied, result should be 
# 98 (3+5+6+9+10+12+15+18+20)
# may assume that number passed in is an integer greater than 1

# Examples: 

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

def multiples?(number, divisor)
  number % divisor == 0
end

def multisum(number)
  sum = 0
  1.upto(number) do |x|
    if multiples?(x,3) || multiples?(x, 5)
      sum += x 
    end
  end
  sum
end

p multisum(20)