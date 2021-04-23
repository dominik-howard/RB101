# 1. create constant of alpha numeric characters
# 2. split the string by !constant

ALPHA = ("a".."z").to_a

# example: 

# cleanup("---what's my +*& line?") == ' what s my line '

def cleanup(string)

  clean_chars = []

  string.chars.each do |char|
    if ALPHA.include?(char)
      clean_chars << char 
    else 
      clean_chars << " " unless clean_chars.last == " "
    end
  end

  clean_chars.join
end

p cleanup("---what's my +*& line?") == ' what s my line '