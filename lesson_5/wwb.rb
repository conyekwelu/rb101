# Working with Blocks
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
