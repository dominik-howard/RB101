# using next, modify the code so that it only prints even numbers

number = 0

until number == 10
  number += 1
  number.even? ? puts(number) : next
end