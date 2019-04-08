[2, 5, 3, 4, 1].sort # => [1, 2, 3, 4 ,5]
The return value is a new array with the integers ordered sequentially

You can determine a string's ASCII position by calling ord on the string.
'b'.ord # => 98
 if a precedes b the a <=> b returns -1

We can also call sort with a block;
   The block needs two arguments passed to it (the two items to be compared)
   and the return value of the block has to be -1, 0, 1 or nil.

   [2, 5, 3, 4, 1].sort do |a, b|
     a <=> b
   end

sort_by is similar to sort but is usually called with a block.
The code in the block determines how the items are compared.

['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]
Here we are sorting using the character at index 1 of each string
The other characters in the strings are ignored entirely.

On a hash, sort_by takes two arguments - key, value and returns an array
