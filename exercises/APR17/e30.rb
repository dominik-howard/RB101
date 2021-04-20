array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# what will the following code print?

# original array with 'c' and 's' names all uppercase
# when pushing values into 2nd array, it's a different array but
# the same objects from first array
# upcase! destructively modifies those objects that both arrays contain
# thus array2 will also reflect/reference the modified values of those objects