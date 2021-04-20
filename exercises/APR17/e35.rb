# write a method that computes the square of its argument

# Example: 

# square(5) == 25
# square(-8) == 64

def multiply(n1, n2)
  n2 * n2
end

def square(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64