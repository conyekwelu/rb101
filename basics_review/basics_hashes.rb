CORE CONCEPTS
- when using methods that mutate the caller the return value is usually of no interest.
- Using an assignment like this, when you mutate the caller creates an alias: both the original variable and new variable point to the same Hash/Array.


1	First Car
car = {
  :type => "sedan",
  :color => "blue",
  :mileage => 80000
}
OR
car = {
  type: "sedan",
  color: "blue",
  mileage: 80000
}

2	Adding the Year
car[:year] = 2003

3	Broken Odometer
car.delete(:mileage)
# OR
# car.delete_(:mileage)

4	What Color?
puts car[:color]

5	Labeled Numbers
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "A #{key} number is #{value}"
end

6	Divided by Two
half_numbers =  numbers.map do |key, value|
                  value / 2
                end
p half_numbers

7	Low, Medium, or High?
low_numbers = numbers.select do |key, value|
                value < 25
              end
p low_numbers

8	Low or Nothing
low_numbers = numbers.select! do |key, value|
                value < 25
              end
p low_numbers

9	Multiple Cars
{
  car: {type: "sedan", color: "blue", year: 2003}
  truck: {type: "pickup", color: "red", year: 1998}
}

10	Which Collection?

car = [[:type, "sedan"], [:color, "blue"], [:year, 2003]]
