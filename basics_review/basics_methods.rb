CORE CONCEPTS
- sometimes good practice to assign default value to a function argument
- a function call can take another function call as an argument


1. Print Me I

def print_me
  puts "I'm printing within the method"
end

print_me

2. Print Me II

def print_me
  "I'm printing within the method"
end

puts print_me

3. Greeting Through Methods I
def hello
  "Hello"
end

def world
  "World"
end

puts hello + " " + world
OR puts "#{hello} #{world}"

4. Greeting Through Methods II
def greet(hello, world)
  "#{hello} #{world}"
end

puts greet

5. Make and Model

def car(make, model)
  puts make + " " + model
end

6. Day or Night

def time_of_day(bool)
  if bool
    puts "It's daytime"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)

7. Naming Animals
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

8. Name not Found [Assigning defaults value to an argument]
def assign_name(name="Bob")
  return name
end

9. Multiply the Sum
def add(a,b)
  a + b
end

def multiply(a,b)
  a * b
end

10. Random Sentence
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end
def activity(activities)
    activities.sample
end
def sentence(name, activity)
  "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']
puts sentence(name(names), activity(activities))
