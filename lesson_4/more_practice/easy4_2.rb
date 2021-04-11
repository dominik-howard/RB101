# write a method that takes a year as input and returns the century
# the return value should be a string that beings with the century number
# and ends with "st", "nd", "rd", or "th"
# new centuries begin in years that end with 01
# years 1901-2000 comprise the 20th century

# Examples: 
# 
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# Problem: 
# input: integer - year
# output: string - century with correct syntax/grammar

# Examples: 
# 1999 = 20th
# 2000 = 20th
# 2001 = 21st

# Data structure/Algo:

# If last digit of year is 0 then (century / 100)
# else (century / 100) + 1

# store this value as a string, in an empty variable

# write method that will add correct syntax to century string

# where [-1] is '1', '2' or '3'
# use st, nd, or rd if [-2] != 1
# else use th


def century(year)
  century = ""

  year.to_s[-1] == '0'? century << ((year/100)).to_s : century << ((year/100)+1).to_s

  if century[-2] != '1'
    case century[-1]
    when '1' then century << 'st'
    when '2' then century << 'nd'
    when '3' then century << 'rd'
    else century << 'th'
    end
  else
    century << 'th'
  end
end


p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
