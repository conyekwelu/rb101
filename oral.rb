write a method that takes an array of strings, and returns an array of the same string values except with the vowels removed

input: write a list of words: green, yellow, black, white
output: list of modified words are: grn, yllw, blck, wht

data structure: strings, arrays

algorithm:
- iterate over string in the array of strings
- for each string check each character in the string
- if the character is a vowel, delete it
- return string of consonants to array

def remove_vowels(arr)
  arr.map!{ |string| string.delete!("AEIOUaeiou")}
end

remove_vowels(%w(green yellow black white)) == %w(grn yllw blck wht)
