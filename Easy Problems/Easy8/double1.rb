# Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which every character is doubled.
#
# input - string
# output - string with every character doubled
#
# rule - new string
# data structure - array
# algorithm
# - initialize empty array
# - convert string to array fo characters
# - iterate over array and multiply every character by two
# - send result to empty array
# - join characters in newly populated array
# - return string

def repeater(str)
  str.chars.map { |chr| chr * 2}.join
end

# def repeater(str)
#   result = ''
#   str.chars.each { |chr| result << chr * 2}
#   result
# end

# Examples:

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
