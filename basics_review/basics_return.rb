CORE CONCEPTS
- every method returns the evaluated result, or return value, of the last line that is executed.
- return expression exits a method (doesn't process anything after)
- use p to print to console instead of puts to make "nil" visible


Breakfast, Lunch, or Dinner? (Part 1)
- prints "Breakfast". because the function returns "Breakfast" which the puts command then prints to the console

Breakfast, Lunch, or Dinner? (Part 2)
- prints "Evening". because the function returns "Evening" which the puts command then prints to the console

Breakfast, Lunch, or Dinner? (Part 3)
- prints "Breakfast". because the function explicitly returns "Breakfast" which the puts command then prints to the console

Breakfast, Lunch, or Dinner? (Part 4)
- prints both "Dinner" and "Breakfast". because the function explicitly returns "Breakfast" which the puts command then prints to the console and the function prints "Dinner" to the screen when called

Breakfast, Lunch, or Dinner? (Part 5)
- prints "Dinner" and "nil". because the function returns "nil" which the p command then prints to the console and the function prints "Dinner" to the screen when called

Breakfast, Lunch, or Dinner? (Part 6)
- prints "Breakfast" because the function returns "Breakfast" explicitly and stops processing the method after the return statement

Counting Sheep (Part 1)
- it will print 0..5, 5 being the return value of the times method and main method and 0..4 being the evaluation of sheep through each iteration.

Counting Sheep (Part 2)
- it will print 0..4, 10 being the return value of the main method and 0..4 being the evaluation of sheep through each iteration.

Counting Sheep (Part 3)
- it will print 0..2, nil being the return value of the main method (no return value specified) and 0..2 being the evaluation of sheep through each iteration.

Tricky Number
- return number = 1, which puts then prints to the screen.
