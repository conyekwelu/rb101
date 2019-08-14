#
# input - hash
# output - hash
# requirements - value == 'fruit'



# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
#
# def select_fruit(hash)
#   selected_fruits = {}
#   fruits = hash.keys
#   counter = 0
#
#   loop do
#     current_fruit = fruits[counter]
#     if hash[current_fruit] == "Fruit"
#       selected_fruits[current_fruit] = "Fruit"
#     end
#     counter += 1
#     break if counter == fruits.size
#   end
#
#   selected_fruits
# end
#
# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# def double_numbers!(numbers)
#   counter = 0
#
#   loop do
#     break if counter == numbers.size
#     numbers[counter] = numbers[counter] * 2
#     counter += 1
#   end
#
#   numbers
# end
#
# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
# p my_numbers

# def double_odd_indices(numbers)
#   doubled_indices = []
#   counter = 0
#
#   loop do
#     break if counter == numbers.size
#
#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_indices << current_number
#
#     counter += 1
#   end
#
#   doubled_indices
# end
#
# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_indices(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# def multiply(numbers, multiplier)
#   counter = 0
#   multiplied_numbers = []
#
#   loop do
#     break if counter == numbers.size
#     multiplied_numbers << numbers[counter] * multiplier
#     counter += 1
#   end
#
#   multiplied_numbers
# end
#
# my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 4) # => [2, 8, 6, 14, 4, 12]
