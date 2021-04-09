# write a method that takes two arguments, a string and a pos int
# and prints the string as many times as the integer indicates

# Example: 
# 
# repeat('Hello', 3)

def repeat(string, number)
  number.times { |_| puts string }
end

a = "Dominik"
age = 28

repeat(a,age)