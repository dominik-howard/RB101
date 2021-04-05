a = %w(a b c d e)
# puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# what do each of these puts statements output

# error, out of range
# 'beats me'  <-- because 7 is out of range, returns default value
# 49