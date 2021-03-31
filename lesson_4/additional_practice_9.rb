words = "the flintstones rock"

words.split.map do |word|
  word.capitalize!
end.join(" ")