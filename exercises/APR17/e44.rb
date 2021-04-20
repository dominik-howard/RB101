# continuation of the previous exercise

# gregorian calendar was adopted in 1752, which was a leap year
# prior to 1752, the julian calendar was used, where
# leap year occurs in any year that is evenly divisible by 4

# update the method from the previous exercise to determine leap years
# both before and after 1752

def leap_year?(integer)
  if integer > 1752
    (integer % 400 == 0) || (integer % 4 == 0 && integer % 100 != 0)
  else
    integer % 4 == 0
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true