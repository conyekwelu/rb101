#Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# Solution [1, 2,2, 3]  does not mutate original array
# also puts automatically calls to_s on argument unlike p or inspect

# Question 2
=begin
what is != and where should you use it? => comparing two different objects
put ! before something, like !user_name => negating an object
put ! after something, like words.uniq! => destructive version of method
put ? before something => ternary operator
put ? after something => return boolean
put !! before something, like !!user_name => double negation turns object into boolean equivalent
=end

#Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.gsub("important", "urgent")

puts advice
# can use gsub! to mutate receiver

# Question 4
# difference between array.delete() and array.delete_at()

# Question 5
for i in 10..100
  next if i != 42
  puts "#{i} is between 10 and 100"
end

# (10..100).cover?(42) => true

# Question 6
famous_words = "seven years ago..."
famous_words = "Four score and " + famous_words
puts famous_words

famous_words = "seven years ago..."
famous_words.prepend("Four score and ")
puts famous_words

# Question 7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
puts eval(how_deep)

# Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones
flintstones.flatten!
p flintstones

# Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2,
                "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones = Array(flintstones.select{|k, v| k == "Barney"}).flatten
p flintstones
# shorter method => flintstones.assoc("Barney")
