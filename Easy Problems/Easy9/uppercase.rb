# Uppercase Check
# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.
#
# input - string
# output - boolean - true if all alphabetic chars are uppercase
#
# data structure - array, string
# algorithm
# strip input string of non-alphabetic characters
# convert string to array of characters
# iterate over that array of characters and check if all are uppercase
# return true or false

def uppercase?(str)
  clean_str = str.gsub(/[^A-Za-z]/, "")
  clean_str.chars.all? { |e| e == e.upcase }
end

LS
def uppercase?(string)
  string == string.upcase
end
# Examples:

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
