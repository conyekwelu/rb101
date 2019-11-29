require 'date'
# Unlucky Days
# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.
#
#
# input - integer representing the year
# output - integer counting the number of times that we have Friday on the 13th
#
# data structure - collection and time
#
#
# algorithm
# given the year, we construct the dates for friday the 13 using time. new and store in an array
# iterate through array and select the members where the 13th falls on a friday_13th
# return the length of our array


# def friday_13th(year)
#   dates = (1..12).to_a.map { |e| Time.new(year, e, 13) }
#   dates.select { |e| e.friday? }.size
# end
#
#
#
# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2
#
# given the year, check if leap year
# for each month count the number of fridays
# return count of months for which fridays > 5

def five_friday_count(year)
  start_date = Date.new(year)
  months = (1..12).to_a
  number_of_fridays = []

  months.each do |current_month|
    friday_count = 0
    until start_date.month != current_month
      start_date += 1
      friday_count += 1 if start_date.friday?

    end
    number_of_fridays << friday_count
  end

  number_of_fridays.select { |e| e == 5 }.size
end

p five_friday_count(2019) == 4
p five_friday_count(2004) == 5
