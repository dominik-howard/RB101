# write two methods that each take a time of day in 24 hour format
# and return the number of minutes before and after midnight, respectively
# both methods should return a value in the range 0..1439
# may not use ruby's date and time methods

# Examples: 

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# 1. input time in string format
# 2. set empty variables for hours and minutes
#   - hours are first two indexed characters of string
#     - hours = hours * 60 <-- convert hours to minutes
#   - minutes are last two indexed characters of string
# 3. add hours and minutes to another empty variable that represents total
# 4. for before midnight, subtract total from 1440
# 5. for after midnight, add total to 0

def time_to_minutes(string)
  total = (string[0..1].to_i * 60) + (string[-2..-1].to_i)
end

def before_midnight(string)
  string == "00:00" ? 0 : 1440 - time_to_minutes(string)
end

def after_midnight(string)
  string == "24:00" ? 0 : time_to_minutes(string)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0