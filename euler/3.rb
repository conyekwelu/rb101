# Largest prime factor
#
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
#
# algo:
# iterate from 1 up to input integer
# add to a factor array if factor of input
# select [prime factors], select max of prime factors



def is_prime?(num)
  counter = 2
  while counter < (num / 2)
    return false if num % counter == 0
    counter += 1
  end
  true
end

def largest_prime_factor(num)
  largest_prime = 0
  index = 1

  while index < (num / 2)
    largest_prime = index if num % index == 0 && is_prime?(index)
    index += 1
  end

  largest_prime
end


p largest_prime_factor(13195)
p largest_prime_factor(600851475143)
