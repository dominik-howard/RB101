def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# use the ruby documentation to determine what this code will print

# [4, 5, 3 ,6]

# ruby fills in missing arguments in order
# ruby does this from left to right
# ruby allows default values to appear in the middle of positional arguments
