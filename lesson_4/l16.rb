names = ['Sally', 'Joe', 'Lisa', 'Henry']

# use loop to remove and print each name
# stop the loop once names doesn't contain any more elements

loop do
  puts names.shift
  break if names.length == 0
end