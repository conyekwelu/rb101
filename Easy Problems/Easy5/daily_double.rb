# ==================ddaaiillyy ddoouubbllee==================
# Write a method that
# takes a string argument and
# returns a new string that
#
# contains the value of the original string with all consecutive duplicate characters collapsed into a single character.
#
# implicit requirement - new string
#
# data structure - array
# algorithm:
# - initialize new array object to hold unique characters
# - convert string to array of characters
# - iterate over array of character
# - add character to new array object if previous character was different
# - join characters in new array object into string
#
def crunch(string)
  crunch_str = []
  string.chars.each {|char| crunch_str << char unless char == crunch_str.last}
  crunch_str.join()
end

def crunch(string)
  string.chars.each_with_object("") do |char, crunch_str|
    crunch_str << char unless char == crunch_str[-1]
  end
end


# ===========Launch School Solution used similar algorithm but data structure of string=======================

# Examples:

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# Lessons: call Array#last

# Futher exploration use regexp
