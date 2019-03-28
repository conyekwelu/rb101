# Question 1
10.times{ |index| puts "#{" " * index}The Flintstones Rock!"}

# Question 2 - string interpolation or .to_s

# Question 3
=begin
def factors(number)
  divisor = number
  factors = []

  Own solution
  unless number <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  Launch school solution
  while number > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end
=end

# Question 6
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 8
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters
