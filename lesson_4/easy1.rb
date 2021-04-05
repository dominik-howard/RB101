# write a method that takes two arguments, a string and positive int
# print the string as many times as the integer indicates

def easy_1(string, integer)
  integer.times do
    puts string
  end
end

easy_1("Dominik", 7)