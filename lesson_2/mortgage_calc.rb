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
def prompt(message)
  puts("=> #{message}")
end

def valid_number(number)

end

prompt("Welcome to the repayment estimator! Please enter your name: ")
name = ''
loop do
  name = gets.chomp
  if name.empty?
  prompt('Please enter a valid name')
  else
    break
  end
end

prompt("Hi #{name}")

#inputs
prompt("How much do you intend to borrow: ")
amount = gets.chomp
#validate input

prompt('What is the Annual Percentage Rate (amount in %): ')
rate = gets.chomp.to_f / 100
#validate input

prompt'What is the duration of the loan in months? '
tenor = gets.chomp
#validate input

#calculation
prompt('computing your monthly repayment...')
p = amount.to_i
j = rate / 12
n = tenor.to_i

m = p * (j / (1 - (1 + j)**(-n)))

#output
prompt("Your expected monthly repayment on the loan is #{m}")
prompt("Do you want to perform another calculation? (Y to calculate again)")
prompt("Thanks for using the calculator!")
