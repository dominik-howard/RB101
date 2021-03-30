greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# result of the last line?
# :a=>"hi there"
# both greetings and informal_greeting are pointing to same object
