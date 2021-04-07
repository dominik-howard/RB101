loop do
  number = rand(100)
  puts number
  break if number.between?(0,10)
end

# modify code so that the loop stops if number is == between 0 and 10