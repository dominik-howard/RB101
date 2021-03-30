def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

def test(string)
  separated = string.split(".")
  return "invalid IP address length" unless separated.length == 4
  
  separated.map do |n|
    if (n.to_i < 0 || n.to_i > 255 || n.size < 0 || n.size > 3)
      return "invalid IP address number"
    end
  end

  true
end

puts test("192.168.1.0")