## Sorting

- ordering items according to a criterion [works by comparing items in a collection in a pair-wise manner using the comparison operator `<=>`]
- performed on arrays using `.sort` or `.sort_by`.
- `.sort` returns a **new array** 
- if you compare two object with `<=>` - returns **-1, 0 or 1**. This implies `.sort` cannot work when the return value of `<=>` is *nil*

```ruby
2 <=> 1 # => 1
1 <=> 2 # => -1
2 <=> 2 # => 0
'b' <=> 'a' # => 1
'a' <=> 'b' # => -1
'b' <=> 'b' # => 0
1 <=> 'a' # => nil
```

- `String#<=>` uses the character's position in the **ASCII table** which you can check using `character.ord`
- can call `.sort` with a block. block needs two arguments and **block return value** must be **-1, 0, 1 or nil**
- `.sort_by` allows you to include a sorting criterion and returns a **new array**
- `Symbol#<=>` == `String#<=>`
- `.sort!` and `.sort_by!` are the equivalent destructive methods
- other mthods that use `<=>` include: `min` ,`max`, `minmax`, `min_by`, `max_by`and  `minmax_by`



## Nested Data Structures

- reinforces that array element update / assignment is destructive

- variables are pointers

- to create a shallow copy of an object/array, use `.dup` or `.clone` . this way you do not modify the original object when you call a method on it.

  ```ruby
  arr1 = ["a", "b", "c"]
  arr2 = arr1.dup
  arr2[1].upcase!
  
  arr2 # => ["a", "B", "c"]
  arr1 # => ["a", "B", "c"]
  
  arr1 = ["abc", "def"]
  arr2 = arr1.clone
  arr2[0].reverse!
  
  arr2 # => ["cba", "def"]
  arr1 # => ["cba", "def"]
  
  
  arr1 = ["a", "b", "c"]
  arr2 = arr1.dup
  arr2.map! do |char|
    char.upcase
  end
  
  arr1 # => ["a", "b", "c"]
  arr2 # => ["A", "B", "C"]
  ```

  modifications to the original array in the code above happened because the destructive methods (`String#upcase!` and `String#reverse!`) were called on the object *within* the array rather than the array itself.

  In the last example, `.map!` is called on the array itself hence the variables are different

- difference between `dup` and `clone` is that `clone` preserves the frozen state (`.freeze`) of the object. freezing prevents a mutable object from being modified.



## Working with Blocks

- important to not mutate the collection you are iterating through to avoid strange results. **solution:** create a clone and **iterate through clone** while **mutating original**

* useful to have a template to analyze complex blocks as shown below:

| Line | Action                | Object          | Side Effect | Return Value       | Is Return Value Used?   |
| ---- | --------------------- | --------------- | ----------- | ------------------ | ----------------------- |
| 1    | method call (`.each`) | The outer array | None        | The calling object | No, but shown on line 6 |
| 1-3  | block execution       | Each sub-array  | None        | `nil`              | No                      |



###### Example 1

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```



| Line | Action                 | Object                          | Side Effect                                 | Return Value                        | Is Return Value Used?                                |
| ---- | ---------------------- | ------------------------------- | ------------------------------------------- | ----------------------------------- | ---------------------------------------------------- |
| 1    | method call (`.map`)   | The outer array                 | None                                        | New Array [1, 3]                    | No                                                   |
| 1-4  | block execution        | Each sub-array                  | None                                        | The first element of each sub-array | Yes, used by `.map` for transformation               |
| 2    | method call (`.first`) | Each sub-array                  | None                                        | The first element of each sub-array | Yes, used by `puts`                                  |
| 2    | method call (`puts`)   | Element at index 0 of sub-array | Output string representation of the integer | `nil`                               | No                                                   |
| 3    | method call (`.first`) | Each sub-array                  | None                                        | The first element of each sub-array | Yes, used to determine the return value of the block |



###### Example 2

```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```



| Line  | Action                | Object                     | Side Effect                                                  | Return Value                        | Is Return Value Used?                              |
| ----- | --------------------- | -------------------------- | ------------------------------------------------------------ | ----------------------------------- | -------------------------------------------------- |
| 1     | Variable assignment   | n/a                        | None                                                         | Original array                      | No                                                 |
| 1     | method call (`.each`) | The outer array            | None                                                         | The calling object                  | Yes, assigned to variable `my_arr`                 |
| 1- 7  | Outer block execution | Each sub-array             | None                                                         | Each sub-array                      | No                                                 |
| 2     | method call (`.each`) | Each sub-array             | None                                                         | The calling object [each sub-array] | Yes, used to determine return value of outer block |
| 2 - 6 | Inner block execution | Elements of each sub-array | None                                                         | nil                                 | No                                                 |
| 3 - 5 | if statement          | Elements of each sub-array | Output string representation of the integer if greater than 5 | nil                                 | Yes, used by `puts`                                |

##### Example 3

```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```



| Line  | Action                | Object                     | Side Effect | Return Value                                                 | Is Return Value Used?                                        |
| ----- | --------------------- | -------------------------- | ----------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1     | method call (`.map`)  | The outer array            | None        | new Array [ [2, 4,], [6, 8] ]                                | No                                                           |
| 1- 5  | Outer block execution | Each sub-array             | None        | New transformed array                                        | Yes, used to determine array returned above                  |
| 2     | method call (`.map`)  | Each sub-array             | None        | new Array consisting of doubled sub-array for each iteration [2, 4] and [6, 8] | Yes, used to determine return value of outer block           |
| 2 - 4 | Inner block execution | Elements of each sub-array | None        | Integer `num * 2`                                            | Yes, used to determine return value of the inner `.map` call |
| 3     | expression `num * 2`  | n/a                        | None        | Integer `num * 2`                                            | Yes, used to determine return value of inner block           |



##### Example 4

```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```



| Line  | Action                            | Object                 | Side Effect | Return Value | Is Return Value Used?                                    |
| ----- | --------------------------------- | ---------------------- | ----------- | ------------ | -------------------------------------------------------- |
| 1     | method call (`.select`)           | The Array object       | None        | new Array    | No                                                       |
| 1- 5  | Outer block execution             | Each hash within array | None        | Boolean      | Yes, used to determine array returned above              |
| 2     | method call (`.all?`)             | Each hash within array | None        | Boolean      | Yes, used to determine return value of outer block       |
| 2 - 4 | Inner block execution             | Elements of each hash  | None        | Boolean      | Yes, used to determine return value of the  `.all?` call |
| 3     | expression `value[0] == key.to_s` | n/a                    | None        | Boolean      | Yes, used to determine return value of inner block       |

