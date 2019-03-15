=begin
- Run rubocop
- make repeat calculation prompt tighter - restrict to y/n
- create methods to validate amount (valid_number), rate (valid_apr) and tenor
- make sure no zero amounts, non-negativity
- create method - display_payment_message, display_invalid_rate
=end


def prompt(message)
  puts("=> #{message}")
end

def valid_number(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def valid_amount(amount)
  valid_number(amount) && amount.to_f > 0
end

def valid_apr(apr)
  valid_number(apr) && apr.to_f > 0
end

def valid_duration(tenor)
  (valid_number(tenor) && tenor.to_i > 0) && tenor.to_i.to_s == tenor
end

def display_payment_message
  prompt("Thanks for using the calculator!")
end

prompt("Welcome to the Mortgage Calculator! Please enter your name: ")
name = ''
loop do
  name = gets.chomp
  if name.empty? || name.start_with?(' ')
  prompt('Please enter a valid name')
  else
    break
  end
end


prompt("Hi #{name}")

loop do #Main Loop
  #inputs
  amount = ''
  loop do
    prompt("How much do you intend to borrow (amount in $): ")
    amount = gets.chomp
    #validate input
    if valid_number(amount)
      break
    else
      prompt("Hmmm... That is not a valid amount")
    end
  end

  rate = ''
  loop do
    prompt('What is the Annual Percentage Rate (amount in %): ')
    rate = gets.chomp
    #validate input
    if valid_number(rate)
      break
    else
      prompt("Hmmm... That is not a valid rate")
    end
  end

  tenor = ''
  loop do
    prompt'What is the duration of the loan in months? '
    tenor = gets.chomp
    #validate input
    if valid_number(rate)
      break
    else
      prompt("Hmmm... That is not a valid rate")
    end
  end

  #calculation
  prompt('computing your monthly repayment...')
  loan_amount = amount.to_f
  monthly_rate = (rate.to_f/100) / 12
  loan_duration = tenor.to_i

  monthly_repayment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration)))

  #results
  prompt("Your expected monthly repayment on the loan is #{monthly_repayment}")
  #check for exit
  exit_prompt = <<-MSG
  Do you want to perform another calculation?
  1) Press 'Y' to calculate again
  2) Press 'N' to exit
  MSG

  answer = ''
  loop do
    prompt(exit_prompt)
    answer = gets().chomp().downcase()
    break if ['n', 'y'].include?(answer)
    prompt('Please enter Y or N')
  end
  break if answer == 'n'
end
display_payment_message()
