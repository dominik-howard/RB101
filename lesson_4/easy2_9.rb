name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# what does this code print out?

# Alice, Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# what about this?

# ! suffix is descrutive/mutating
# meaning value changes but object remains the same
# since name and save_name point to same object
# output: 
# BOB, BOB