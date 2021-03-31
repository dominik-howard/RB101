# write a method called select_letter that takes a string 
# and returns a new string containing only the letter we specified

def return_letter(str, selection)
  counter = 0
  new_str = ""

  loop do
    break if counter == str.length
    
    current_letter = str[counter]
    new_str << str[counter] if str[counter].include?(selection)
    counter += 1
  end
  new_str
end

name = "Katherine Golladay"
p return_letter(name, 'e').size