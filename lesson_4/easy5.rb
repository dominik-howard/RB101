# write a method that takes one argument, a string, and returns a new string
# with the words in reverse order

def test(string)
  string.split(" ").reverse.join(" ")
end

str = "reverse these words"

p test(str)