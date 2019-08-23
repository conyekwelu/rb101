# =============Letter Swap=============
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.
#
# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces
#
# input - string of words separated by spaces
# output - a string in which the first and last letters of every word are swapped
# - rules - not clear is we are returning same string or a copy
# data structure - array
#
# algorithm - make a copy of the string
#           - store words in string in a collection
#           - reverse the words in the collection
#           - replace 1st and last char for word in string with first and last char of word in collection
#           - return string

# def swap(sentence)
#   bag_of_words = sentence.split
#   sentence.split.each_with_index do |word, index|
#     bag_of_words[index][0] = word.reverse[0]
#     bag_of_words[index][-1] = word.reverse[-1]
#   end
#   bag_of_words.join(' ')
# end
#
# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end
#
# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end
#
#
#
# # Examples:
#
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'
