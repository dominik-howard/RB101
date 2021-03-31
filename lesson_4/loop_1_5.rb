# modify the code so 'hello!' is printed 5 times

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter > 4
end