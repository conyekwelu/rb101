Question 1
1
2
2
3
because numbers.uniq does not mutate the original array

Question 2
1 - comparing two items specifically saying they are not equal
2 - converting a variable to false (opposite of their boolean equivalent)
3 - using the mutating or destructive version of a method
4 - ternary?
5 - using a method that returns a boolean
6 - converting a variable to true (boolean equivalent)

Question 3
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')
puts advice

Question 4
# both these methods mutate the caller
numbers =[1, 2, 3, 4, 5]
numbers.delete_at(1) => deletes 2 (element at index 1)
numbers.delete(1) => deletes first instance of 1 in the array

Question 5
(10..100).include?(42)
(10..100).cover?(42)

Question 6
famous_words = "seven years ago..."
"Four score and" + " " + famous_words
"Four score and " << famous_words
famous_words.prepend("Four score and ")

Question 7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
p flintstones

Question 9
flintstones = { "Fred" => 0,
                "Wilma" => 1,
                "Barney" => 2,
                "Betty" => 3,
                "BamBam" => 4,
                "Pebbles" => 5
              }
flinstones.to_a[2]
flinstones.assoc("Barney")
