# shorten this sentence:

advice = "Few things in life are as important as house
  training your pet dinosaur."

# remove everything starting from "house"

p advice.slice!(0, advice.index("house"))

# using slice withouth (!) means advice will not be mutated