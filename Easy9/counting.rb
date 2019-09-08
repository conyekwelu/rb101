# Counting Up
# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.
#
# You may assume that the argument will always be a valid integer that is greater than 0.
#
# input - integer
# output - array of all integers up to input

def sequence(num)
  num > 0 ? (1..num).to_a : puts "invalid number"
end
#
# def sequence(num)
#   Array.new(num){ |i| i + 1}
# end

# Examples:

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
