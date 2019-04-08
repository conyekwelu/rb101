=begin
# Question 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
input is array
output is hash where names are keys and output is array position

flintstone_hash = {}
flintstones.each_with_index do |item, index|
  flintstone_hash[item] = index
end
flintstone_hash

# Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
input is hash
output is integer

total_age = 0
ages.each do |key, value|
  total_age += value
end
total_age
# ages.values.inject(:+)

# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! do |key, value|
  value < 100
end
# ages.keep_if { |_, age| age < 100 }

# Question 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
age_min = ages.values[0]
ages.each do |key, value|
  if value < age_min
    age_min = value
  end
end
age_min
# ages.values.min

# Question 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index(flintstones.select{|name| name.start_with?('Be')}[0])
p flintstones.index { |name| name[0, 2] == "Be" }
# you can call a block on index

# Question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  flintstones[index] = name[0, 3]
end

p flintstones
flintstones.map! { |name| name[0,3] }


# Question 7
input is a string
output is a hash with each character and its frequency

iterate through the string
add each character to hash as key, or increment if already existing

statement = "The Flintstones Rock"
freq = {}
counter = 0

while counter < statement.length do
  if freq.include?(statement[counter])
    freq[statement[counter]] += 1
  else
    freq[statement[counter]] = 1
  end
  counter += 1
end
p freq


# Question 9
words = "the flintstones rock"
def titleize (sentence)
  new_ary = sentence.split(" ")
  new_ary.each {|word| word.capitalize!}
  new_ary.join(" ")
end

p titleize(words)
# words.split.map { |word| word.capitalize }.join(' ')

=end

# Question 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |key, value|
  if value["age"] > 65
    value["age_group"] = "senior"
  elsif value["age"] > 17
    value["age_group"] = "adult"
  elsif value["age"] > 0
    value["age_group"] = "kid"
  end
end

p munsters
