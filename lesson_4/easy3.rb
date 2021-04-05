# write a method that takes one argument, a positive int, 
# and returns a list of the digits in the number

def easy_3(integer)
  integer.to_s.split("").map do |x|
    x.to_i
  end
end

p easy_3(717)