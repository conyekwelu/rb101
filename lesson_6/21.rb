HEARTS = {enter in the different cards and their values}
DIAMONDS = {enter in the different cards and their values}
CLUBS = {enter in the different cards and their values}
SPADES = {enter in the different cards and their values}

two players
- dealer
- player

initial dealing of two cards to each []

store card values as constant
ace has two values depending on total of cards in hand

check if total <= 11
draw another card

dealer to show one card

player choice [hit or stay]
if hit deal another card to player
  check total, if greater than 21 bust
turn over

dealer choose to hit if total <= 17 else stay

if dealer stay? and player stay? compare 21 - dealer to 21 - player

smaller number wins


1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
