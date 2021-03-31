# using an if/else statement, run a loop that prints
# "the loop was processed!" one time
# if process_the_loop equals true
# print "the loop wasn't processed!" if false

process_the_loop = [true, false].sample

process_the_loop ? puts("The loop was processed!") :
                  puts("The loop wasn't processed!")