Q1
because block return value "hi" is truthy
=> [1, 2, 3]

Q2
count uses the truthiness of the block retun value to determine which elements in the caller to evaluate
=> [3, 3]

Q3
since the block always evaluates to nil, original array is returned
=> [1, 2, 3]

Q4
method argument is hash so return value is a hash, key is first letter of collection item.
{"a" => "ant", "b" => "bear", "c" => "cat"}

Q5
shift deletes the first item in the hash object and returns it as a two item array. we can find out by looking at the documentation for Hash#shift

Q6
pop destructively removes and returns the last item in the array. size which is chained onto it is a String method that provides the character count.
=> 11

Q7
block return value is the evaluation of num.odd? ie a boolean for each element in the collection.
=> true

Q8
we can find out by reading the documentation or testing in the irb. Array#take returns the first n elements from an array
=> [1, 2]

Q9
map will return an array with the values or nil depending on the evaluation of the block
=> [nil, 'bear']

Q10
map will return either nil or the original number as puts num evaluates to nil.
=> [1, nil, nil]
