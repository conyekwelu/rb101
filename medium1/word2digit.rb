# Word to Digit
# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
#
# input - string
# output - same string with words replaced with digits
#
# data structure -array, hash
#
# algorithm:
# - initialize a hash that maps string to digit equivalents
# - convert sentence to array of words.
# - iterate over array
# - replace each item with the hash value if it is found in hash key list
# - join words back into sentence string
# - return sentence string
#
# data structure - string, hash
#
# algorithm:
# - initialize a hash that maps string to digit equivalents
# - iterate over hash
# - for each key, check if sentence contains key
# - replace key in sentence with the hash value if found
# - return sntence string
DIGIT_HASH = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3,
                'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7,
                'eight' => 8, 'nine' => 9}

def word_to_digit(str)
  DIGIT_HASH.each{|key, value| str.gsub!(key, value.to_s) if str.include?(key)}
  str
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
