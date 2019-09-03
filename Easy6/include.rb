# Does My List Include This?
# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.
#
# input - array, search_value which could be any object
# output - boolean => true or false
#
# data structure - array/collection
#
# algorithm
# - iterate through array
# - select item in array that equals search value and store in variable
# - if empty set then return false, else return true

def include?(array, search_value)
  !array.select{|element| element == search_value}.empty?
end

def includes?(arr, item)
  arr.index(item) == nil ? false : true
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
