# Multiply All Pairs
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.
#
# input - two arrays containing integers
# output - single array containing product
#
# rules - neither argument is an empty Array.
#
# algorithm
# -initialize result array
# - iterate over array one
# - for each value in array one iterate over array two
# - multiply array v1 value by array 2 value
# - send result to result array
# - sort and return result array

# def multiply_all_pairs(arr1, arr2)
#   result = []
#   arr1.each{ |e| arr2.each { |i| result << e * i } }
#   result.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |e| e.reduce(:*) }.sort
end


# array1.product(array2)
#
# Examples:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
