# write a method that takes on argument
# a positive integer
# and returns the sum of its digits

# examples:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def sum(integer)
  # sum = 0
  # integer.to_s.chars.each do |letter|
    # sum += letter.to_i
  # end
  # sum
# end

def sum(integer)
  integer.to_s.chars.map do |letter|
    letter.to_i
  end.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45