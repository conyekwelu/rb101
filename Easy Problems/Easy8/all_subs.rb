# All Substrings
# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.
#
# You may (and should) use the substrings_at_start method you wrote in the previous exercise:
#
# input - string
# output -  array of all substrings
#
# data structure - array
# algorithm
# - initialize result array
# - iterate over string
# - for each char in string to the end index find all substrings
# - pass result to result array
# - flatten result array

def substrings_at_start(str)
  str.chars.map.with_index{|_, idx| str[0..idx] }
end

def substrings(str)
  result = []
  (0..str.size - 1).each {|num| result << substrings_at_start(str[num..-1]) }
  result.flatten
end

def substrings(str)
  result = []
  0.upto(str.size - 1) do |num|
    result << substrings_at_start(str[num..-1])
  end
  result.flatten
end

# LS solution
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end


# Examples:

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
