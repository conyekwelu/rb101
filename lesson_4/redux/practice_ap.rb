input - array
output - hash
Test case - {"Fred" => 0, ...}
Data structure - Hash
algorithm:
initialize empty hash
loop through array and pass element and index to have
return the result hash

Q1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |element, index|
  flintstones_hash[element] = index
end
p flintstones_hash

result =  flintstones.each_with_object({}) do |element, hash|
            hash[element] = flintstones.index(element)
          end
p result

Q2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each do |_, value|
  total_ages += value
end
p total_ages
p ages.values.reduce(:+)

Q3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! {|_, age| age < 100}
ages.keep_if {|_, age| age < 100}

Q4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

Q5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index{|x| x.start_with?("Be")}
flintstones.index { |name| name[0, 2] == "Be" }

Q6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flint_short = flintstones.map do |x|
                x.slice(0,3)
              end
p flint_short

flintstones.map!{|x| x[0, 3]}

Q7
statement = "The Flintstones Rock"

result = statement.chars.each_with_object({}) do |x, hash|
  if hash.has_key?(x)
    hash[x] += 1
  else
    hash[x] = 1
  end
end
p result

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

Q8
=> [1, 3] - because 3 becomes index 1 on second iteration
=> [1, 2] - because 3 and 4 removed by pop

Q9
words = "the flintstones rock"
def titleize(sentence)
  sentence.split.map!{|word| word.capitalize!}.join(" ")
end
puts titleize(words)

Q10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |person, data|
  age_group = case data["age"]
              when data["age"] > 64
                "senior"
              when (18..64).include?(data["age"])
                "adult"
              else
                "kid"
              end
  data["age_group"] = age_group
end

p munsters
