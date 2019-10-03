# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.
#
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.
#
# You may assume that the string will always contain at least one character.
#
# input - string
# output - hash with percent lowercase, percent uppercase and percent neither
#
# data structure: hash, array

# algorithm:
# - initialize empty array to hold results
# - record length of string
# - iterate over characters in input string
# - check case of each character and update hash for count of character case
# - update hash values to percentage instead of count


def upcase?(str)
  ('A'..'Z').to_a.include?(str)
end

def lowercase?(str)
  ('a'..'z').to_a.include?(str)
end

def letter_percentages(str)
  result = { lowercase: 0, uppercase: 0, neither: 0}
  length = str.size

  str.chars.each do |c|
    lowercase?(c) ? result[:lowercase] +=1 : upcase?(c) ? result[:uppercase] +=1 : result[:neither] +=1
  end

  result.keys.each { |key| result[key] = (result[key].to_f / length) * 100 }
  result
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40}
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
