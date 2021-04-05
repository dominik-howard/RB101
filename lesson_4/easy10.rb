# write a method that takes two arguments, a positive int and boolean
# and calculates the bonus for a ggiven salary
# if boolean is true, boolean should be half of salary
# if false, bonus is 0

# test case
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

def test(salary, boolean)
  boolean ? salary / 2 : 0
end

p test(2800, true)
p test(1000, false)
p test(50000, true)