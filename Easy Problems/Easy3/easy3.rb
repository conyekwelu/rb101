=begin
============== Redo using a loop and validation==== Searching 101
num_list = []
puts "==> Enter the 1st number:"
num_list << gets.chomp.to_i
puts "==> Enter the 2nd number:"
num_list << gets.chomp.to_i
puts "==> Enter the 3rd number:"
num_list << gets.chomp.to_i
puts "==> Enter the 4th number:"
num_list << gets.chomp.to_i
puts "==> Enter the 5th number:"
num_list << gets.chomp.to_i
puts "==> Enter the last number:"
last_num = gets.chomp.to_i

if num_list.include?(last_num)
  puts "The number #{last_num} appears in #{num_list}."
else
  puts "The number #{last_num} does not appear in #{p num_list}."
end

===============Arithmetic Integer====================Redo with prompt abstracted + integer validation

puts "==> Enter the first number:"
num1 = gets.chomp.to_i
puts "==> Enter the second number:"
num2 = gets.chomp.to_i

puts "==> #{num1} +  #{num2} =  #{num1 + num2}"
puts "==> #{num1} -  #{num2} =  #{num1 - num2}"
puts "==> #{num1} *  #{num2} =  #{num1 * num2}"
puts "==> #{num1} /  #{num2} =  #{num1 / num2}"
puts "==> #{num1} %  #{num2} =  #{num1 % num2}"
puts "==> #{num1} ** #{num2} =  #{num1 ** num2}"

===============Counting the Number of Characters====================
CORE CONCEPT: use backslash to escape characters to print
print "Please write word or multiple words: "
input = gets.chomp

char_count = input.delete(" ").size

puts "There are #{char_count} characters in \"#{input}\"."
puts "#{string} has #{string.count('^ ')} characters"

=============== Multiplying Two Numbers====================
Create a method that takes two arguments, multiplies them together, and returns the result.

def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15

===============Squaring an argument ====================
def square(num)
  multiply(num, num)
end

puts square(5)
puts square(-8)

extended function to take argument for exponents
def power_to_the_n(num, power)
  counter = 1
  current_num = num
  loop do
    current_num = multiply(current_num, num)
    counter += 1
    break if counter == power
  end
  current_num
end

def power_to_the_n(num, power)
  array = [num] * power
  result = 1
  array.each do |x|
    result = multiply(result, x)
  end
  result
end

def power_to_the_n(num, power)
  array = [num] * power
  array.reduce(:*)
end

puts power_to_the_n(9, 3)

=============== Exclusive Or====================
def xor?(a, b)
  if a == true && b == false
    return true
  elsif a == false and b == true
    return true
  else
    return false
  end
end

def xor?(a, b)
  return true if (a == true && b == false) || (a == false && b == true)
  false
end

def xor?(a, b)
  return true if (a && !b) || (!a && b)
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false


=============== Odd Lists ====================
method
input - array
output - array with odd elements  - 1st, 3rd, 5th, ...

algorithm - iterate through original array and select elements with index 0, 2, 4, 6, 8

def oddities(array)
  result = []
  array.each_with_index do |element, index|
  end
  result << element if index % 2 == 0
  result
end

def oddities(array)
  result = []
  counter = 0

  loop do
    break if counter >= array.size
    result << array[counter]
    counter += 2
  end

  result
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []


=============== Palindromic Strings (Part 1) ====================
method
input - string
output - boolean
algorithm - to check if palindrome (case, punctuation and spaces important)
            A palindrome reads the same forward and backward.


def palindrome?(string)
  string == string.reverse
end


puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

=============== Palindromic Strings (Part II) ====================

main challenge was looking for a nice way to deal with the non-alphanumeric characters

  method
  input - string
  output - boolean
  algorithm - to check if palindrome (case, punctuation and spaces important)
              A palindrome reads the same forward and backward.

.downcase.gsub(/[^a-z0-9]/i, '') can remove all non alphanumeric
def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'z').each { |digit| characters << digit }
  word = string.downcase.chars.select {|x| characters.include?(x)}.join()
  palindrome?(word)
end

def real_palindrome?(string)
  word = string.downcase.gsub(/[^a-z0-9]/i, '')
  palindrome?(word)
end

def real_palindrome?(string)
  word = string.downcase.delete('^a-z0-9')
  palindrome?(word)
end


puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
=end
# =============== Palindromic Strings (Part II) ====================

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(num)
  num = num.to_s
  palindrome?(num)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
