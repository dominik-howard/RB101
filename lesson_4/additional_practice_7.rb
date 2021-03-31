# create a hash that expresses the frequency with which
# each letter occurs in this string

statement = "The Flintstones Rock"
h = {}

statement.chars.each do |x|
  h[x] = statement.count(x) if x != " "
end

puts h
puts statement