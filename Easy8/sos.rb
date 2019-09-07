# Sum of Sums
# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.
#
# input - array of numbers
# output - sum of each subsequence
#
# data structure - array
# algorithm
# - initialize array of subsequneces
# - initialize index = array.size -1
# - iterate over array
# - identify substring up to index
# - update index
# - iterate over subsequence array and sum each array.
# - sum subsequence array

# def sum_of_sums(arr)
#   subs = []
#   end_index = arr.size - 1
#
#   while end_index >= 0
#     subs << arr.slice(0..end_index)
#     end_index -= 1
#   end
#
#   subs.map { |e| e.reduce(:+) }.sum
#   subs.flatten.sum
# end

# def sum_of_sums(arr)
#   arr.map.with_index {|e, idx| e * (arr.size - idx)}.sum
# end

def sum_of_sums(arr)
  arr.map.with_index {|_, idx| arr[0..idx].sum }.sum
end


#Examples:

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
