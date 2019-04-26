WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # ROWS
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # COLS
                [[1, 5, 9], [3, 5, 7]]              # DIAGONALS

FIRST_MOVER_OPTIONS = ["player", "computer", "choose"]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def first_to_move(array)
  option = array.sample
  case option
  when "player"
    xxxx
  when "computer"
    xxxx
  else
    xxxx
  end
end

def display_board(board)
  system('cls')
  puts "Player is #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def joinor(array, delimiter = ', ', separator = "or")
  "#{array[0..-2].join(delimiter)} #{separator} #{array.slice(-1)}"
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
    prompt "Sorry, that's not a valid choice"
  end

  brd[square] = PLAYER_MARKER
end

def find_square_at_risk(brd, player)
  squares_at_risk = []
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(player) == 2
      line.each do |x|
        squares_at_risk << x if brd[x] == INITIAL_MARKER
      end
    end
  end
  squares_at_risk
end

def computer_places_piece!(brd)
  square = []
  offense = find_square_at_risk(brd, COMPUTER_MARKER)
  defense = find_square_at_risk(brd, PLAYER_MARKER)

  if offense.empty? == false
    square = offense.sample
  elsif defense.empty? == false
    square = defense.sample
  elsif brd[5] == ' '
    square = 5
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd) # forcibly turns the return value into boolean
end

def player_won?(brd)
  detect_winner(brd) == "Player"
end

def computer_won?(brd)
  detect_winner(brd) == "Computer"
end

# if someone_won?(board)
#   prompt "#{detect_winner(board)} won!"
# else
#   prompt "It's a tie!"
# end

loop do
  player_count = 0
  computer_count = 0

  loop do
    board = initialize_board # board holds the state of the game hence rqd

    loop do
      display_board(board)

      first_to_move(FIRST_MOVER_OPTIONS)

      player_places_piece!(board) # have to mutate board
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board) # have to mutate board
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if player_won?(board)
      prompt "Player won!"
      player_count += 1
    elsif computer_won?(board)
      prompt "Computer won!"
      computer_count += 1
    else
      prompt "It's a tie!"
    end

    break if player_count == 5 || computer_count == 5
  end

  grand_winner = (player_count > computer_count ? 'Player' : 'Computer')

  prompt "With 5 wins, The Grand Winner is #{grand_winner}!"

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
