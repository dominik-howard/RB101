require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# what will each of the 4 puts statements print?

# -4712-01-01
# 2016-01-01
# 2016-05-01
# 2016-05-13