hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

# using each, output all of the vowels from the string

VOWELS = ['a','e','i','o','u']

hsh.each do |key, array|
  array.each do |word|
    word.chars.each do |letter|
      puts letter if VOWELS.include?(letter)
    end
  end
end