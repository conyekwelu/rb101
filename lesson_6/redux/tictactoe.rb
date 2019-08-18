# require 'pry'
# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES =  [[1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
                  [1, 4, 7], [2, 5, 8], [3, 6, 9], # cols
                  [1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=>#{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system "cls"
  prompt "You are #{PLAYER_MARKER} and Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

# key decision to use hash to represent board state

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''

  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if immediate_opportunity(brd)
    square = opportunity_square(brd).sample
  elsif immediate_threat(brd)
    square = at_risk_square(brd).sample
  elsif brd[5] == INITIAL_MARKER
    square = 5
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

# def computer_moves_piece!(board)
#   if possible_attack?
#     computer_choice = find_square(board, COMPUTER_MARKER)
#   elsif possible_defense?
#     computer_choice = find_square(board, PLAYER_MARKER)
#   elsif empty_center_square?
#     computer_choice = CENTER_SQUARE # center square would be number 5 here
#   else
#     computer_choice = empty_squares(board).sample
#   end
#   board[computer_choice] = COMPUTER_MARKER
# end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

# def detect_winner(brd)
#   WINNING_LINES.each do |line|
#     if  brd[line[0]] == PLAYER_MARKER &&
#         brd[line[1]] == PLAYER_MARKER &&
#         brd[line[2]] == PLAYER_MARKER
#       return 'Player'
#     elsif brd[line[0]] == COMPUTER_MARKER &&
#           brd[line[1]] == COMPUTER_MARKER &&
#           brd[line[2]] == COMPUTER_MARKER
#       return 'Computer'
#     end
#   end
#   nil
# end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_records(hsh, string)
  if hsh.keys.include?(string)
    hsh[string] += 1
  else
    hsh[string] = 1
  end
end

def grand_winner?(hsh)
  hsh.values.any? { |e| e == 5 }
end

def joinor(array, delim = ', ', conjug = "or")
  result = ''

  result =  case array.size
            when 1
              "#{array[0].to_s}"
            when 2
              "#{array[0].to_s} #{conjug} #{array[1].to_s}"
            else
              "#{array[0..-2].join(delim)} #{conjug} #{array[-1].to_s}"
            end
  result
end

# consolidate immediate_threat, immediate_opportunity
# consolidate at risk square, opportunity_square
def immediate_threat(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      return true
    end
  end
  false
end

def at_risk_square(brd)
  at_risk_square = []
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      line.each do |index|
        at_risk_square << index if brd[index] == INITIAL_MARKER
      end
    end
  end
  at_risk_square
end

def immediate_opportunity(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      return true
    end
  end
  false
end

def opportunity_square(brd)
  opportunity_square = []
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      line.each do |index|
        opportunity_square << index if brd[index] == INITIAL_MARKER
      end
    end
  end
  opportunity_square
end

score_total = {}

loop do
  board = initialize_board
  display_board(board)

  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
    # binding.pry
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    update_records(score_total, detect_winner(board))
  else
    prompt "It's a tie!"
  end

  if grand_winner?(score_total)
    prompt "Game over! #{score_total.key(5)} wins 5 games!"
    break
  end
  # abstract into function - overall winner

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
