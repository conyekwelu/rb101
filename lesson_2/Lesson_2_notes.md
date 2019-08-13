# Lesson 2

## Takeaway from Kickoff lecture

- To build applications you are thinking about architecture not syntax
- Use pseudo-code to help you map out your logic before writing any code



## Takeaway from Style Convention

Use `puts` or `gets` or `chomp` instead of:

`Kernel.puts()` or `Kernel.gets().chomp()`



## Truthiness

**Logical Operators**

| Operator | Usage                                                 |
| -------- | ----------------------------------------------------- |
| &&       | true  &&  true [a is true and b is true]              |
| \|\|     | return false if and only if all expressions are false |
|          |                                                       |

- evaluations stop executing once return value can be guaranteed
- Ruby considers objects to be "true" if they are neither `false` nor `nil`

Truthy evaluation of a variable does not mean it is equal to true:

`num = 5` => `num` will evaluate to `true` but

`num ==  true` => will evaluate to `false`



## Formalizing Pseudo-Code

Use the table below to create some kind of a flow of how you intend to solve the problem

| keyword             | meaning                              |
| :------------------ | :----------------------------------- |
| START               | start of the program                 |
| SET                 | sets a variable we can use for later |
| GET                 | retrieve input from user             |
| PRINT               | displays output to user              |
| READ                | retrieve value from variable         |
| IF / ELSE IF / ELSE | show conditional branches in logic   |
| WHILE               | show looping logic                   |
| END                 | end of the program                   |

e.g.

```reStructuredText
START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

PRINT saved_number

END
```



## Reviewing your Code - Rubocop

In your command prompt enter (you should have installed the gem):

`rubocop filename.rb`

## Method Definition

local variables that are not initialized *inside* a method definition must be defined as parameters

CONSTANT variables have lexical scope - they are everywhere





