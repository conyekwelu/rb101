# Reversed Arrays (Part 1)
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.
#
# You may not use Array#reverse or Array#reverse!.
#
# input - array
# output - array but with elements reversed
# rule  - same array object
#       - method mutates the argument
#
# data structure - array
#
# algorithm
# - iterate over the array
#   - swap first item with last
#   - second with second to last
#   - and so on
# - maximum number of iterations should be (n/2).floor
# - return array

def reverse!(arr)
return arr if arr.size == 0 || arr.size == 1
front_counter = 0
back_counter = -1

loop do
  arr[front_counter], arr[back_counter] = arr[back_counter], arr[front_counter]
  front_counter += 1
  back_counter -= 1
  break if front_counter == (arr.size / 2).floor
end

# while left_index < array.size / 2
#   array[left_index], array[right_index] = array[right_index], array[left_index]
#   left_index += 1
#   right_index -= 1
# end

arr
end

# Examples:

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

 list = ['abc']
 p reverse!(list) == ["abc"]
 p list == ["abc"]
#
list = []
p reverse!(list) == []
p list == []
