

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end


def fibnacci(n)
  result = 1 if n <= 2
  num1, num2 = 1, 1
  index = 2
  while n > index
    running_total = num1 + num2
    n -= 1
  end
  running_total
end

# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
