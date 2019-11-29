# Tri-Angles
# A triangle is classified as follows:
#
# right: One angle of the triangle is a right angle (90 degrees)
# acute: All 3 angles of the triangle are less than 90 degrees
# obtuse: One angle is greater than 90 degrees.
#
# To be a valid triangle,
# the sum of the angles must be exactly 180 degrees
# all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.
#
# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.
#
# You may assume integer valued angles so you don't have to worry about floating point errors.

# input - integer representing angle
# output - symbol describing the type of triangle
#
# data structure - array, hash
#
# algorithm
# - confirm that our inputs make for a valid triangle
#   add the inputs and compare the sum to 180 return false if not 180
#   check if any of the inputs is zero and return false if so
#
# - determine what kind of triangle
#   given that we are dealing with a valid triangle
#   check if the largest side is greater than 90 if so return obtuse
#   check if any of the sides is 90 and return right
#   else if all sides are less than 90 return acute

def is_valid_triangle?(sides)
  !(sides.include?(0) || sides.sum != 180)
end

def triangle(x, y, z)
  sides = [x, y, z]
  return :invalid unless is_valid_triangle?(sides)

  sides.max > 90 ? :obtuse : sides.include?(90) ? :right : :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

# p is_valid_triangle?(60, 70, 50)
# p is_valid_triangle?(30, 90, 60)
# p is_valid_triangle?(120, 50, 10)
# p is_valid_triangle?(0, 90, 90)
# p is_valid_triangle?(50, 50, 50)
