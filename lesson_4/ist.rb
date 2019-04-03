# Iteration, Selection and Transformation

Selection is picking certain elements out of the collection depending on some criterion.
    # For example, pick out all the odd integers from an array.
Transformation, on the other hand, refers to manipulating every element in the collection

For convenience Selection & Transformation are abstracted to methods

the basics of looping:
 a loop
 a counter
 a way to retrieve the current value
 a way to exit the loop

 produce = {
   'apple' => 'Fruit',
   'carrot' => 'Vegetable',
   'pear' => 'Fruit',
   'broccoli' => 'Vegetable'
 }

def select_fruit(hash)
  new_hash = {}
  counter = 0

  loop do
    break if counter == hash.keys.size
    current_produce = hash.values[counter]

    if current_produce == "Fruit"
      new_hash[current_produce] = "Fruit"
    end

    counter += 1
  end

  new_hash
end

 select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
