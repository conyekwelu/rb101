# fizzbuzz
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
#
# input - two integers
# output - all numbers in between except if divisible by 3, 5 or both
# data structure - integer, array
# algorithm
# - initialize array containing all numbers between both inputs (inclusive)
# - iterate over array and print FizzBuzz if element is divisible by both,
# - buzz if divisible by 5 ad fizz if divisible by 3

def fizzbuzz(start_num, end_num)
  result = (start_num..end_num).to_a.map do |i|
    i % 15 == 0 ? "FizzBuzz" : i % 3 == 0? "Fizz" : i % 5 == 0? "Buzz" : i
  end
  puts result.join(', ')
end

# Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
