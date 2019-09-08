# Rotation (Part 1)
# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.
#
# Do not use the method Array#rotate or Array#rotate! for your implementation.
#
# input - array
# output - array
#
# rules - new array, original array not modified
#       - first letter of original == last letter of return value
#
# data structure - array
# algorithm
# - initialize result array
# - iterate over initial array in reverse
# - send item to front of result array
# - send only the last item to the back

def rotate_array(arr)
  result = []
  arr.reverse.each { |e| e == arr.first ? result << e : result.prepend(e) }
  result
end

LS
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_array(array)
  array.drop(1) + array.take(1)
end

# Example:

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]
