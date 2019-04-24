
def joinor(array, delimiter = ', ', separator = "or")
  msg = "#{array[0..-2].join(delimiter)} #{separator} #{array.slice(-1).to_s}"
  puts " your array is: #{msg}"
end

joinor([1, 2])
joinor([1, 2, 3])
joinor([1, 2, 3], '; ')
joinor([1, 2, 3], ', ', 'and')



WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # ROWS
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # COLS
                [[1, 5, 9], [3, 5, 7]]              # DIAGONALS

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def find_square_at_risk?(brd)
  square_at_risk = 0
  WINNING_LINES.each do |line|
    next if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) < 2
    line.each do |x|
      square_at_risk += x if brd[x] == INITIAL_MARKER
    end
  end
  square_at_risk
end
