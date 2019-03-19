#Question 1 to find "Spot"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")
ages.include?("Spot")
# can also use .member or .assoc

# Question 2
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.swapcase!
puts munsters_description.capitalize!
puts munsters_description.downcase!
puts munsters_description.upcase!

#Question 3 to merge
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# Question 4 to find "Dino"
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")
advice.match?("Dino")

# Question 5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6 to add "Dino"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# Question 7 to add more items
flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy)) # concat to add array

# Question 8 to shorten string
advice = "Few things in life are as important as house training your pet dinosaur."
ind = advice.index("house")
puts advice = advice[0...ind]
# advice.slice!(0, advice.index('house'))

# Question 9 to count number of lower case t's
statement = "The Flintstones Rock!"
puts statement.count('t')

# Question 10
title = "Flintstone Family Members"
puts title.center(40)
