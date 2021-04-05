# write a method that takes one integer argument, which may be positive
# negative, or zero
# This method returns true if the number's absolute value is odd

def easy_2(integer)
  integer.abs.odd?
end

p easy_2(-7)