# def joinor(array, delim = ', ', conjug = "or")
#   result = ''
#   counter = 0
#
#   loop do
#     if array.size == 1
#       result = "#{array[0].to_s}"
#       break
#     elsif array.size = 2
#       result = "#{array[0].to_s} #{conjug} #{array[1].to_s}"
#       break
#     elsif counter == array.size - 1
#       result += (conjug + " " + array[counter].to_s)
#       break
#     else
#       result += "#{array[counter].to_s}#{delim}"
#       counter += 1
#     end
#   end
#
#   result
# end
#
# def joinor(array, delim = ', ', conjug = "or")
#   result = ''
#
#   result =  case array.size
#             when 1
#               "#{array[0].to_s}"
#             when 2
#               "#{array[0].to_s} #{conjug} #{array[1].to_s}"
#             else
#               "#{array[0..-2].join(delim)} #{conjug} #{array[-1].to_s}"
#             end
#   result
# end
#
#
# puts joinor([1])
# puts joinor([1, 2])                   # => "1 or 2"
# puts joinor([1, 2, 3])                # => "1, 2, or 3"
# puts joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# puts joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"


WINNING_LINES =  [[1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
                  [1, 4, 7], [2, 5, 8], [3, 6, 9], # cols
                  [1, 5, 9], [3, 5, 7]] # diagonals

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
        at_risk_square << brd[index] if brd[index] == ' '
      end
    end
  end
  at_risk_square
end


method - find at risk square
input - board
output - at risk square



computer_places_piece
if threat
  play at risk square
else
  random
end
