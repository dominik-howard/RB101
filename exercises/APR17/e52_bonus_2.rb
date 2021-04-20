def time_of_day(integer)
  calculation = minutes_total(integer)
  time = Time.new(0) + (60 * calculation)
  time.strftime("%H:%M")
end

def minutes_total(num)
  num -= ((num / 1440) * 1440)
  num.positive? ? num + 0 : num.negative? ? 1440 - num.abs : num
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# How would you approach this problem if you were allowed
# to use ruby's Date and Time classes?How would you approach this problem if you were allowed to use ruby's Date and Time classes?