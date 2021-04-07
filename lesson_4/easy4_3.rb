# Write a method that takes any year greater than 0 as input
# and returns true if the year is a leap year
# or false if it is not a leap year

# update this code to determine leap years both before and after 1752

# Examples: 
# 
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# input: integer
# output: returned boolean
# leap year: 
#   - divisible by 4, but not divisible by 100
#   - divisible by 400
# julian leap year:
#   - divisible by 4

def leap_year?(year)
  if year >= 1752
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  else
    year % 4 == 0
  end
end

p leap_year?(2016) 
p leap_year?(2015) 
p leap_year?(2100) 
p leap_year?(2400) 
p leap_year?(240000) 
p leap_year?(240001) 
p leap_year?(2000) 
p leap_year?(1900) 
p leap_year?(1752) 
p leap_year?(1700) 
p leap_year?(1)
p leap_year?(100) 
p leap_year?(400)