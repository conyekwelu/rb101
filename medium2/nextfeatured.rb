# Next Featured Number Higher than a Given Value
# A featured number (something unique to this exercise)
# is an odd number
# is a multiple of 7, and
# whose digits occur exactly once each
#
# Input - integer
# Output - integer which is the next featured number that is greater than the argument.
#
# Issue an error message if there is no next featured number.
#
# data structure - strings, arrays
#
# algorithm
# intialize a counter variable and set it to input value
# initialize a loop
# increment the counter variable
# check  if it is a featured Number
#   check if odd, divisible by 7, all digits are unique
# if yes, end the loop and return the featured number
# set a timer for 2 mins and we break out of the loop at end of timer if no featured number and display error message.

LIMIT = 1234567890
ERROR_MESSAGE = 'There is no possible number that fulfills those requirements.'

def is_featured_number?(num)
  num.odd? && num % 7 == 0 && num.digits.uniq.size == num.digits.size
end


def featured(num)
  result = num
  loop do
    result += 1
    break if is_featured_number?(result) || result > LIMIT
  end

  result > LIMIT ? ERROR_MESSAGE : result
end

# p is_featured_number?(21)
# p is_featured_number?(35)
# p is_featured_number?(1029)


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
#
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
