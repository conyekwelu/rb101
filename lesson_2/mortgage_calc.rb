def prompt(message)
  puts("=> #{message}")
end

def retrieve_user_name
  name = ''
  loop do
    name = gets.chomp
    if name.empty? || name.start_with?(' ')
      prompt('Please enter a valid name')
    else
      break
    end
  end
  name
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

def display_invalid_loan_amount
  prompt("Hmmm... Please enter a positive loan amount")
end

def display_invalid_apr
  prompt("Hmmm... Please enter a Positive APR")
end

def display_invalid_loan_tenor
  prompt("Hmmm... Please re-enter duration as positive integer")
end

def display_exit_message
  prompt("Thanks for using the calculator!")
end

def retrieve_loan_amount
  amount = ''
  loop do
    prompt("How much do you intend to borrow (amount in $): ")
    amount = gets.chomp
    if valid_amount(amount)
      break
    else
      display_invalid_loan_amount()
    end
  end
  amount
end

def retrieve_loan_apr
  rate = ''
  loop do
    prompt('What is the Annual Percentage Rate (amount in %): ')
    rate = gets.chomp
    if valid_apr(rate)
      break
    else
      display_invalid_apr()
    end
  end
  rate
end

def retrieve_loan_tenor
  tenor = ''
  loop do
    prompt'What is the duration of the loan in months? '
    tenor = gets.chomp
    if valid_duration(tenor)
      break
    else
      display_invalid_loan_tenor()
    end
  end
  tenor
end

def retrieve_play_again_response
  answer = ''
  loop do
    prompt(EXIT_PROMPT)
    answer = gets().chomp().downcase()
    break if ['n', 'y'].include?(answer)
    prompt('Please enter Y or N')
  end
  answer
end

def play_again(answer)
  answer == "y"
end

prompt("Welcome to the Mortgage Calculator! Please enter your name: ")
name = retrieve_user_name()

prompt("Hi #{name}")

loop do # Main Loop
  # Inputs
  amount = retrieve_loan_amount()
  rate = retrieve_loan_apr()
  tenor = retrieve_loan_tenor()

  # Computation
  prompt('computing your monthly repayment...')
  loan_amount = amount.to_f
  monthly_rate = (rate.to_f / 100) / 12
  loan_duration = tenor.to_i

  monthly_repayment = loan_amount *
                      (monthly_rate / (1 - (1 + monthly_rate)**-loan_duration))

  # Results
  prompt("Your expected monthly repayment on the loan is #{monthly_repayment}")
  # Check for exit
  EXIT_PROMPT = <<-MSG
  Do you want to perform another calculation?
  1) Press 'Y' to calculate again
  2) Press 'N' to exit
  MSG

  answer = retrieve_play_again_response()

  break unless play_again(answer)
end
display_exit_message()
