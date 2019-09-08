# 1000 Lights
# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off.
#
# You walk down the row of switches and toggle every one of them.
#
# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
#
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on.
#
# You repeat this process and keep going until you have been through n repetitions.
#
# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.
#
# Example with n = 5 lights:
#
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
#
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
#
# input - integer
# output - array of integers [representing lights on]
# data stucture array
# initialize lights - convert input to array with size input and entries 0
# initialize counter = 1
# tranform each item in array to index + 1
# update counter

# def lights(num)
#   lights = Array.new(num)
#   counter = 1
#   loop do
#     lights = lights.map.with_index{ |e, idx| (idx + 1) % counter == 0 ? !e : e }
#     counter += 1
#     break if counter > lights.size
#   end
#   p lights.map.with_index{ |e, idx| e == true ? (idx + 1) : e }.select{|x| !!x == true }
# end


def lights_on(num)
  lights = Array.new(num)
  1.upto(num) do |i|
    lights.map!.with_index{ |e, idx| (idx + 1) % i == 0 ? !e : e }
  end

  lights.map!.with_index{ |e, idx| (idx + 1) if e }.keep_if{|x| !!x == true }
end

# def lights(num)
#   lights = Array.new(num) #initiates an array of lights with nil value
#
#   1.upto(num) do |i| # iterator for toggling
#     lights.map!.with_index{ |e, idx| (idx + 1) % i == 0 ? !e : e }
#   end
#
#   lights.map!.with_index{ |e, idx| (idx + 1) if e } # convert back to light num
#   lights.compact
# end

p lights(1000)
