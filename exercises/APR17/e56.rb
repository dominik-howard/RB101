# write a method that takes a string with one or more space separated
# words and returns a hash that sshows the number of words of different sizes

# words consist of any string of characters that do not include a space

# 1. create array of words from strings, separated by space
# 2. iterate using each with object (hash)
# 3. if hash.has_key?(word.length)
#       then hash[word.length] += 1
# else
#     hash[word.length] = 1
# 4. return hash

def word_sizes(string)
  string.split(" ").each_with_object({}) do |word, hash|
    hash.has_key?(word.length) ? hash[word.length] += 1 : hash[word.length] = 1
    hash
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}