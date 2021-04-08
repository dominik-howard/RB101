statement = "The Flintstones Rock"

# create a hash that expresses the frequency
# with which each letter occurs in the string

statement.split.join.chars.each_with_object({}) do |letter, object|
  object[letter] = statement.count(letter)
end

