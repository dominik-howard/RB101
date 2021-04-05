# using the mutiply method from previous exercise
# write a method that computes the sq of its argument

# Example:
# 
# square(5) == 25
# square(-8) == 64

def multiply(n1, n2)
  n1 * n2
end

def squared(n1)
  multiply(n1, n1)
end

p squared(-8)