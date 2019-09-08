# Double Char (Part 2)
# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
#
# input - string
# output - string
#
# rule - new string, only consonants doubled
# data stucture - string, array
# algorithm
# - initialize an array of consonants
# - initialize an empty string
# - convert input string to characters
# - iterate over chars and double if char in consonants
# - push doubled chars to empty string
# - return string

# def double_consonants(str)
#   consonants = ('a'..'z').to_a.reject {|e| "aeiou".include?(e) }
#   result = ''
#   str.chars.each {|chr| consonants.include?(chr.downcase) ? result << chr * 2 : result << chr}
#   result
# end

def double_consonants(str)
  consonants = ('a'..'z').to_a.reject {|e| "aeiou".include?(e) }
  str.chars.map {|chr| consonants.include?(chr.downcase) ? chr * 2 : chr}.join
end

# Examples:

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
