# Describe difference betweeen ! and ? in Ruby
# Explain what would happen in the following scenarios

# 

## What is != and where should you use it?
# != is "not equals", used for conditionals 

## put ! before something, like !user_name
# used to turn object into the 'opposite' of their boolean equivalent

## put ! after something, like words.uniq!
# used as bang suffix to modify caller/argument destructively

## put ? before something
# used in ternary operator for if...else

## put ? after something
# Certain methods require ? such as odd, even, include
# used in methods that check dataset for specific values, etc
# also used when naming methods that would "check"

## put !! before something, like !!user_name
# used to check boolean value of whatever is in question
