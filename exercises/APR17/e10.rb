# write a method that takes two arguments, a positive integer
# and a boolean
# and calculates the bonus for a given salary
# if boolean is true, bonus should be half the salary
# if false, bonus should be 0

# Examples: 
# 
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

def calculate_bonus(salary, boolean)
  boolean ? salary/2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
