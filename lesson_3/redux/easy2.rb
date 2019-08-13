Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
age.has_key?("Spot")
age.key?("Spot")
# can also use member? and include? or assoc()

Question 2
munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
p ages

Question 4
advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.include?('Dino') #=> me
puts advice.match?('Dino') #=> LS

Question 5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

Question 7
flinstones.push("Dino").push("Hoppy")
flintstones + ["Dino", "Hoppy"]
flinstones.concat(["Dino", "Hoppy"])

Question 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0,advice.index('house')) #0 up to the index of house
advice.slice!(/F.*as/) #F up to and including the first instance of 'as'
# same return value as String#slice but does not mutate the caller

Question 9
statement = "The Flintstones Rock!"
statement.count('t')

Question 10
title = "Flintstone Family Members"
manual
puts " " * ((40 - title.length)/2) + title + " " * ((40 - title.length)/2)
Auto
puts title.center(40)
