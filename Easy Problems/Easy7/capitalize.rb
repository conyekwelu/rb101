# Capitalize Words
# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.
#
# You may assume that words are any sequence of non-blank characters.
#
# input - string
# output - string with first letter of every word capitalized
#
# rules - new string
# data structure - collection
#
# algorithm
# - separate the string input into an array of the words
# - iterate over the array of words
# - trasnform each word by capitalize the first letter of each word
# - join words back into string

# def word_cap(str)
#   str.split.map { |e| e.capitalize }.join(" ")
# end

def capitalizer(str)
  arr = str.downcase.chars
  arr[0].upcase!
  arr.join
end

def word_cap(str)
  str.split.map {|e| capitalizer(e)}.join(" ")
end

# def word_cap(str)
#   str.split.map(&:capitalize).join(" ")
# end

# Examples

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
