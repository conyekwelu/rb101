# Working with Blocks
Pro-tip: Never mutate a collection while iterating through it!
instead create a clone and mutate the array while iterating through the clone
def remove_evens!(arr)
  cloned_arr = arr.dup
  cloned_arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end


[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
#=> [[1, 2], [3, 4]]
What is the type of action being performed (method call, block, conditional, etc..)?
What is the object that action is being performed on?
What is the side-effect of that action (e.g. output or destructive action)?
What is the return value of that action?
Is the return value used by whatever instigated the action?

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# 1
# 3
# => [1, 3]
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# 18
# 7
# 12
# => my_arr = [[18,7], [3, 12]]
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
# => [[2,4], [6,8]]

# Example 7
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash| # selection
  hash.all? do |key, value| # returns true or false depending on the block
    value[0] == key.to_s #returns boolean
  end
end
# => [{c: 'cat'}]
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

# Example 8
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr| #so transformation
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
#=> [[27], ['apple']]
# Example 9
[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
#=> [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]
# Example 10
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
# => [[[2,3], [4,5]], [6, 7]]
