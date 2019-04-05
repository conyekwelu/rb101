Using
each - iteration - return value is original collection - does not consider truthiness

select - selection - return value is new collection or less - uses truthiness

map - transformation - return value is new collection - does not consider truthiness

enumerable.any? {} - return value is boolean - considers truthiness (like an or operator)

enumerable.all? {} - return value is boolean - considers truthiness (like an and operator)

each_with_index {|char, index| } -  on arrays char is array element, index is its index
                                    on hash char is array containing key value pair, and index is its index

each_with_index

first

include?

partition
