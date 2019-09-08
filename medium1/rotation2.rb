# Rotation (Part 2)
#
# Write a method that can rotate the last n digits of a number. For example:
#
# input - two integers : one integer to be rotated, and other is the number of digits
# output - integer
#
# format - string, array
# algorithm
# convert input num to string then to array of characters
# partition the array into two - normal part and part to be rotated
# slice rot_array from second character to end
# add the second char to the back of slice above
# join the updated rot array to the non rot partition
# join the characters and convert to integers


def rotate_array(array)
  array.drop(1) + array.take(1)
end



def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  left, right = arr.partition.with_index { |_, idx| idx < arr.size - n  }
  right = right.drop(1) + right.take(1)
  combined_arr = left + right
  combined_arr.join.to_i
end

REFACTORED w/ rotate_array()
def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  left, right = arr.partition.with_index { |_, idx| idx < arr.size - n  }
  [left + rotate_array(right)].flatten.join.to_i
end


# LS - using rotate array from previous
#
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
