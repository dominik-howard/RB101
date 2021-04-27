# write a method that takes a floating point number that represents
# an angle between 0 and 360 degrees
# and returns a string that represents that angle in degrees
# minutes and seconds
# you should use a degree symbol ° to represent degrees
# single quote ' to represent minutes
# a double quote " to represent seconds
# a degree has 60 minutes
# a minute has 60 seconds

# examples: 

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# results may differ slightly depending on how values are rounded
# but should be within a second or two of the results shown above

# you should use two digit numbers with leading zeros when formatting
# the minutes and seconds
# 321°03'07"

# you may use this constant to represent the degree symbol:

require 'pry'

DEGREE = "\xC2\xB0"

def dms(number)
  angle = (number - (number % 1)).to_i
  minutes = ((number % 1) * 60).round(2)
  seconds = ((minutes % 1) * 60).round(2)
  minutes = format("%.2d", minutes)
  seconds = format("%.2d", seconds)
  # binding.pry
  (%(#{angle}#{DEGREE}#{minutes}'#{seconds}"))
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# 1. create variables representing angle, minutes, seconds
#   - angle is equal to base number rounded (0)
#   - minutes is equal to ((number % 1) * 60).round(2)
#   - seconds is equal to ((minutes % 1) * 60).round(2)
# 2. output variables accordingly
#   "%(#{angle}DEGREE#{minutes}'#{seconds}\""

