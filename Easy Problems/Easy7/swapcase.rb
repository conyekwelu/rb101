# Swap Case
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.
#
# You may not use String#swapcase; write your own version of this method.
#
# input - string
# output - string with cases swapped
#
# rule - new string
# data structure - collection
# algorithm
# swapcase method
# - convert string to array of words
# - iterate over array of character in words and swap_character_case
# - combine charcaters to words
# - combine words to sentences

# swap_character_case
# - if downcase change to upcase
#   if upcase change to downcase

# def swap_character_case(chr)
#   if ("A".."Z").to_a.include?(chr)
#     chr.downcase
#   elsif ("a".."z").to_a.include?(chr)
#     chr.upcase
#   else
#     chr
#   end
# end

def swap_character_case(chr)
  chr =~ /[a-z]/ ? chr.upcase : chr =~ /[A-Z]/? chr.downcase : chr
end

# if char =~ /[a-z]/
#   char.upcase
# elsif
#   char.downcase
# else
#   char
# end

# def swapcase(str)
#   str.split.map do |word|
#     word.chars.map {|chr| swap_character_case(chr)}.join
#   end.join(" ")
# end

def swapcase(str)
  str.chars.map {|chr| swap_character_case(chr)}.join
end

# p swap_character_case("A")
# p swap_character_case("a")
# p swap_character_case("-")
# Example:

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
