============ASCII String Value============
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.

The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

input - String
output - integer

data structure - array

algorithm
- convert string to array of characters
- iterate over the array and replace each char with its ASCII value
- sum up the ASCII values in the array

def ascii_value(string)
  # return 0 if string.empty?
  string.chars.map(&:ord).sum
end

# reduce returns nil in the face of an empty array

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

.chr is the opposite of .ord
