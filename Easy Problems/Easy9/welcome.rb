# Welcome Stranger
# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.
#
# input - array(w/ 2 or more elements) and hash (title and occupation)
# output - print greeting
#
# data structure - collection, string
# algorithm
# - intialize result
# - loop through array and add elements to string
# - print result with preselected text

# def greetings(arr, hsh)
#   arr_input = ''
#   arr.each {|e| e == arr.last ? arr_input << e : arr_input << e << ' '}
#   puts "Hello, #{arr_input}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
# end

def greetings(arr, hsh)
  puts "Hello, #{arr.join(' ')}! Nice to have a #{hsh[:title]} " \
  "#{hsh[:occupation]} around."
end


# Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
