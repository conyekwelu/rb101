CORE CONCEPTS
- if you initialize a local variable within an if block, even if that if block doesn’t get executed, the local variable is initialized to nil.
- to avoid modifying original object in a reference situation use .clone() or +


Q1
- returns nil

Q2
puts greetings # => { a: 'hi there' }

Q3
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

A & B
puts "one is: #{one}" # => "one"
puts "two is: #{two}" # => "two"
puts "three is: #{three}" # => "three"

C
'two'
'three'
'one'

Q4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".") # array of 4 elements
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
