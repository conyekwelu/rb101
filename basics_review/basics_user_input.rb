CORE CONCEPTS
- initialize before the loop/block if you need the variable outside the loop
- define functions with a ? ending if you intend for them to return booleans- - when you type the same thing twice, a function might be more efficient


1. Repeat after me

puts ">> Type anything you want:"
user_input = gets.chomp
puts user_input

2. Your age in months

puts ">> What is your age in years?"
user_input = gets.chomp.to_i
puts "you are #{user_input * 12} months old."

3. Print something

puts ">> Do you want me to print something?(y/n)"
answer = gets.chomp
puts "something" if answer =="y"

4. Print Something II

answer = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  break if %w(y n).include?(answer)
  puts "Invalid input! please enter y or n"
end
puts "something" if answer =="y"

5. Launch School Printer I

answer = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  answer = gets.chomp.to_i
  break if answer >= 3
  puts ">> That's not enough lines."
end

answer.times{puts "Launch School is the best!"}
OR
while answer > 0
  puts "Launch School is the best!"
  answer -= 1
end

6. Passwords
PASSWORD = "SecreT"

loop do
  puts ">> Please enter your password:"
  pass = gets.chomp
  break if pass == PASSWORD
  puts ">> Invalid password!"
end
puts "Welcome!"

7. User Name and Password
USERNAME = "admin"
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  user_name = gets.chomp

  puts ">> Please enter your password:"
  pass = gets.chomp

  break if user_name == USERNAME && pass == PASSWORD
  puts ">> Authorization failed!"
end
puts "Welcome!"

8. Dividing Numbers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed"
end
loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if denominator == "0"
    puts ">> Invalid input. A denominator of 0 is not allowed"
  else
    break if valid_number?(denominator)
    puts ">> Invalid input. Only integers are allowed"
  end
end
result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

9. Launch School Printer II

loop do
  input_string = nil
  number_of_lines = nil
  loop do
  puts '>> How many output lines do you want? Enter a number >= 3: (Q to quit)'

  input_string = gets.chomp.downcase
  break if input_string  == "q"

  number_of_lines = input_string.to_i
  break if number_of_lines >= 3

  puts ">> That's not enough lines."
  end
  break if input_string  == "q"

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end

10. Opposites Attract
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end
end

num1 = nil
num2 = nil

loop do
  num1 = read_number
  num2 = read_number
  break if num1 * num2 < 0
  puts ">> Sorry. One integer must be positive, one must be negative"
  puts ">> Please start over"
end

result = num1 + num2
puts "#{num1} + #{num2} is #{result}"
