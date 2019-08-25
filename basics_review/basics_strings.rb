CORE CONCEPTS



Create a String
empty_string = ""
empty_string = String.new

Quote Confusion
puts "It's now 12 o'clock."
puts %Q(It's now 12 o'clock.)

Ignoring Case
name = "Roger"
puts name.downcase == "RoGer".downcase
puts name.casecmp("RoGer") == 0 #regardless of case
puts name == "DAVE"
puts name.casecmp("DAVE") == 0

Dynamic String
name = 'Elizabeth'

puts "Hello, #{name}!"

Combining Names
first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"
puts full_name

Tricky Formatting
state = 'tExAs'
state.capitalize!
puts state

Goodbye, not Hello
greeting = 'Hello!'
greeting.gsub!("Hello", "Goodbye")
puts greeting

Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
for letter in alphabet
  puts letter
end
OR
puts alphabet.split("") #split returns an array

Pluralize
words = 'car human elephant airplane'
words.split(" ").each { |word| puts word + "s" }

Are You There?
colors = 'blue pink yellow orange'
puts colors.include?("yellow")
puts colors.include?("purple")
