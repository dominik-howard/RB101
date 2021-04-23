# write a method that takes a string argument and returns a new string
# that contains the value of the original string with all 
# consecutive duplicate characters collapsed into a single character
# may not use string#squeeze or string#squeeze!

# examples: 

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

def crunch(string)
  new_string = ""
  string.chars.each do |letter|
    new_string << letter if new_string[-1] != letter
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''