name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# what does this code print out and why?

# BOB, BOB
# both variables name and save_name point to same object
# object's value was modified destructively
# both variables still point to same object, but now value has changed