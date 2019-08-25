==================Alphabetical Numbers==================
Write a method that
takes an Array of Integers between 0 and 19, and
returns an Array of those Integers sorted based on the English words for each number:


input - array of integers
output - array of integers sorted based on english words

requirements not explicit - is it same array or new array?

data structure - collection - hash

algorithm - iterate over array and
          - using a dictionary, map each number to the word equivalent
          - sort new collection of word equivalents
          - iterate over collection of sorted word equivalent and replace each with numeric equivalent
          - return array of numeric equivalent



DICTIONARY = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
              5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
              14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
              17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(array)
  array.map {|e| DICTIONARY[e]}.sort.map { |e| DICTIONARY.key(e)}
end

def alphabetic_number_sort(array)
  array.sort_by {|e| DICTIONARY[e]}
end


==============Launch School Solution===================
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

exploits the fact that the index of the number matches the Number in the number_words array => I have applied this to refactor my solution

Examples:

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
