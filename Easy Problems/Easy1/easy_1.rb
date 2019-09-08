CORE CONCEPTS
- the reverse method works for both arrays and strings
- use reduce to sum up the items in an array .reduce(:+)

Repeat Yourself
def repeat(string, integer)
  integer.times {puts string}
end

repeat("Hello", 3)

Odd
def is_odd?(integer)
  return false if integer.abs % 2 == 0
  true
end

def is_odd?(integer)
  integer % 2 == 1
end

def is_odd?(integer)
  return false if integer.abs.remainder(2) == 0
  true
end

List of Digits
def digit_list(digits)
  list = []
  digits.to_s.each_char { |chr| list << chr.to_i }
  return list
end

def digit_list(number)
number.to_s.chars.map(&:to_i)
end

How Many?
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  counter_hash = {}

  array.each do |value|
    if counter_hash.has_key?(value)
      counter_hash[value] += 1
    else
      counter_hash[value] = 1
    end
  end

  counter_hash.each {|k,v| puts "#{k} => #{v}"}
end

def count_occurrences(array)
  counter_hash = {}

  array.each do |element|
    counter_hash[element] = array.count(element)
  end

  counter_hash.each {|element, count| puts "#{element} => #{count}"}
end


def count_occurrences(arr)
  puts arr.map { |el| "#{el} => #{arr.count(el)}" }.uniq
end

count_occurrences(vehicles)

Reverse It (Part I)

def reverse_sentence(sentence)
  sentence.split(" ").reverse!.join(" ")
end

puts reverse_sentence('Reverse these words')

 Reverse It (Part II)
 def reverse_words(words)
   word_list = []
   words.split(" ").each do |word|
     word.reverse! if word.length >= 5
     word_list << word
   end
   word_list.join(" ")
 end

 def reverse_words(string)
   string.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
 end

 puts reverse_words('Professional')          # => lanoisseforP
 puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
 puts reverse_words('Launch School')

Stringy Strings

def stringy(integer)
  word_string = nil
  repeater = "10"
  if integer.even?
    word_string = repeater * (integer/2)
  else
    word_string = repeater * integer.div(2)  + "1"
  end
  word_string
end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

def stringy_opt(size, start=1)
  numbers = []

  if start == 1
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  else
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  end
  numbers.join
end

def stringy(int)
  Array.new(int) { |i| i.even? ? '1' : '0' }.join
end

puts stringy_opt(6, 0) #== '101010'
puts stringy_opt(9, 0) #== '101010101'
puts stringy_opt(4, 0) #== '1010'
puts stringy_opt(7, 0) #== '1010101'

Array Average

def average(array)
  total = 0
  array.each { |i| total += i}
  total.to_f/array.size
end

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

def average(array)
  array.sum / array.length
end

def average(arr)
  arr.reduce(:+) / arr.length.to_f
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

Sum of Digits
def sum(integer)
  total = 0
  integer.to_s.chars.map{ |i|
     total += i.to_i
   }
  total
end

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

def sum(num)
  num.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5

What's my Bonus?

def calculate_bonus(salary, bonus)
  bonus ? (salary * 0.5) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
