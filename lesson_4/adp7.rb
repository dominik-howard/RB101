statement = "The Flintstones Rock"

# create a hash that expresses the frequency with which
# each letter occurs in this string

h = {}

statement.split("").each do |letter|
  next if letter == " "
  h[letter.downcase] = statement.count(letter.downcase)
end

p h