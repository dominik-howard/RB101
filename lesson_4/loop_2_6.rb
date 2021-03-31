# use loop to remove and print each name
# stop the loop once names doesn't contain any more elements

names = [
  "Sally", "Joe", "Lisa", "Henry"
]

loop do
  puts names.pop
  break if names.empty?
end