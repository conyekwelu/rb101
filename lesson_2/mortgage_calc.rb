=begin
welcome
please enter your names

inputs:
how much are you looking to finance
what is the expected APR?
how long do you want to borrow (ie loan tenor)?

output:
expected monthly payment
=end

#Welcome
puts "Welcome to CJ's mortgage repayment estimator"
puts " Please enter your name: "

#inputs
puts "How much do you intend to borrow: "
amount = gets.chomp

puts "What is the APR (amount in %): "
rate = gets.chomp.to_f / 100

puts "What is the duration of the loan in months? "
tenor = gets.chomp

#calculation
p = amount.to_i
j = rate / 12
n = tenor.to_i

m = p * (j / (1 - (1 + j)**(-n)))

#output
puts "Your expected monthly repayment on the loan is #{m}"
