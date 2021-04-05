a = [1, 4, 8, 11, 15, 19]

# The array#bsearch method is used to search ordered Array's more quickly
# than #find and #select

# how would you search this array to find the first element
# whose value exceeds 8?

p a.bsearch { |x| x > 8 }

# bsearch returns an element from self selected by a binary search
# self should be sorted, but this is not checked

