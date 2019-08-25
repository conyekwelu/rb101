# CORE CONCEPTS
# - print allows user entry in same line as prompt unlike puts

# ============================================================
# puts "Teddy is #{rand(20..199)} years old!"
#
# def age_declaration(name="Teddy")
#   puts "Enter your name: "
#   name = gets.chomp
#   name = "Teddy" if name.empty?
#   puts "#{name} is #{rand(20..199)} years old!"
# end
#
# age_declaration()

# ============================================================
# SQMETERS_TO_SQFEET = 10.7639
# puts "Enter the length of the room in meters: "
# length = gets.chomp.to_f
# puts "Enter the width of the room in meters: "
# width = gets.chomp.to_f
# area_sqm = (length * width).round(2)
# area_sqf = (area_sqm * SQMETERS_TO_SQFEET).round(2)
# puts "The area of the room is #{area_sqm} square meters (#{area_sqf} square feet)."

# Tip Calculator ============================================================
print "What is the bill? "
bill = gets.chomp.to_f
print "what is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip = (bill * tip_percentage / 100).round(1)
total = (bill + tip).round(1)
puts "the tip is #{tip}"
puts "the total is #{total}"

# When will I Retire? =========================================================
# print "What is your age? "
# age = gets.chomp.to_i
#
# print "At what age would you like to retire? "
# retirement_age = gets.chomp.to_i
#
# years_to_work = retirement_age - age
# current_year = Time.now.year
# retirement_year = current_year + (years_to_work)
#
# puts "It's #{current_year}. You will retire in #{retirement_year}."
# puts "You have only #{years_to_work} years of work to go!"
#
# Greeting a user ============================================================
# print "What is your name? "
# name = gets.chomp
#
# if name.end_with?("!") # can also use name[-1] == "!"
#   puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}"
# end

# Odd Numbers ============================================================
# (1..99).each {|i| p i if i.odd?}
# 1.upto(99) { |i| p i if i.odd? }
# (1..99).step(2) { |n| puts n }

# Even Numbers
# (1..99).each {|i| puts i if i.even?}
#
# value = 1
# while value < 99 do
#   puts value if value % 2 == 0
#   value += 1
# end

# for i in (1..99) do
#   puts i if i.even?
# end

===Create input validation for this piece of code ===
OPERATIONS = {"s" => "sum", "p" => "product"}

puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

result =  case operator
          when "s"
            (1..num).reduce(:+)
          when "p"
            (1..num).reduce(:*)
          end

puts "The #{OPERATIONS[operator]} of the integers between 1 and #{num} is #{result}."
============================================================

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

"BOB", "BOB"
save_name points to the same object that name is pointing to
we modify the object when we called the destructive method upcase! on it
=============================================================
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
both arrays reference the same objects.
