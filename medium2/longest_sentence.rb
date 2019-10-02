# Longest Sentence
# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.
#
# input - string
# output - string of longest sentence
#
# data structure - collection
#
# algorithm:
# - split the text into sentences and store sentences in collection
# - iterate over all the sentences(helper) and check sentence length
#     split each sentence into words
#     count the number of words
# - return longest sentence

# def longest_sentence(str)
#   sentences = str.split('.')
#   sentence_lengths = sentences.map { |e| sentence_length(e) }
#   max_length = sentence_lengths.max
#   max_length_index = sentence_lengths.find_index(max_length)
#   long_sentence = sentences[max_length_index]
#
#   p max_length
#   p long_sentence
# end

# refactored with max_by
def longest_sentence(str)
  sentences = str.split(/\.|\?|!/) # split(/[.!?]/)
  largest_sentence = sentences.max_by { |e| sentence_length(e) }.strip
  p sentence_length(largest_sentence)
  p largest_sentence
end

def sentence_length(sentence)
  sentence.split.size
end

lincoln_speech = File.read("lincoln.txt")
frankenstein = File.read("frankenstein.txt")

# longest_sentence("for the people, shall. not perish! from the earth.")
longest_sentence(lincoln_speech)
longest_sentence(frankenstein)
