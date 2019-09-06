# Multiply Lists
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.
#
# input - two arrays with list of numbers
# output - array containing index-wise product of input arrays
#
# rules - input arrays have same number of elements
# data structure - array
#
# algorithm
# - initialize index variable
# - initialize result array
# - iterate over both arrays using index
# - multiply items with the same index and send result to result array
# - return result array

# def multiply_list(arr1, arr2)
#   index = 0
#   result = []
#   while index < arr1.size
#     result << arr1[index] * arr2[index]
#     index += 1
#   end
#   result
# end

# def multiply_list(arr1, arr2)
#   result = []
#   arr1.each_with_index{|i, idx| result << i * arr2[idx]}
#   result
# end

# def multiply_list(arr1, arr2)
#   arr1.map.with_index{|i, idx| i * arr2[idx]}
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |e| e.reduce(:*) }
end

# Examples:

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
