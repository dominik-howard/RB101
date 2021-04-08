words = "the flintstones rock"


# create a method that capitalizes each word in a string
# name it titleize

def titleize(string)

  string.split.map do |word|
    word.capitalize
  end.join(" ")

end

p titleize(words)
p words