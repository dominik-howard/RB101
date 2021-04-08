produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(collection)

  counter = 0
  new_hash = {}
  keys = collection.keys

  loop do
    break if counter == keys.size

    current_key = keys[counter]
    current_value = collection[current_key]

      if current_value == "Fruit"
        new_hash[current_key] = current_value
      end
      counter += 1
  end
  p new_hash
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}