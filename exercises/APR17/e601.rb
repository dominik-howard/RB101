# you are given a method named spin_me that takes a string
# as an agument and returns a string that contains the same words
# but with each word's characters reversed. Given the method's
# implementation, will the returned string be the same 'object'
# as the one pased in as an argument
# or a different 'object'?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow" <-- this is new object or original?

