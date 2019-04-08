[1, 2, 3].select do |num|
  num > 5
  'hi'
end
# returns [1, 2, 3]

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# returns 2
[1, 2, 3].reject do |num|
  puts num
end
# returns [1, 2, 3]
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# returns {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
hash = { a: 'ant', b: 'bear' }
hash.shift
# returns [a:, 'ant']
['ant', 'bear', 'caterpillar'].pop.size
#returns 11
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
# block returns true, false, true
# any returns true
take(n) -> new array
returns first n elements from an array
arr = [1, 2, 3, 4, 5]
arr.take(2)
# returns [1, 2]
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
# returns [nil, 'bear'] map always returns an array
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
# returns [1, nil, nil]
