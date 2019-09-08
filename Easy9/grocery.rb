# Grocery List
# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.
#
# input - array with nested structure containing fruit and amount
# output - array with only strings
#
# data structure - array
# algorithm
# iterate over array
# for each sub array transform into sub array with fruit 3x
# flatten array


def buy_fruit(arr)
  arr.map { |fruit, count| ("#{fruit} " * count).split }.flatten
end

def buy_fruit(arr)
  arr.map { |fruit, count| [fruit] * count }.flatten
end




# Example:

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
