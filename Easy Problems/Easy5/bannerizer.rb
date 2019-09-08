# ==========Bannerizer================
# Write a method that will take a short line of text, and print it within a box.
#
# input - string
# output - print to screen of input string in box
#
# data structure - string
#
# algorithm
# - initialize empty box using characters
# - insert box for entry of input string
# - allow box width to vary by number of characters of input string

def print_in_box(str)
  edge = "-" * str.size
  space = " " * str.size
  puts "+-#{edge}-+"
  puts "| #{space} |"
  puts "| #{str} |"
  puts "| #{space} |"
  puts "+-#{edge}-+"
end

print_in_box("")

# Example:
#
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# Further Exploration
# Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.
