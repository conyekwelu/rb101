# =================Clean up the words=================
# Given a string that consists of some words and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).
#
# input - string with non-alphabetic characters
# output - string with non-alhabetic replaced spaces
#
# requirement - no consecutive spaces
#             - same string returned
#
# method 1 to return different string
# data structure - collection
# algorithm - convert string to array of characters
#           - iterate through array and convert non-aphabetic to spaces
#           - select characters from array but skip space if previous character was a space
#           - combine characters back to form string
#
# method 2
# data structure - string
#
# algorithm - access the string and replace non-alhabetic with spaces
#           - check recursively if 2 or more consecutive spaces and replace with single space

def cleanup(string)
  string.gsub!(/[^a-z]/i, " ") #/i makes it case insensitive

  loop do
    string.gsub!("  ", " ")
    break if !string.include?("  ")
  end
  string
end

===Launch School====
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end


====Launch School Algo II=======
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

# Examples:

p cleanup("---what's my +*& line?") == ' what s my line '
