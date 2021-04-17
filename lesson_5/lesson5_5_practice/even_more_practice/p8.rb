# using each method
# output all vowels from the strings

hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

VOWELS = ['a', 'e', 'i', 'o', 'u']

hsh.each do |num, arr|
  arr.each do |word|
    word.chars.each do |letter|
      puts letter if VOWELS.include?(letter)
    end
  end
end