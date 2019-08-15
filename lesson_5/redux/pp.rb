# Question 1
# arr = ['10', '11', '9', '7', '8']
# arr.sort{|a, b| b.to_i <=> a.to_i}
#
# Question 2
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]
#
# books.sort_by do |book|
#   book[:published].to_i
# end
#
# Question 3
# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# arr1[2][1][3]
#
# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# arr2[1][:third][0]
#
# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# arr3[2][:third][0][0]
#
# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# hsh1['b'][1]
#
# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# hsh2[:third].keys[0]
# hsh2[:third].key(0)
#
# Question 4
# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
#
# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
#
# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4
#
# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4

# Question 5
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_male_age = 0
#
# munsters.each do |name, info|
#   total_male_age += info["age"] if info["gender"] == "male"
# end
#
# total_male_age

# munsters.map {|k, v| v["age"] if v["gender"] == "male"}.sum()
# can also use each_value

# Question 6
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
#
# munsters.each do |name, details|
#   puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}"
# end
#
# Can also use each_pair
#
# Question 7
# arr[0] == a
# arr[0] += 2 does not update a because a is a variable
#
# arr == [4, [5, 8]] => line 5
# arr[1][0] == b[0] == 5 -= a => -= 2 because b is a collection object
#
# a = 2
# b = [3, 8]
#
# Question 8
#
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
#
# vowels = []
# hsh.each do |_, value|
#   value.each do |word|
#     word.chars.each do |letter|
#       vowels << letter if "AEIOUaeiou".include?(letter)
#     end
#   end
# end
# p vowels
#
# When they say output usually means print to screen

Question 9

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort {|a, b| b <=> a}
end

Question 10
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremented_hash ={}
  hash.map do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

Question 11

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |element|
    element % 3 == 0
  end
end

Question 12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr.each_with_object({}) do |sub_arr, hash|
  hash[sub_arr[0]] = sub_arr[1]
end

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
hsh

Question 13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end


Question 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result = []

hsh.each do |fruit, details|
  if details[:type] == "fruit"
    result << details[:colors].map { |e| e.capitalize  }
  elsif details[:type] == "vegetable"
    result << details[:size].upcase
  end
end

result

hsh.map do |fruit, details|
  if details[:type] == "fruit"
    details[:colors].map { |e| e.capitalize  }
  elsif details[:type] == "vegetable"
    details[:size].upcase
  end
end

hsh.each_with_object([]) do |(fruit, details), array|
  if details[:type] == "fruit"
    array << details[:colors].map { |e| e.capitalize  }
  elsif details[:type] == "vegetable"
    array << details[:size].upcase
  end
end

Question 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |_, value|
    value.all? {|e| e.even?}
  end
end

Question 16

def generate_uuid
  uuid = ''
  sections = [8, 4, 4, 4, 12]
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  sections.each_with_index do |num, index|
    num.times {uuid += characters.sample}
    uuid += "-" unless index >= sections.size - 1
  end

  uuid
end
