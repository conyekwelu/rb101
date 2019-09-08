# Multiplicative Average
# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.
#
# input - array of integers
# output - float number to 3 dp (divide product of num by num of entries)
#
# data structure - numeric (float)
#
# algorithm
# - initialize variable to hold array product with value 1
# - iterate through the array
# - multiply each item in array with var and update var with product
# - divide var by the array size in float
# - round result to 3 decimal places
# - print result to screen

def show_multiplicative_average(arr)
  average = arr.reduce(:*) / arr.size.to_f
  puts "The result is #{sprintf("%.3f", average)}"
end


# Examples:

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
