# Right Triangles
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
#
# input - positive integer, n
# output - triangle with sides having n stars
#
# algorithm
# - from 1 to input n, print starts with preceding spaces = n-1 to n-n

# def triangle(n)
#   (1..n).each do |num|
#     puts "#{' '* (n-num)}#{'*'* num}"
#   end
# end

# def triangle(n)
#   n.downto(1) { |num| puts "#{' '* (n-num)}#{'*'* num}" }
# end
#
# def triangle(n)
#   1.upto(n) { |num| puts "#{' '* (n-num)}#{'*'* num}" }
# end

def triangle(n)
  n.times { |num| puts "#{' '* (num)}#{'*'* (n-num)}" }
end


triangle(5)
triangle(9)

# def triangle(num)
#   spaces = num - 1
#   stars = 1
#
#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end
