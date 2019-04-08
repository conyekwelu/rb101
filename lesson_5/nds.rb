Nested Data Structures (working with dup, clone and freeze)

To create a shallow copy
arr2 = arr1.dup
arr2 = arr1.clone

Diff between the two is that clone preserves the frozen state of the object

note however that if you call a destructive method on the contents of arr2
it will modify arr1 (the objects are shared)
- distinction between changing the array and changing the elements in the array

str = "abc".freeze
.freeze prevents the object from being modified (applies to only mutable objects)
does not apply to objects nested within frozen object
.frozen? checks if n object is frozen
