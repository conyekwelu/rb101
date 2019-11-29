# Sum Square - Square Sum
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.
#
# input - integer
# output - integer
#
# rules - square of the sum less the sum of the squares
#
# data structure - array
#
# algorithm:
# compute the square of the sum
#  - initialize an array that contains a range of numbers from 0 to n
#  - sum up the elements in the array
#  - find the square of the sum
# compute the sum of the squares
#   initialize an array that contains a range of numbers from 0 to n
#   iterate through the array and transform each element to its square
#   sum up the elements in the transformed array.
# subract (2) from (1)

def square_of_sum(n)
  (0..n).to_a.sum ** 2
end

def sum_of_square(n)
  (0..n).to_a.map{ |e| e ** 2}.sum
end

def sum_square_difference(n)
  square_of_sum(n) - sum_of_square(n)
end



#
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
