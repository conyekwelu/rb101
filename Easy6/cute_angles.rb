# Cute angles
#
# Write a method that
# takes a floating point number that represents an angle between 0 and 360 degrees
#  returns a String that represents that angle in degrees, minutes and seconds.
#
#  You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"

# input - floating point number between 0 and 360
# output - string representation of angle in degrees, minutes, second
#
# data structure - numeric
# algorithm
# select the digits before the decimal point
# store in a variable as degrees
# select the decimal portion of the number
# multiply it by 60 to convert to minutes
# if answer still has decimal
#   select the digits before decimal and store it as minutes
#   multiply the decimal portion by 60 to convert it to seconds
#
# combine the degrees, minutes and seconds in required format

implemented algorithm
- find out how many seconds are in the degree
- extract number of degrees
- extract number of minutes from remainder
- extract number of seconds left from remainder
- format output



def dms(num)
  total_seconds = (num * 3600).round

  degrees = (total_seconds / 3600).floor
  minutes = ((total_seconds % 3600) / 60).floor
  seconds = ((total_seconds % 3600) % 60)

  "#{degrees}#{DEGREE}#{sprintf("%02d", minutes)}'#{sprintf("%02d", seconds)}\""
   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


dms(30)# == %(30°00'00")
dms(76.73)# == %(76°43'48")
dms(254.6)# == %(254°36'00")
dms(93.034773)# == %(93°02'05")
dms(0)# == %(0°00'00")
dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")
