# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917.
#
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.
#
# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
#
# Note that you do not have to handle multiple 0s.


# input - integer
# output - integer (rotated)
#
# data structure - numeric, array
# algorithm
# - initialize counter = 1
# - intialize result variable
# - initialize loop
# - rotate the input integer, n = 1
# - update counter
# - break loop if counter = array size
# - return result


def rotate_rightmost_digits(num, n)
    arr = num.to_s.chars
    left, right = arr.partition.with_index { |_, idx| idx < arr.size - n  }
    right = right.drop(1) + right.take(1)
    combined_arr = left + right
    combined_arr.join.to_i
end

def max_rotation(num)
  counter = num.to_s.size
  until counter == 1 do
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num
end

# def max_rotation(num)
#   counter = num.to_s.size
#   counter,downto(2) do |n|
#     num = rotate_rightmost_digits(num, counter)
#   end
#   num
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# Example:

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
