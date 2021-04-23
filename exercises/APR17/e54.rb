# write a method that takes a string of words
# and returns a string in which the first and last letters
# of every word are swapped
# assume that every word contains at least one letter
# and that the string will always contain at least one word
# assume that each string contains nothing but words and spaces

# examples: 

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

def swap(string)
  string.split.map do |word|
    first = ""
    last = ""
    if word.length > 1
      first = word.slice!(0)
      last = word.slice!(-1)
      last + word + first
    else
      word
    end
  end.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'