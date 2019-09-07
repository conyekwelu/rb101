# The End Is Near But Not Here
# Write a method that returns the next to last word in the String passed to it as an argument.
#
# Words are any sequence of non-blank characters.
#
# You may assume that the input String will always contain at least two words.
#
# input - a sentence with at least two words
# output- 2nd to last word
#
# data structure - array
# algorithm
# - convert sentence/string of words into array with different words
# - return second to last item in array

def penultimate(str)
  str.split(' ')[-2]
end

# Examples:

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

Edge cases for middle word
- sentences with even number of words
- one word sentence
- two word sentence


def middle_word(str)
  words_array = str.split(' ')
  index = (words_array.size/2).floor if array.size.odd?
  case words_array.size % 2
  when 0
    puts "no middle word - even number of words in argument"
  when 1
    words_array[index]
  end
end
