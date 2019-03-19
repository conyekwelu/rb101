WINNING_COMBOS = { rock: ['lizard', 'scissors'], lizard: ['spock', 'paper'],
                   spock: ['scissors', 'rock'], scissors: ['paper', 'lizard'],
                   paper: ['rock', 'spock'] }

VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_COMBOS[first.to_sym].include?(second)
end

def retrieve_user_choice
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end
  choice
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def retrieve_play_again_response
  answer = ''
  loop do
    prompt("Do you want to play again? select 'n' to exit or 'y to continue' ")
    answer = gets().chomp().downcase()
    break if ['n', 'y'].include?(answer)
    prompt('Please enter Y or N')
  end
  answer
end

def play_again(answer)
  answer == "y"
end

def display_exit_message
  prompt("Thank you for playing. Goodbye!")
end

loop do
  user_choice = retrieve_user_choice()

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{user_choice}; Computer chose: #{computer_choice}")

  display_results(user_choice, computer_choice)

  answer = retrieve_play_again_response()

  break unless play_again(answer)
end

display_exit_message()
