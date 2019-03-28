WINNING_COMBOS = { rock: ['lizard', 'scissors'], lizard: ['spock', 'paper'],
                   spock: ['scissors', 'rock'], scissors: ['paper', 'lizard'],
                   paper: ['rock', 'spock'] }

VALID_CHOICES = %w(r p sc sp l)

MAPPING = { r: 'rock', p: 'paper', sc: 'scissors', sp: 'spock', l: 'lizard' }

WELCOME_PROMPT = <<-MSG
Welcome to the Rock, Paper, Scissors, Spock, Lizard game

Here are the rules:
Scissors cuts paper, paper covers rock, rock crushes lizard,
lizard poisons Spock, Spock smashes scissors, scissors decapitates lizard,
lizard eats paper, paper disproves Spock, Spock vaporizes rock,
and, as it always has, rock crushes scissors.

The first player to win 5 rounds is the ----Grand Winner!!!

MSG

CHOICE_PROMPT = <<-MSG
1) enter 'r' to choose Rock
2) enter 'p' to choose Paper
3) enter 'sc' to choose Scissors
4) enter 'sp' to choose Spock
5) enter 'l' to choose Lizard
MSG

def prompt(message)
  puts("=> #{message}")
end

def display_welcome_message
  prompt(WELCOME_PROMPT)
end

def display_invalid_user_entry
  prompt("That's not a valid choice")
end

def retrieve_user_choice
  choice = ''
  loop do
    prompt(CHOICE_PROMPT)
    choice = gets().chomp().downcase()

    if VALID_CHOICES.include?(choice)
      break
    else
      display_invalid_user_entry
    end
  end
  MAPPING[choice.to_sym]
end

def win?(first, second)
  WINNING_COMBOS[first.to_sym].include?(second)
end

def player_won_round?(player, computer)
  win?(player, computer)
end

def computer_won_round?(computer, player)
  win?(computer, player)
end

def display_results(player, computer)
  if player_won_round?()
    prompt("You won!")
  elsif computer_won_round?()
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

display_welcome_message()

user_wins = 0
computer_wins = 0

loop do
  user_choice = retrieve_user_choice()

  computer_choice = MAPPING[VALID_CHOICES.sample.to_sym]

  prompt("You chose: #{user_choice} ; Computer chose: #{computer_choice}")

  display_results(user_choice, computer_choice)

  # update win counter
  user_wins += 1 if win?(user_choice, computer_choice) # formally 92
  computer_wins += 1 if win?(computer_choice, user_choice)
  break if user_wins == 5 || computer_wins == 5

  # check if user wants to play again
  answer = retrieve_play_again_response()
  break unless play_again(answer)
end

prompt("Gameover! You won #{user_wins} times and the Computer won
       #{computer_wins} times")
display_exit_message()
