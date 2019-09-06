# Combine Two Lists
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.
#
# You may assume that both input Arrays are non-empty, and that they have the same number of elements.
#
# input - two non-empty arrays with equal size
# output - new array with all elements from both with elements taken in alternation
#
# data structure - collection
# algorithm
# - intialize empty array to hold result
# - initialize counter
# - iterate over both arrays at the same time
# - add item sequentially to new array
# - return new array

def interleave(arr1, arr2)
  combined_arr = []
  index = 0
  while index < arr1.size
    combined_arr.push(arr1[index], arr2[index])
    # combined_arr << arr1[index] << arr2[index]
    index += 1
  end
  combined_arr
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end


# Example:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
