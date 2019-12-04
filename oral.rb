# # write a method that takes an array of strings, and returns an array of the same string values except with the vowels removed
# #
# # input: write a list of words: green, yellow, black, white
# # output: list of modified words are: grn, yllw, blck, wht
# #
# # data structure: strings, arrays
# #
# # algorithm:
# # - iterate over string in the array of strings
# # - for each string check each character in the string
# # - if the character is a vowel, delete it
# # - return string of consonants to array
# #
# # def remove_vowels(arr)
# #   arr.map!{ |string| string.delete!("AEIOUaeiou")}
# # end
# #
# # remove_vowels(%w(green yellow black white)) == %w(grn yllw blck wht)
#
#
# # write a method that will determine if an integer is a prime
# #
# # input - integer
# # output - boolean
# #
# # rule is that the boolean is true if the integer is prime else false
# #
# # data structure: collection - array
# # algorithm
# # - initialize an array with numbers starting from 1 to n where n is the input
# # - iterate through the array and for each item divide our input number by the item and return false if the remainder is equal to zero
# # else return true
#
# def is_prime?(num)
#   return false if num == 1
#   2.upto(num/2){ |i| return false if num % i == 0 }
#   true
# end
#
# # p is_prime?(3) == true
# # p is_prime?(4) == false
#
# # write a method that will take an array of numbers and only return those that are prime
# #
# # input - array of integers
# # output - array of prime integers
# #
# # data structure - arrays
# #
# # algorithm
# # - iterate through the array
# # - select prime numbers in array
#
# def select_primes(arr)
#   arr.select { |num| is_prime?(num) }
# end
#
# # p select_primes([1, 2, 3, 4]) == [2, 3]
# # p select_primes([4, 6, 8, 10]) == []
# #
# # write a method that returns the number of primes in an arrays
# # -update the algorithm to count the number of elements in the array
#
# def count_primes(arr)
#   select_primes(arr).size
# end
#
# p count_primes([1, 2, 3, 4]) == 2
# p count_primes([4, 6, 8, 10]) == 0
# OPERATOR = { 's' => 'sum', 'p' => 'product'}
#
# def prompt(msg)
#   puts ">> " + msg
# end
#
#
# prompt "Please enter an integer greater than 0:"
# num = gets.chomp.to_i
#
# prompt "Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp
#
# case operation
# when 's'
#   result = (1..num).to_a.reduce(:+)
# when 'p'
#   result = (1..num).to_a.reduce(:*)
# end
#
# puts "The #{OPERATOR[operation]} of the integers between 1 and #{num} is #{result}"
# puts "..."


# def interleave(arr1, arr2)
#   result = []
#   idx = 0
#
#   loop do
#     result << arr1[idx]
#     result << arr2[idx]
#     idx += 1
#     break if idx == arr1.size
#   end
#
#   result
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

#
# algorithm
# initialize an empty array to store result
# initialize an index counter and set it equal to 0
# initialize a loop and in each iteration push the element at the index of counter in both arrays to the result array
# increment your counter before the next iteration
# break if the index counter equals the arr length

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
