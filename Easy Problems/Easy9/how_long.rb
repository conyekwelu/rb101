# How long are you?
# Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.
#
# You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.
#
# input - string w/ words separated by spaces
# output - array with word and word size as single string element
#
# data structure - array
# algorithm
# intialize empty array
# convert string to array split by space separator
# iterate over the string array
# for each string send the string length to empty array
# zip both arrays
# iterate over zipped array and send value to reult array

def word_lengths(str)
  words = str.split(' ')
  word_sizes = words.map(&:size)
  words.zip(word_sizes).map {|one, two| "#{one} #{two}" }
end

def word_lengths(str)
  str.split(' ').map { |word| "#{word} #{word.size}" }
end




# Examples

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
