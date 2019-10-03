# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
#
#
# input - string
# output - boolean
# rules:  returns true if parenthesis is balanced, false ow
#         balance means matching pairs
#
# data structure - collection [array]
#
# algorithm:
# - initialize an empty array
# - iterate over input string
# - identify and collect any parenthesis in empty array
# - check if size of array is even if not return false
# - check if first element is ( if not return false
# - check if firts and last are different

def pairwise_balance?(arr)
  n = arr.size / 2
  0.upto(n-1) { |i| return false if arr[i] == arr[-(i+1)]}
  true
end

def balanced?(str)
  par_arr = []
  str.chars.each { |char| par_arr << char if char =~ /[()]/ }
  return true if par_arr.empty?
  (par_arr.size.odd? || par_arr[0] != "(") ? false : pairwise_balance?(par_arr)
end

# Launch School Solution (flag method)
# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end
#
#   parens.zero?
# end

# p pairwise_balance?(['a', 'b', 'c', 'c', 'b', 'a'])
# p pairwise_balance?(['a', 'c', 'b', 'a', 'b', 'c'])

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
