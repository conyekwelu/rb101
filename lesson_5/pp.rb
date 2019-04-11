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
