==============After Midnight (Part 1)=================
input - positive or negative integer (represents time after or before midnight)
output - string (representing time in 24 hour format)

data structure - integer, string
algorithm
divide input by 60 to convert to hours and minutes
if positive, convert q and r to string and join with ":"
if negative, check if r > 0
  if r > 0 then subtract q from 24 - 1, subtract r from 60
  if r = 0 then subtract q from 24 and
    join q and r separated by ":"

format string if len q = 1, add "0" to the front, if len r = 1 add "0" to the front before joining


def int_to_string(int)
  int.to_s.size == 2? int.to_s : "0#{int.to_s}"
end

def time_of_day(int)
  hours, minutes = int.divmod(MINUTES_PER_HOUR)
  loop do
    x, hours = hours.divmod(HOURS_PER_DAY)
    break if x == 0
  end
  return "#{int_to_string(hours)}:#{int_to_string(minutes)}"
end

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
