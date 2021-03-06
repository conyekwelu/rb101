# Question 1
arr = ['10', '11', '9', '7', '8'].sort do |a, b|
  b.to_i <=> a.to_i
end
# Question 2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |title|
  title[:published].to_i
end
# Question 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# arr1[2][1][3]
arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# arr2[1][:third][0]
arr3 = [['abc'], ['def'], {third: ['ghi']}]
# arr3[2][:third][0][0]
hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# hsh1['b'][1]
hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# hsh2[:third].keys[0] or hsh2[:third].key(0)

# Question 4
arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4
hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4

# Question 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each do |munster, data|
  total_male_age += data["age"] if data["gender"] == "male"
end
p total_male_age

# Question 6
munsters.each do |munster, data| #can use each_pair
  puts "#{munster} is a #{data["age"]}-year-old #{data["gender"]}"
end

# Question 8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

result = ''
hsh.each do |key, value|
  value.each do |str|
    word = str.chars
    word.each do |char|
      if "aeiou".include?(char)
        result << char
      end
    end
  end
end
p result
#Differences - combine both lines with 'word', one line if statement, predefined vowels

# Question 9
#input - Given this data structure,
#output - return a new array of the same structure
#         but with the sub arrays being ordered
#       (alphabetically or numerically as appropriate) in descending order.
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
arr.map do |sub|
  sub.sort{ |a,b| b <=> a }
end

# Question 10
# input - Given the following data structure and without modifying the original array
# output - use the map method to return a new array
#          identical in structure to the original
#           but where the value of each integer is incremented by 1.
origin = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
origin.map do |hash|
  for k,v in hash do
    hash[k] = v + 1
  end
end

# Question 11
# input - Given the following data structure and without modifying the original array
# output - use the select method to return a new array
#          identical in structure to the original
#           but with only multiples of 3
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr.map do |sub|
  sub.select {|x| x % 3 == 0}
end

arr.map do |sub|
  sub.reject {|x| x % 3 != 0}
end

# Question 12
# input - Given the following data structure - array
# output - wihtout using to_h method return a hash
#          identical in structure to the original
#           but with only multiples of 3
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
arr.each_with_object({}) do |element, hash|
  hash[element.first] = element.last
end

hsh = {}
arr.each do |element|
  hsh[element[0]] = element[1]
end
hsh

# Question 13
# input - Given the following data structure - array
# output - a new sorted array
#          sub array sorting should only consider odd numbers
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr.sort_by do |element|
  element.select{|x| x.odd?}
end

# Question 14
# input - Given the following data structure - hash
# output - a new array
#          contain only fruit colors and veg sizes
#          sizes - uppercase : colors capitalized
#[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh = { 'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'}}

result = []
hsh.each do |fruit, data|
  if data[:type] == 'fruit'
    result << data[:colors].map{|x| x.capitalize}
  elsif data[:type] == 'vegetable'
    result << data[:size].upcase
  end
end
result

# can also do below because map returns an array from a hash
hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

# Question 15
# input - array of hashes
# output - a new array of hashes
#          contain only hashes with all integers even

arr = [{a: [1, 2, 3]},
       {b: [2, 4, 6], c: [3, 6], d: [4]},
       {e: [8], f: [6, 10]}]

arr.select do |sub_hash|
  sub_hash.all? do |_, value|
    value.all?{|x| x.even?}
  end
end
# HT - call select on any collection that you want a subset of.

# Question 16

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
