# Halvsies
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# input - array
# output - two arrays nested, 1st half and second half of input array
#
# rules if array size is odd, then middle should go to first
#
# data structure - array
#
# algorithm
# - initialize two empty arrays
# - initialize a counter
# - iterate over the input array and update the counter
# - if counter is less than half the array size add the element to arr1
# - if counter is greater than half the array size add to arr2
# - return both arrays nested in an array

# def halvsies(array)
#   arr1, arr2 = [], []
#   counter = 1
#   middle = (array.size/2.0).round
#   array.each do |item|
#     counter <= middle ? arr1 << item : arr2 << item
#     counter += 1
#   end
#
#   [arr1, arr2]
# end

# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

def halvsies(array)
  middle = (array.size/2.0).round
  array.partition.with_index{|_, index| index < middle}
end

# Examples:

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
