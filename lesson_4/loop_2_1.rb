# write a loop that prints numbers 1-5 and whether
# the number is even or odd

count = 1

loop do
  count.odd? ? puts("#{count} is odd!") : puts("#{count} is even!")
  count += 1
  break if count >= 6
end