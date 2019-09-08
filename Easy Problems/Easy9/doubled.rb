# Double Doubles
# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
#
# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.
#
# input - number
# output - number times 2 (unless number is a double number)
#
# data struture - numeric, string
# algorithm
# - convert number to string
# - check if string length is odd
# - if string length is even, check if first half equals second half converted to string equals reversed string
# - if true return original input else return input * 2

def is_doubled?(num)
  str = num.to_s
  str.size.even? && str[0..str.size/2 -1] == str[str.size/2 ..-1]
end

def twice(num)
  is_doubled?(num) ? num : num * 2
end

# Examples:

# p is_doubled?(37)
# p is_doubled?(44) #true
# p is_doubled?(334433)
# p is_doubled?(444)
# p is_doubled?(107)
# p is_doubled?(103103) #true

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
