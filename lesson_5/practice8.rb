hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

# Using the each method, write some code to output
# all of the vowels from the strings

VOWELS = ['a', 'e', 'i', 'o', 'u']

hsh.values.each do |array|
  array.each do |word|
    word.chars.each do |letter|
      puts letter if VOWELS.include?(letter)
    end
  end
end

