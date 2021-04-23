# time of day can be number of minutes before or after midnight
# if number of minutes is positive, time is after midnight
# if negative, time is before midnight
# write a method that takes a time using this minute-based format
# and returns the time of day in 24 hour format (hh:mm)
# method should work with any integer input
# may not use Ruby's date and time classes
# disregard daylight savings time

# examples: 

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Problem: 
# - input is positive or negative number, or zero
# - positive is after midnight
# - negative is before midnight
# - midnight is 00:00
# - negative integers *do not retain the '-' sign in hh:mm format
# - minutes per day == 60 * 24 == 1440

# DS: 
# - input: integer
# - output: string
#   - hh:mm format

# algo: 
#  - if positive, add minute(integer) to zero
#  - if negative, minus minute(integer) from 1440
#  - convert calculation into time, in hh:mm format
#  - run this through a separate method

# time method
#   calc / 60 == hour (string)
#   calc % 60 == min ( string)
#   run hour and min thru format method

# format method
#   string.length > 1 ? string.prepend("0") : string

def time_of_day(integer)
  calculation = minutes_total(integer)
  hour_string = (calculation / 60).to_s
  min_string = (calculation % 60).to_s
  format_string(hour_string) + ":" + format_string(min_string)
end

def minutes_total(num)
  num -= ((num / 1440) * 1440)
  num.positive? ? num + 0 : num.negative? ? 1440 - num.abs : num
end

def format_string(string)
  string.length < 2 ? string.prepend("0") : string
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# 1. once calcuation is finished, add it to Time.new(0) and set that
#    to a variable
# 2. use interpolation to return the hh:mm formatting