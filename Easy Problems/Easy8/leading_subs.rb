# Leading Substrings
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.
#
# input - string
# output - array of leading substrings
#
# data structure - array
# algorithm
# - initialize a result array
# - split input string into an array of individual characters
# - iterate over array
# - join all characters and send to result array
# - delete last character
# - continue iteration until no character left
# - return result array
#
# - initialize a result array
# - split input string into an array of individual characters
# - iterate over character array
# - for each item select the preceding elements and join with eelement
# - send result to result array
# - return result array

# def substrings_at_start(str)
#   substring_arr = []
#   str.chars.each_with_index{|chr, idx| substring_arr << str[0..idx] }
#   substring_arr
# end

def substrings_at_start(str)
  str.chars.map.with_index{|_, idx| str[0..idx] }
end

# def substrings_at_start(str)
#   substring_arr = []
#   char_arr = str.chars
#
#   until char_arr.empty? do
#     substring_arr << char_arr.join
#     char_arr.pop
#   end
#
#   substring_arr.sort_by {|item| item.length}
# end


# Examples:

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
