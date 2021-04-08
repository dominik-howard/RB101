# write a method called select_letter
# that takes a string and returns a new string
# containing only the letter that we specified

str = "Dominik is learning Ruby"


def select_letter(string, selection="a")
  counter = 0
  new_string = ""

  loop do
    break if counter == string.size
    if string[counter].include?(selection)
      new_string << string[counter]
    end
    counter += 1
  end
  new_string
end


p select_letter(str, "i").size