# Reversed Arrays (Part 2)
# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.
#
# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.
#
# input - array
# output - array with element reversed
# rule - new array
#
# algorithm
# - initialize new empty array
# - iterate over input array
# - send each element to the front of the new array
# - return the new array

def reverse(arr)
  reversed_array = []
  arr.each do |item|
    reversed_array.prepend(item)
  end
  reversed_array
end

def reverse(arr)
  arr.each_with_object([]) do |item, reversed_array|
    reversed_array.prepend(item)
  end
end


# Examples:

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
