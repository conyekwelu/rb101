

# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# input - integer
# output - integer
#
# rules: output is sum of previous two terms in fibonacci sequence
# data structure: numeric
#
# algorithm
# - return 1 if input integer less than 2
# - initialize index at n = 2
# - initialize first and second term to one
# - initialize running total to zero
# - initialize loop with break condition of index equals input integer
# - update running total equals num one plus num two
# - update num one equals num two
# - update num two equals running total
# - return running total

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


# Launch School Solution
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)
