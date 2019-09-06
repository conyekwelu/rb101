# Staggered Caps (Part 1)
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.
#
# input - String
# output - string with case switched betweene every other character
#
# rules - new string
# data structure - array
#
# algorithm
# - convert input string to lowercase
# - convert string to array
# - swap case for characters with even index
# - join characters back into string
#
# def staggered_case(str)
#   str.downcase.chars.map.with_index do |e, i|
#     if i.even?
#       e.upcase
#     else
#       e
#     end
#   end.join
# end

def staggered_case(str)
  str.downcase.chars.map.with_index {|e, i| i.even? ? e.upcase : e}.join
end


# Example:

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
