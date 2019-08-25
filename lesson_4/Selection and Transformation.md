## Iteration, Selection, Transformation

**Selection** is picking certain elements out of the collection depending on some criterion. e.g. pick out all the odd integers from an array. 

**Transformation** is manipulating every element in the collection. e.g. increment all elements of the array by 1

Usually best practice to abstract selection / transformation to a method for convenience



## Methods

`return` value of `.each` is the **original array**. it does not care about the block return value.

`.select` evaluates the "truthiness" of the last expression in the block and `returns` a **new collection** containing the section elements.

`.map` uses the return value of the block to perform transformation instead of selection and `returns` a **new collection**.



## More Methods

`Enumerable#any` - checks 'truthiness' of the block return value to see if **any** element in the caller meets that criteria and then `returns` **"true"** or **"false"**

`Enumerable#all` - checks 'truthiness' of the block return value to see if **all** elements in the caller meet that criteria and then `returns` **"true"** or **"false"**

`Enumerable#each_with_index` - same as `.each`.  only difference is that the block takes two arguments |`element`, `index`|.  returns **original array**. [ each `element` converts to a **key-value pair** to an array when called on a hash]

`Enumerable#each_with_object` - same as `.each`. only difference is that it also takes a collection object as a method argument. `return` value is the **collection object** passed into method as argument.

```ruby
[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
# => [1, 3]
```

`Enumerable#first` - doesn't take a block and `returns` the **first element** in caller. can take optional argument for number of elements to return.

`Enumerable#include?` - doesn't take a block, requires one argument (item you are checking for). `returns` **"true"** or **"false"** if item is in caller. When called on a hash it only checks the **keys**. (alias for `Hash#key?` or `Hash#has_key?`)

`Enumerable#partition` - divides the current collection into two collections based on the blocks return value. `return` value is an **array**.

```ruby
[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]
```

`Enumerable#reject` - opposite of `.select`. returns a **new collection** that drops out the items in caller that the block evaluates as "true" (selects items that block evalutes to 'false')

