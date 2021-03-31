# modify the hash such that each member has an additional "age_group" key
# that has one of three values describing the age group
# the family member is in
# (kid, adult, or senior)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

munsters.each do |key, value|
  if value["age"] <= 17
    value["age_group"] = "kid"
  elsif value["age"] >= 65
    value["age_group"] = "senior"
  else
    value["age_group"] = "adult"
  end
end

