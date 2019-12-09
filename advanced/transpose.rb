
# Transpose 3x3
# A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements
#
#
# input - an array containing 3 arrays each containing 3 elements
# output - an array containing 3 arrays each containing 3 elements
#
# rules - output is a transpose of input matrix
#
# data structure - array
#
# algorithm
# - initialize variable representing row and set value to 0
# - initialize variable representing column and set value to 0
# - initialize empty array for result
# - iterate over the row up to array size,
#   set value in new array[col][row] = old arr[row][col]
#   increment column variable up to sub array size
# -return new array

def transpose(matrix)
  row = 0
  column = 0

  loop do
    loop do
      matrix[column][row] = matrix[row][column]

      column += 1
      break if column == input.size

    end

    row += 1
    break if row == input.size

  end

  p result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

transpose(matrix)

# new_matrix = transpose(matrix)
#
# p new_matrix == [[1, 4, 3],
#                 [5, 7, 9],
#                 [8, 2, 6]]
#
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
