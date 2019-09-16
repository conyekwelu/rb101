# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.
#
# input - integer
# ouput - display 4 pointed diamond in n x n grid
#
# data structure - string
# algorithm
# - iterate from 0 to input n
# - for each iteration
#   we will print '*' n times
#   then center the result in a grid of size n


def diamond(n)
  arr = (1..n).to_a
  arr1 = arr.select {|i| i.odd?} + arr.reverse.select {|i| i.odd?}
  arr1.delete_at(arr.size / 2)
  arr1.each{|i, idx| puts ('*' * i).center(n)}
end


diamond(1)
diamond(3)
diamond(9)
