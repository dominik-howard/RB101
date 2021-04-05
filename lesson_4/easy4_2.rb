# write a method that takes a year as input and returns the century
# the return value should be a string that beings with the century number,
# and ends with 'st', 'nd', 'rd', or 'th' as appropiate for that number
# new centuries begin in years that end with '01'
# so years 1901-2000 complete 20th century

# P: 
# 1. write method that takes year
# 2. return the century
# 3. century defined as 100 years, starting with 01
# 4. 1901-2000 is a century, and its the 20th century
# 5. use correct grammar: 20th, 21st, 2nd, 3rd
# 6. suffix - 1st 2nd 3rd 4th 5th 6th 7th 8th 9th 0th 11th 12th 13th 14th
# 15th 16th 17th 18th 19th 20th
# 7. suffix grammar is based on century number, which is based on input

# E: 
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# DA: 
# input: INTEGER
# output: STRING form of the century, with correct grammar
# - verify that input is positive integer by using loop and separate method
# - convert integer to century(integer), then to century(string)
# - create EMPTY VARIABLE representing century integer
#   - take remainder of 100 from input
#     - if remainder == 0 then century integer = input / 100
#     - if remaineder != 0 then century integer = (input/100) + 1
#   - convert century integer to string
#   - add appropiate suffix to end of string
#     - case string[-1]
#     - when "1" then string << "st"
#     - when "2" then string << "nd"
#     - when "3" then string << "rd"
#     - else string << "th"


# def verify(input)
#   (input.to_i.to_s == input.to_s) && input.to_i >= 0
# end

def century(input)
    
  century_integer = nil
  century_string = ""


  if input % 100 == 0
    then century_integer = input / 100
  else
    century_integer = (input/100) + 1
  end

  century_string = century_integer.to_s

  if (century_string[-2] == "0" || century_string[-2] == nil)
    case century_string[-1]
    when "1" then century_string << "st"
    when "2" then century_string << "nd"
    when "3" then century_string << "rd"
    else century_string << "th"
    end
  else
    century_string << "th"
  end

  century_string

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
# p century(45.45)



