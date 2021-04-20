# write a method that takes a year as input and returns the century
# the return value should be a string that beings with the century number
# and ends with "st", "nd", "rd" or "th" as appropiate for that number

# new centuries begin in years that end with 01
# years 1901-2000 comprise the 20th century

# Examples: 

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

def century(number)
  century_number = 0
  number_string = number.to_s

  if number_string[-1] == '0'
    century_number = (number / 100)
  else 
    century_number = (number / 100) + 1
  end

  number_string = century_number.to_s

  if number_string[-2] == "1"
    number_string << 'th'
    elsif number_string[-1] == "1"
    number_string << 'st'
    elsif number_string[-1] == "2"
    number_string << 'nd'
    elsif number_string[-1] == "3"
    number_string << 'rd'
    else
    number_string << 'th'
  end

  number_string

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


# if string[-2] == 1
#   << 'th'
# elsif string[-1] == 1
#   << 'st'
# elsif string[-1] == 2
#   << 'nd'
# elsif string[-1] == 3
#   << 'rd'
# else
#   << 'th'
# end
 

# if last digit != 0
#   (number / 100) + 1 <--- century

# if last digit == 0
#   (number / 100) <--- century

# 1. input integer
# 2. return century integer
# 3. convert century integer into string
# 4. append appropiate suffix to string 