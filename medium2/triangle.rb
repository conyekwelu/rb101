# Triangle Sides
# A triangle is classified as follows:
#
# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
#
# To be a valid triangle,
# 1) the sum of the lengths of the two shortest sides must be greater than the length of the longest side
# 2) all sides must have lengths greater than 0
#
# Write a method that
#
# input - integer representing the 3 sides of a triangle
# output - symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
#
# data structure - array, numeric
#
# algorithm
# - check if the inputs constitute a valid triangle
#   - if any input == 0, return invalid triangle
#   - sort the array
#   - add the first two members and compare the sum to the last member of the array, return true if first two members greater than third
#
# - check what kind of triangle we have
#   sort an array containing our inputs
#   compare the smallest to the largest and return equilateral if true
#   compare the next smallest to the largest and return scalene if true
#   else isosceles

# def is_valid_triangle?(arr)
#   return false if arr.include?(0)
#   (arr.sum - arr.last) > arr.last
# end
#
# def triangle(num1, num2, num3)
#   sides = [num1, num2, num3].sort
#   return :invalid if !is_valid_triangle?(sides)
#
#   if sides.first == sides.last
#     :equilateral
#   elsif sides.last != sides[1]
#     :scalene
#   else
#     :isosceles
#   end
# end

# refactored based on other student code
TRIANGLES = {1 => :equilateral, 2 => :isosceles, 3 => :scalene}

def is_valid_triangle?(arr)
  return false if arr.include?(0)
  (arr.sum - arr.last) > arr.last
end

def triangle(num1, num2, num3)
  sides = [num1, num2, num3].sort
  return :invalid  unless is_valid_triangle?(sides)

  TRIANGLES[sides.uniq.size]
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# p is_valid_triangle?(3, 3, 3)# == :equilateral
# p is_valid_triangle?(3, 3, 1.5)# == :isosceles
# p is_valid_triangle?(3, 4, 5)# == :scalene
# p is_valid_triangle?(0, 3, 3) #== :invalid
# p is_valid_triangle?(3, 1, 1)# == :invalid
