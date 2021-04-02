words = "the flintstones rock"

def titleize(str)
  str.split(" ").each do |word|
    word.capitalize!
  end.join(' ')
end

p titleize(words)