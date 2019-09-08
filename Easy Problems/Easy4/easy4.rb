# require 'pry'
=begin
============Short Long Short=================
input - two strings
output - single string  -> SLS
algorithm - compare length of two strings
          - store short in short and long in Long
          cconcatenate

def short_long_short(str1, str2)
  return "#{str2}#{str1}#{str2}" if str1.size > str2.size
  "#{str1}#{str2}#{str1}"
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"


============What Century is That?=================
input - year
output - century, string

algorithm - divide year by 100
            add one to quotient for century if decimal part not equal to zero
  check the last digit if (4..9) then "th"
  check the 2nd to last digit and if == 1, then 'th'
  check the last digit of x and convert appropriately [1st, 2nd, 3rd]

def century(num)
  suffix = {"1" => 'st', '2' => 'nd', '3' => 'rd'}
  x, y = num.divmod(100)
  x += 1 if y != 0
  x = x.to_s

  if (4..9).include?(x[-1].to_i) || x[-1].to_i == 0
    "#{x}th"
  elsif x.end_with?("11","12", "13")
    "#{x}th"
  else
    "#{x}#{suffix[x[-1]]}"
  end
end
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'


def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

============Leap Years (Part 1)=================

leap years occur in every year that is evenly divisible by 4
unless the year is also divisible by 100.
If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

method
input - year
output - boolean: true or false if leap year
algorithm - check if divisible by 4
                  if divisible by 100
                  if divisible by 400
true if (divisible by 4 && !divisible by 100)
true if (divisible by 4 && divisible by 100 && divisible by 400)

def leap_year?(year)
  check_4 = year % 4
  check_100 = year % 100
  check_400 = year % 400

  if check_4 == 0 && check_100 != 0
    return true
  elsif check_400 == 0
    return true
  end
  false
end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

============Leap Years (Part 2)=================

 def leap_year?(year)
   if year > 1752
     (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
   else
     year % 4 == 0
   end
 end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true

# ============Multiples of 3 and 5=================

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1
method
input - integer
output - integer
algorithm - loop through 1 to the number
            check if mulitple of 3 and pass to array
            check if multiple of 5 and pass to array
            sum all the elements in the array

def multisum(num)
  array = []
  1.upto(num) do |x|
    array << x if x % 3 == 0 || x % 5 == 0
  end
  array.reduce(:+)
end

def multisum(num)
  (1..num).select{|x| x % 3 == 0 || x % 5 == 0}.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

============Running Totals=================

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

method
input - array
output - new array with running total
algorithm - iterate through array
            pass first element + counter to new array, update counter
            pass 2nd element + counter element , update counter

def running_total(arr)
  new_arr = []
  total = 0
  arr.each do |element|
    new_arr << (total + element)
    total += element
  end
  new_arr
end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

def running_total(array)
  sum = 0
  array.each_with_object([]) do |element, arr|
    arr << sum += element
  end
end

def running_total(arr)
  arr.map.with_index { |_, i| arr[0..i].inject(:+) }
end


puts running_total([2, 5, 13]) #== [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

============Convert a String to a Number!=================

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

input - string of DIGITS
output - integer

data structure  - array to allow for iteration
                - hash to hold mapping between strings and integers

algorithm - convert string object to array of characters
          - iterate through the array and convert each item to an integer using mapping
          - convert array of integers into single integer
              reverse the array
              iterate through the array and multiply each item by 10^ index
              add all the items



def string_to_integer(string)
  string_hash = {}

  for x in 0..9 do
    string_hash[("0".."9").to_a[x]] = x
  end

  arr = string.chars
  arr_len = arr.size

  counter = 1
  total = 0

  arr.each do |x|
    total += string_hash[x] * (10 ** (arr_len - counter))
    counter += 1
  end
  total
end

def hexadecimal_to_integer(str)
  hexa = str.hex
  hexa
end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
  string.chars.reverse.map.with_index { |e, idx| DIGITS[e] * (10 ** idx) }.sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

puts hexadecimal_to_integer('4D9f') == 19871


============Convert a String to a Signed Number!=================

Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

input - string of integers, possibly signed
output - integer, possibly signed

data structure - string, conditional, string_to_integer method
algorithm - check input if first character is signed or unsigned
          - if signed positive, delete the sign and convert to integer then return the value
          - if signed negative, delete the sign and convert to integer then return the negative value

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  str.chars.reverse.map.with_index { |e, idx| DIGITS[e] * (10 ** idx) }.sum
end

def string_to_signed_integer(str)
  sign, str = str[0], str.slice(1..-1) if %w(+ -).include?(str[0])
  result = string_to_integer(str)

  return -result if sign == "-"
  result
end

# can also use a case when else end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

============Convert a String to a Signed Number!=================
Write a method that takes a positive integer or zero, and converts it to a string representation.

input - integer
output - string

data structure - array, hash

algorithm -convert the integer to an array of integers
          - use the mapping to convert each integer to string representation
          - join every item in array


DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  array_of_xters = []

  while int != 0 do
    int, y = int.divmod(10)
    array_of_xters.unshift (DIGITS[y])
  end

  return '0' if array_of_xters.empty?
  array_of_xters.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

============ convert a signed integer to a string=================
Write a method that takes an integer, and converts it to a string representation.

input - integer
output - signed string

data structure - array, hash

algorithm - check if integer is signed
          - convert integer to string
          - cconcatenate sign to string representation if signed



DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  array_of_xters = []

  loop do
    int, y = int.divmod(10)
    array_of_xters.unshift (DIGITS[y])
    break if int == 0
    # binding.pry
  end

  return '0' if array_of_xters.empty?
  array_of_xters.join
end

def signed_integer_to_string(int)
  result = integer_to_string(int.abs)
  if int > 0
    return result.prepend("+")
  elsif int < 0
    return result.prepend("-")
  else
    return result
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
