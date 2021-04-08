flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# find the index of the first name that starts with "Be"

flintstones.index do |name|
  name[0,2] == "Be"
end

