# see if "spot" is present
# Bonus: What are two other hash methods that would work just as well?

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 402,
  "Eddie" => 10
  }

  p ages.include?("spot")
  p ages.key?("spot")
  p ages.value?("spot")
  p ages.member?("spot")