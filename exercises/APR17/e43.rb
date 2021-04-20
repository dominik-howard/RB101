# under gregorian calender, leap years occur in every year that is evenly
# divisible by 4
# unless the year is also divisible by 100
# if year is evently divisible by 100 then it's not a leap year
# unless it's divisible by 400

# write a method that takes any year greater than 0
# and returns true if the year is a leap year
# false if otherwise

# examples:

# # leap_year?(2016) == true
# # leap_year?(2015) == false
# # leap_year?(2100) == false
# # leap_year?(2400) == true
# # leap_year?(240000) == true
# # leap_year?(240001) == false
# # leap_year?(2000) == true
# # leap_year?(1900) == false
# # leap_year?(1752) == true
# # leap_year?(1700) == false
# # leap_year?(1) == false
# # leap_year?(100) == false
# # leap_year?(400) == true

# 1. input integer
# 2. true if integer % 400 == 0
# 3. true if integer % 4 == 0 && integer % 100 != 0
# 4. end

def leap_year?(integer)
  (integer % 400 == 0) || (integer % 4 == 0 && integer % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true