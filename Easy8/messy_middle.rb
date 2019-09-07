# Get The Middle Character
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.
#
# input - string
# output - middle character or characters [one if odd, two if even]
#
# data structure - string, array
# algorithm
# initalize index variable
# if the lenght is even, index = length/2 - 1
# if the length is odd, index = length/2
# return exactly one char if odd, and 2 if even

def center_of(str)
  index = str.size / 2
  str.size.even? ? str[index - 1, 2] : str[index]
end

# Examples:

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
