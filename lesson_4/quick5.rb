produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# modify the code to general_select so that we can specify
# whether we're interested in selecting fruits or vegetables

def select_fruit(collection, selection="Fruit")

  counter = 0
  new_hash = {}
  keys = collection.keys

  loop do
    break if counter == keys.size

    current_key = keys[counter]
    current_value = collection[current_key]

      if current_value == selection
        new_hash[current_key] = current_value
      end
      counter += 1
  end
  p new_hash
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}