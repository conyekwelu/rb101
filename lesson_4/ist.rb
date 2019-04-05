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

 def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end


def general_select_fruit(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  selected_fruits = {}
  counter = 0

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_produce = produce_list[current_key]

    if current_produce == selection_criteria
      selected_fruits[current_key] = current_produce
    end

    counter += 1
  end

  selected_fruits
end


def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    multiplied_numbers << current_number * multiplier

    counter += 1
  end

  multiplied_numbers
end

def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char    # appends current_char into the selected_chars string
    end

    counter += 1
  end

  selected_chars
end
