# Convert number to reversed array of digits
# Write a method that takes a positive integer as an argument and returns that number with its digits reversed
#
# input - integer
# output - integer reversed
#
# data structure - strings
# algorithm
# - convert inmput interger to string
# - reverse string
# - convert string to integer

def reversed_number(num)
  num.to_s.reverse.to_i
end

# Examples:

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
