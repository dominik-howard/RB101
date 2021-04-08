munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}



munsters.each do |name, hash|
  case hash["age"]
  when 0..17 then hash["age_group"] = "kid"
  when 18..64 then hash["age_group"] = "adult"
  else hash["age_group"] = "senior"
  end
end

# modify the hash so that each member has an additional "age_group" key
# that has one of three values describing the age group the member is in
# kid, adult, or senior
# kid 0-17 , adult 18-64, senior 65+