# 1. Initialize deck
# 2. Deal cards to player and dealer
# update deck
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

SCORE = { "A" => 11, "J" => 10, "Q" => 10, "K" => 10, "2" => 2, "3" => 3,
          "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
          "10" => 10 }

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

BUST_POINT = 21
DEALER_HEDGE = 17

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def update_total(plyr_hand)
  values = plyr_hand.map { |card| card[1] }
  sum = 0

  values.each do |value|
    sum += SCORE[value]
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > BUST_POINT
  end

  sum
end

def update_deck_draw(array, draw)
  array.select! { |e| !draw.include?(e) }
end

def busted?(plyr_tot)
  plyr_tot > BUST_POINT
end

def check_winner(player_tot, dealer_tot)
  if player_tot > BUST_POINT
    'player busted'
  elsif dealer_tot > BUST_POINT
    'dealer busted'
  elsif dealer_tot < player_tot
    'Player'
  elsif player_tot < dealer_tot
    'Dealer'
  else
    'tie'
  end
end

def display_winner(player_tot, dealer_tot)
  result = check_winner(player_tot, dealer_tot)

  case result
  when 'player busted'
    puts 'You busted! Dealer wins!'
  when 'dealer busted'
    puts 'Dealer busted! You win!'
  when 'Player'
    puts 'You win!'
  when 'Dealer'
    puts 'Dealer wins!'
  when 'tie'
    puts "It's a tie"
  end
end

# def display_player_hand(player_hand)
# end
#
# def display_dealer_hand(dealer_hand)
# end

def play_again?
  choice = ''
  loop do
    puts 'Do you want to play again? y/n '
    choice = gets.chomp.downcase
    break if %w(y n).include?(choice)
    puts "invalid response. enter 'y' or 'n'"
  end
  choice == 'y'
end

def update_score(hsh, string)
  hsh[string] += 1
end

def grand_winner?(hsh)
  hsh.values.any? { |e| e == 5 }
end

# Game Play

puts "Welcome to the game of 21!"
score_total = Hash.new(0)
loop do
  deck = initialize_deck

  puts "...issuing two cards to player"
  player_hand = deck.sample(2)
  update_deck_draw(deck, player_hand)

  puts "...issuing two cards to dealer"
  dealer_hand = deck.sample(2)
  update_deck_draw(deck, dealer_hand)

  player_total = update_total(player_hand)
  dealer_total = update_total(dealer_hand)

  puts "Dealer has: #{dealer_hand.sample[1]} and unknown card"
  puts "You have: #{player_hand[0][1]} and #{player_hand[1][1]}"

  loop do
    player_choice = ''
    loop do
      print "Enter 'h' to hit or 's' to stay: "
      player_choice = gets.chomp.downcase
      break if %w(h s).include?(player_choice)
      puts "invalid choice, please enter 'h' or 's'"
    end

    if player_choice == 'h'
      player_hand += [deck.sample]
      puts 'You chose to hit'
      puts "Your cards are now #{player_hand}"
      update_deck_draw(deck, player_hand)
      player_total = update_total(player_hand)
    end

    break if busted?(player_total) || player_choice == 's'
  end

  if busted?(player_total)
    update_score(score_total, 'Player')
    display_winner(player_total, dealer_total)
    play_again? ? next : break
  else
    puts 'You chose to stay!'
    puts "Your current total is #{player_total}"
  end

  puts 'Dealer turn...'

  while dealer_total < DEALER_HEDGE
    puts 'Dealer hits!'
    dealer_hand += [deck.sample]
    puts "Dealer's cards are now #{dealer_hand}"
    update_deck_draw(deck, dealer_hand)
    dealer_total = update_total(dealer_hand)

    break if busted?(dealer_total)
  end

  if busted?(dealer_total)
    update_score(score_total, 'Dealer')
    puts "Dealer total is now: #{dealer_total}"
    display_winner(player_total, dealer_total)
    play_again? ? next : break
  else
    puts "Dealer stays at #{dealer_total}"
  end

  # result time
  puts '======================='
  puts "Dealer has #{dealer_hand}, for a total of: #{dealer_total}"
  puts "Player has #{player_hand}, for a total of: #{player_total}"
  puts '======================='

  result = check_winner(player_total, dealer_total)
  update_score(score_total, result) if %w(Player Dealer).include?(result)

  display_winner(player_total, dealer_total)

  if grand_winner?(score_total)
    puts "Game over! #{score_total.key(5)} has won 5 games!"
    break
  end

  break unless play_again?
end

puts "Thank you for playing 21!"
