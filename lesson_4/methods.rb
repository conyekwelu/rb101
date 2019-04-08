Using
each - iteration - return value is original collection - does not consider truthiness

select - selection - return value is new collection or less - uses truthiness

map - transformation - return value is new collection - does not consider truthiness

enumerable.any? {} - return value is boolean - considers truthiness (like an or operator)

enumerable.all? {} - return value is boolean - considers truthiness (like an and operator)

each_with_index {|char, index| } -  on arrays char is array element, index is its index
                                    on hash char is an array containing each key value pair, and index is its index

each_with_object() also takes a method argument (array initialization or collection object)
                  works similarly to each_with_index when invoked on a hash object

[1, 2, 3].each_with_object([]) do |current_element, collection_object| # can call do |(key, value), hash| on a hash
  array << num if num.odd?
end

[1, 2, 3].first # => 1
first doesn't take a block, but it does take an optional argument
which represents the number of elements to return.
When no argument is given, it returns only the first element in the collection.

{ a: "ant", b: "bear", c: "cat" }.first(2)
# => [[:a, "ant"], [:b, "bear"]]

[1, 2, 3].include?(1) # => true
include? doesn't take a block, but it does require one argument.
It returns true if the argument exists in the collection and false if it doesn't.
When called on a hash, include? only checks the keys, not the values

partition
partition divides up elements in the current collection into two collections, depending on the block's return value.
[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd  # => [1, 3]
even # => [2]
also works on hash but returns array
