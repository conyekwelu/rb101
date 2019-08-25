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

SCORE = {"A" => 11, "J" => 10, "Q" =>10, "K" =>10, "2" => 2, "3" => 3, "4" => 4,
        "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10}

BUST_POINT = 21
DEALER_HEDGE = 17

deck = [["H", "A"], ["H", "J"], ["H", "Q"], ["H", "K"], ["H", "2"], ["H", "3"], ["H", "4"], ["H", "5"], ["H", "6"], ["H", "7"], ["H", "8"], ["H", "9"], ["H", "10"], ["D", "A"], ["D", "J"], ["D", "Q"], ["D", "K"], ["D", "2"], ["D", "3"], ["D", "4"], ["D", "5"], ["D", "6"], ["D", "7"], ["D", "8"], ["D", "9"], ["D", "10"], ["C", "A"], ["C", "J"], ["C", "Q"], ["C", "K"], ["C", "2"], ["C", "3"], ["C", "4"], ["C", "5"], ["C", "6"], ["C", "7"], ["C", "8"], ["C", "9"], ["C", "10"], ["S", "A"], ["S", "J"], ["S", "Q"], ["S", "K"], ["S", "2"], ["S", "3"], ["S", "4"], ["S", "5"], ["S", "6"], ["S", "7"], ["S", "8"], ["S", "9"], ["S", "10"]]

def update_total(plyr_hand)
  values = plyr_hand.map{ |card| card[1] }
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
  array.select!{|e| !draw.include?(e)}
end

def busted?(plyr_tot)
  plyr_tot > BUST_POINT
end

def check_winner(player_tot, dealer_tot)
  if player_tot > BUST_POINT || (dealer_tot < BUST_POINT && dealer_tot > player_tot)
    return "Dealer"
  elsif dealer_tot > BUST_POINT || (player_tot < BUST_POINT && dealer_tot < player_tot)
    return "Player"
  end
end

def display_winner(winner)
  puts "#{winner} wins the game!"
end

def display_player_hand(player_hand)

end

def display_dealer_hand(dealer_hand)

end

# Game Play

puts "Welcome to the game of 21!"

loop do

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
    print "Enter 'h' to hit or 's' to stay: "
    player_choice = gets.chomp

    if player_choice == 'h'
      player_hand = player_hand + [deck.sample]
      p player_hand
      update_deck_draw(deck, player_hand)
      player_total = update_total(player_hand)
    end

    break if busted?(player_total) || player_choice == 's'
  end

  while dealer_total < DEALER_HEDGE do
    dealer_hand = dealer_hand + [deck.sample]
    update_deck_draw(deck, dealer_hand)
    dealer_total = update_total(dealer_hand)

    break if busted?(dealer_total)
  end

  winner = check_winner(player_total, dealer_total)
  display_winner(winner)

  puts "Do you want to play again? y/n "
  choice = gets.chomp
  break if choice == 'n'
end

puts "Thank you for playing 21!"
