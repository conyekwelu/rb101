# Lettercase Counter
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.
#
# input - string
# output - hash with three key value pairs : n: lower case, n uppercase, n neither
#
# data structure - collection (array, hash)
# algorithm
# - intialize result hash with default value of 0
# - convert input string to collection of characters
# - iterate over collection and for each element
# - if uppercase, update uppercase
#   if lowercase, update lowercase
#   else update  neither
# return result hash
#
# Best to intialize uppercase and lower case character constants
UPPER_CASE = ("A".."Z").to_a
LOWER_CASE = ("a".."z").to_a

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if UPPER_CASE.include?(char)
      result[:uppercase] += 1
    elsif LOWER_CASE.include?(char)
      result[:lowercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

# def letter_case_count(string)
#   result = {}
#   result[:uppercase] = string.count("/[A-Z]/")
#   result[:lowercase] = string.count("\\^a-z")
#   result[:neither] = string.count("/[^A-Za-z]/")
#   result
# end

# Examples

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
