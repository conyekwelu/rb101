# Letter Counter (Part 2)
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.


def word_sizes(input_string)
  word_counter = Hash.new(0)

  input_string.split(" ").each do |word|
    word.gsub!(/[^a-z]/i, "")
    current_key = word.size
    word_counter[current_key] += 1
  end

  word_counter
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}


Further Exploration
If you haven't encountered String#delete before, take a few minutes to read up on it, and its companion String#count (you need to read about #count to get all of the information you need to understand #delete).

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
