# Fibonacci Number Location By Length
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.
#
# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.
#
# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# input - integer
# output - integer (index of first fib no with length of digits in )
#
# data structure - string, integer
# algorithm
# - initialize fibnacci sequence
# - initialize counter
# - check if current fibonacci number has no fo digits == input
# - if no add another number to the sequence
# - update the counter
# - check again
# - if yes, return counter value

def find_fibonacci_index_by_length(num_of_digits)
  fibonacci = [1, 1]
  loop do
    fibonacci << fibonacci[-1] + fibonacci[-2]
    break if fibonacci.last.to_s.size == num_of_digits
  end

  fibonacci.index(fibonacci.last) + 1
end

def find_fibonacci_index_by_length(num_of_digits)
  index = 2
  a, b = 1, 1
  loop do
    fibonacci = a + b
    index += 1
    break if fibonacci.to_s.size == num_of_digits
    a, b = b, fibonacci
  end

  index
end

# Examples:

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
