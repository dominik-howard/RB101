# Turn this into an array containing only two elements:
# Barney's name and Barney's number

flintstones = {
  "Fred" => 0,
  "Wilma" => 1,
  "Barney" => 2,
  "Betty" => 3,
  "BamBam" => 4,
  "Pebbles" => 5
}

# assoc(key) -> new_array or nil
# if the given key is found, returns a 2-element array containing that key/value

p flintstones.assoc("Barney")