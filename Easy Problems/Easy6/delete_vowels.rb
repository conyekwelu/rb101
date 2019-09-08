# Delete vowels
# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.
#
# input - array of strings
# output - array of strings with vowels removed
# rules: not clear if same string or same values
#
# data structure - array
#
# algorithm
# - iterate over array
# - transform each item by removing vowels
#     * convert each word to array of characters
#     * check each character if vowel to select | reject
#     * combine selected characters back to original word

def remove_vowels(array)
  array.map do |string|
    string.chars.select {|i| !'aeiou'.include?(i.downcase) }.join
  end
end


# Example:

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
