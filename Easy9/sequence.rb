# Sequence Count
# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.
#
# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.
#
# input - two integers
# output - array
#
# rules - array size should be equal to first integer
#       - elements are multiples of second integers
#
# algorithm
# - initalize empty array
# - initalize counter variable = 1
# - intialize loop
# - break if counter == first variable
# - multiply variable by counter and push to result array
# - update counter by 1
# - return array
#
# def sequence(count, num)
#   result = []
#   counter = 1
#   loop do
#     break if counter > count
#     result << num * counter
#     counter += 1
#   end
#   result
# end

def sequence(count, num)
  num.step(by: num).take(count)
end

# Examples:

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
