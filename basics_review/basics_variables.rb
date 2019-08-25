CORE CONCEPT -
Numbers are immutable while strings are mutable
Method definitions are self-contained with respect to local variables [exception is CONSTANT variables]
Blocks can access and modify local variables defined outside the block

# my_value(a) is going to return b = 17 but because we havent used a puts nothing will print to screen. puts a will print 7 to the screen because the function my_value(a) does not mutate a

# my_value(a) is going to return shadow a = 17 but because we havent used a puts nothing will print to screen. puts a will print 7 to the screen because the function my_value(a) does not mutate a

# the function assigns the parameter to shadow a. so my_value(a + 5) returns shadow a = 12. puts a will print 7 to the screen as it is unchanged
#
# function my_value(a) mutates a by assigning "-" to b[2] therefore puts a prints a mutated version of a. []= is a mutative method call within the my_value function
#
# In part 5, b is set to reference the same string object pointed to by a but not modify it. assignment however creates a NEW object
#
# part 6 will throw up an error. the method call tries to assign an object to b but that object does not exist within the method
#
# part 7 will print a equals 3, because blocks can access global variables
#
# part 8 throws up an error because a has not been initially defined. implication being that you cannot create a global variable with a block?
#
# part 9 will print a = 7, because the block creates and modifies shadow a without changing real a.
#
# part 10, will result in error message because global a is not visible within the block buried within the method - CORE CONCEPT 2.
