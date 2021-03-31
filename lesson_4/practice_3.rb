produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(data, selection)
  counter = 0
  values = data.values
  keys = data.keys
  selected_value = {}

  loop do
    break if counter == values.size

    current_value = values[counter]
    current_key = keys[counter]

    if current_value == selection
      selected_value[current_key] = current_value
    end

    counter += 1
    
  end
  selected_value
end

p select_fruit(produce, 'Meat') # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p produce

