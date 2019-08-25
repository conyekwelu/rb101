CORE CONCEPTS
- Array.map iterates over an array and returns a new array with each element transformed based on the block return value
- Array.each returns the original array
- Array.select takes a boolean (or expression that evaluates to one) in the block and returns a new array with the chosen elements


New Pet
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}!"

More Than One
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2..3]
puts "I have a pet #{my_pet[0]} and a pet #{my_pet[0]}!"

Free the Lizard
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
puts "I have a pet #{my_pet[0]}!"

One Isnt Enough
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets << pets[1] # or my_pets.push(pets[1])
puts "I have a pet #{my_pet[0]} and a pet #{my_pet[0]}!"

What Color Are You?
colors = ['red', 'yellow', 'purple', 'green']
colors.each do |color|
  puts "I'm the color #{color}!"
end

Doubled
numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map do |number|
                    number * 2
                  end
p doubled_numbers

Divisible by Three
numbers = [5, 9, 21, 26, 39]
divisible_by_three =  numbers.select do |number|
                        number % 3 == 0
                      end
p divisible_by_three

Favorite Number (Part 1)
['Dave', 7, 'Miranda', 3, 'Jason', 11]
[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

Favorite Number (Part 2)
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
flat_favorites = favorites.flatten

p flat_favorites

Are We The Same?
array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2
