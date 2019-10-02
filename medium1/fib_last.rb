# Fibonacci Number last Digit
#
# input - integer
# output - integer
#
# rules: output integer is last digit of the input fibonacci term
#
# data structure: numeric (integer)
# algorithm:
# - find the nth term
# - get the last digit
# - use divmod(10) and return the remainder
#


def fibonacci(n)
  return 1 if n <= 2
  num1, num2 = [1, 1]
  index = 2
  while n > index
    running_total = num1 + num2
    num1, num2 = num2, running_total
    n -= 1
  end
  running_total
end

def fibonacci_last(n)
  x, y = fibonacci(n).divmod(10)
  y
end

# Launch School
def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

def fibonacci_last(n)
  fibonacci(n) % 10
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4
