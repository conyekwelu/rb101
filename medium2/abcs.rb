
# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:
#
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.
# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.
#
# input - string (word)
# output - boolean
# rules: true if word can be spelt using only one side of the blocks
# data structure: collection - hash, array
# algorithm:
# - initialize block using a hash
# - iterate over input string
# - for each character, check if it is key in hash,
#     if key check if its value can be found in input string - return false if tr
#     if value check if its key can be found in input string

BLOCK = {
  'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
  'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
  'V' => 'I', 'L' => 'Y', 'Z' => 'M'
}
#
# def block_word?(str)
#   arr = str.upcase.chars
#   arr.each do |char|
#     if BLOCK.has_key?(char)
#       return false if arr.include?(BLOCK[char])
#     else
#       return false if arr.include?(BLOCK.key(char))
#     end
#   end
#   true
# end

def block_word?(str)
  arr = str.chars
  arr.each do |char|
    return false if BLOCK.has_key?(char) && arr.include?(BLOCK[char])
    return false if BLOCK.has_value?(char) && arr.include?(BLOCK.key(char))
  end
  true
end


# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze
#
# def block_word?(str)
#   arr = str.upcase
#   BLOCKS.all? { |e| arr.count(e) < 2}
# end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
