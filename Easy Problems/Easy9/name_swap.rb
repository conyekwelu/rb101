# Name Swapping
# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.
#
# input - string
# output - string
#
# data structure - array
# algorithm
# - split string into array of first and last names
# - reverse array
# - join names with , as separator

def swap_name(name)
  name.split.reverse.join(', ')
end

# Examples

p swap_name('Joe Roberts') == 'Roberts, Joe'
