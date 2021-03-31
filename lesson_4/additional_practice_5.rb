# find the index of the first name that stats with "Be"

flintstones = %w(Fred Barney Wilma Betty BemBam Pebbles)

flintstones.index do |name|
  name.start_with?('Be')
end


