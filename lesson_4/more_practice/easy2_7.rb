# print all even numbers from 1 to 99
# with each number on a separate line

counter = 1
until counter > 99
  puts counter if counter.even?
  counter += 1
end