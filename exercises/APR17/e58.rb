# 1. create hash 
#   - keys are numbers
#   - values are numbers as written strings , e.g. "fourteen"
# 2. iterate through array using map
#   - hash[array-value]
# 3. sort returned/new array alphabetically
# 4. iterate through new array using map again
#  - hash.key(array-value) <-- this will return integer (key) of string
#  5. return 2nd new array

#  example: 
# 
#  alphabetic_number_sort((0..19).to_a) == [
  # 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  # 6, 16, 10, 13, 3, 12, 2, 0
# ] 

 NUM_TO_STRING = [
   "zero", 
   "one", 
   "two", 
   "three", 
   "four", 
   "five", 
   "six", 
   "seven", 
   "eight", 
   "nine", 
   "ten",  
   "eleven",  
   "twelve",  
   "thirteen",  
   "fourteen",  
   "fifteen",  
   "sixteen",  
   "seventeen",  
   "eighteen",  
   "nineteen" 
]

def alphabetic_number_sort(array)

  array.sort_by do |num|
    NUM_TO_STRING[num]
  end

end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]