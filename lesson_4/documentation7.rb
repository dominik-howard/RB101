s = 'abc'
puts s.public_methods(all=false).inspect

# use irb to run this code

# you should find that it prints a list of all the public methods
# available to string
# this includes not only those methods defined in the string class,
# but also methods inherited* from object
# (which inherits other methods from BasicObject class and Kernel module)

# how would you modify this code to print just the pbulic methods
# that are defined or overridden by the string class?
# that is, the list should exlude all members that are only defined in object,
# basicobject, and kernel

