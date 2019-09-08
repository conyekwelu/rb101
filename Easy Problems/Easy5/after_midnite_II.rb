=============After Midnight (Part 2)=========================
Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

input - time string with hours and minutes separated by ':'
output - integer that represents the distance in minutes from midnight (00:00)

data structure - array
algorithm - split each string into two strings i.e before and after ':'
          - convert the strings to integers
          - multiply the first element by 60
          - sum of all elements in collection
          for after midnight,
            return sum
          for before midnight
          - return minutes in day less summ

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_string)
  time_arr = time_string.split(':').map(&:to_i)
  time_arr[0] = time_arr[0] * MINUTES_PER_HOUR
  time_arr.reduce(:+) % MINUTES_PER_DAY
end

def before_midnight(time_string)
  return 0 if  after_midnight(time_string) == 0
  MINUTES_PER_DAY - after_midnight(time_string)
end

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

Examples:
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
