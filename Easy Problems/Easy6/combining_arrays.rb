# Combining Arrays
# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.
#
# input - two arrays
# output - one array that combines the elements of the two
#
# rules - no duplicates
#
# algorithm
# - add the two arrays together to a single array
# - iterate through the single array
# - select each item from the single array only once (reject if already selected element)
# - return new array

def merge(arr1, arr2)
  result = []
  (arr1 + arr2).each do |element|
    result << element if !result.include?(element)
  end
  result
end

def merge(array_1, array_2)
  array_1 | array_2
end

def merge(arr1, arr2)
  arr1.clone.concat(arr2).uniq
end

def merge(array1,array2)
  [array1,array2].flatten.uniq!
end
# Example

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
