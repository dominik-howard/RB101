hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# return an array containing colors of fruits
# and sizes of vegetables
# sizes should be uppercase
# colors should be capitalized

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

a = hsh.map do |name, hash|
  if hash[:type] == "fruit"
    hash[:colors].map do |color|
      color.capitalize
    end
  elsif
    hash[:type] == "vegetable"
      hash[:size].upcase 
  end
end

p a
