# Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# input - String
# output - string with case switched betweene every other character
#
# rules - new string
        # - ignore non-alphabetic
# data structure - array
#
# algorithm
# - convert input string to lowercase
# - convert string to array
# - initialize flag as true
# - iterate over array
 # - if char convert to upcase
 #   and !flag
 # - if non char next
# - join characters back into string

def staggered_case(str)
  result = ''
  index = 0
  str.downcase.chars.each do |chr|
    index.even? ? result << chr.upcase : result << chr
    index += 1 if ('a'..'z').to_a.include?(chr)
  end
  result
end

# Example:

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
