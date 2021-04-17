a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# what is value of a and b?

# a = 2
# a points to 2, and this object is never modified
# b = [3,8]
# b which points to an array, its object at index 0 is modified by
# another reference: arr
# this changes the object ID for that index at 0 which thus affects where
# both arr[1][0] and b[1] are pointing to


