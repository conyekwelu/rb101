# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.
#
# You may (and should) use the substrings method you wrote in the previous exercise.
#
# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.


# input - string
# output - list of substrings - that are palindromes
#
# data structure - array
# algorithm
# -find all substrings
# initialize an index = 0
# convert string to chars
# iterate over character and update index upwards until == arr size - 1
# each iteration send the combined characters to the substrings arr
# repeat this iteration over all characters of the string

# - check them for palindromes
#   check if palindrome
#   - cannot be single letter
#   - string == string.reverse

# select the substrings that are palindomes

def is_palindrome?(str)
  str.size > 1 && (str == str.reverse)
end

def substrings(str)
  result = []
  0.upto(str.size - 1) do |num|
    subs = str[num..-1]
    result.concat(subs.chars.map.with_index{|_, idx| subs[0..idx]})
  end
  result
end

def palindromes(str)
  substrings(str).select {|e| is_palindrome?(e)}
end


# p is_palindome?('ada')
# p is_palindome?('madam')
# p is_palindome?('nada')

# p substrings("madam")



# Examples:

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
