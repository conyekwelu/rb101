CORE CONCEPTS
- every loop needs a break (usually just before end) or break condition
- insert error messages after your break condition where necessary
- most loops require a counter variable to keep track


# Loopception - put one break just before inner end and another just before outer end
#
# Control the Loop - after the puts expression: iterations += 1, break if iterations > 5.
#
# Loop on command - just before end: break if answer == 'yes', can include an error message after break to improve ux e.g. puts 'Incorrect answer, Please answer "yes"'
#
# Say Hello: change say_hello = 5, while say_hello > 0, puts 'Hello!', say_hello -= 1. or initialize count = 0, within block: count += 1, say_hello = false if count == 5.
#
# Print While: numbers = [], while numbers.size < 5, numbers << rand(100),end, puts numbers
#
# Count up: init count = 1, until count > 10, puts count, count += 1
#
# Print until: init count = 0, until count == numbers.size,   puts numbers[count]
#   count += 1, end
#
# Runaway Loop -  to modify the loop so it stops put a break just before end
#
# That's odd: for i in 1..100,  puts i if i.odd?, end
#
# Greet your friends: for friend in friends, puts "Hello, #{friend}!", end

Loops 2
Even or Odd?
count = 1
loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5
end

Catch the Number
loop do
  number = rand(100)
  puts number

  if number.between?(0, 10)
    break
  end
end

Conditional Loop
process_the_loop = [true, false].sample
if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end

Get the Sum
loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i?
  if answer == 4
    puts "That's correct!"
    break
  end
  puts "Wrong answer. Try again!"
end

Insert Numbers
numbers = []

loop do
  puts "Enter any number:"
  input = gets.chomp.to_i
  break if numbers.size == 5
  numbers << input || numbers.push(input)
end
puts numbers

Empty the Array
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift | puts names.pop for last to first
  break if names.empty?
end

Stop Counting
5.times do |index|
  puts index
  break if index == 2
end

Only Even
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

First to Five
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if number_a < 5 && number_b < 5 | next unless number_a == 5 || number_b ==5
  puts "5 was reached!"
  break
end

Greeting
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings > 0
  greeting()
  number_of_greetings -= 1
end  
