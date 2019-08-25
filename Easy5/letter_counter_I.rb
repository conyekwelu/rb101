# ==============Letter Counter (Part 1)==============
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
#
# Words consist of any string of characters that do not include a space.
#
# input - string with one or more separated words
# output - hash with key, value  == word count, number of occurences in input
#
# data structure - collection (array, hash)
#
# algorithm - initalize hash
#           - split the input sentence by space and store in an array
#           - iterate through collection
#           - for each item store the count as key and intialize counter if first instance of count or update counter if subsequent instance
#           - return hash

def word_sizes(input_string)
  word_counter = Hash.new(0)

  input_string.split(" ").each do |word|
    current_key = word.size
    word_counter[current_key] += 1
  end

  word_counter
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
