flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys
# and the values are the positions in the array

h = {}

flintstones.each do |name|
  h[name] = flintstones.index(name)
end

puts h