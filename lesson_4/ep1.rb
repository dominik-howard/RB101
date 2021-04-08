flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# turn this array into a hash where the names are the keys
# and the values are the positions in the array

h = {}

flintstones.each_with_index do |value, index|
  h[value] = index
end

p h