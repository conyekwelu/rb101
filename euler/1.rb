# Multiples of 3 and 5
#
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# input - integer
# output - integer
# rules - output is sum of all multiples of 3 & 5 below input
#
# algo:
# - initialize running total
# - iterate from 1 to input n
# - add number to running total if multiple of 3 or 5
# - return running total
#
# - alternatively use array, select if multiple of 3 or 5, return array sum

# def multiple_of_3_or_5(num)
#   (0...num).to_a.select! {|i| i % 3 == 0 || i % 5 == 0}.sum
# end

def multiple_of_3_or_5(num)
  running_total = 0
  counter = 1
  while counter < num
    running_total += counter if counter % 3 == 0 || counter % 5 == 0
    counter += 1
  end
  running_total
end

p multiple_of_3_or_5(10)
p multiple_of_3_or_5(1000)
