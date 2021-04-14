# time of day can be represented as the number of minutes before
# or after midnight
# if number is positive, time is after midnight
# if negative, time is before midnight

# write a method that takes a time using this minute-based format
# and returns the time of day in 24 hour format
# method should work with any integer input
# may not use ruby's date and time classes

# examples: 
# 
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# problem:
# input: integer that represents minutes
# output: hh:mm in string format

# examples: 
# 0 is 00:00
# can take both + and - integers in minutes

# DSA:
# input positive or negative number
# create empty variables for hh and mm
# create another variable that reference abs value of input integer
#   - use this variable throughout method
#   - only use the original when needing to refer to pos or neg, or 0
# place it into algo that returns values set to hh and mm variables
# can you divide 60 into it? 
#   - if yes, the times divided into it represent the hour
#   - store this into hours variable
#   - 63 / 60 = 1
# is there a remainder when dividing 60 into it?
#   - if yes, the remainder is minutes
#   - store this into minutes variable
#   - 63 % 60 = 3
# refactored code
#   - to calculate, use divmod
#   - hours, minutes = number.divmod(60)
#   - minutes variable is ready for interpolation/concatenation already
#   - hours are subject to pos/neg
#     - if original number is (-)
#       - hh = 24 - hours
#     else
#       - hh = hours - 1
#   - hh variable format must be double digits
#     - format("#%.4d",hh) => "0022" for example
# concatenante hh:mm into string

def time_of_day(number)
  number_calculated = number.abs
  hours, minutes = number_calculated.divmod(60)
  hh = 0
  time = ""

  hours > 23 ? hours = hours % 24 : hours

  if number.negative?
    hh = 23 - hours
    minutes = 60 - minutes
  else
    hh = hours
  end

  time = "#{format("%02d:%02d", hh, minutes)}"
end

def formatting(number)
  format("%.2d",number)
end

p time_of_day(0) == "00:00"
p time_of_day(-3)
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"