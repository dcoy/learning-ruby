# Counting number of sundays that fell on
# first of the month between 1/1/1901 - 12/31/2000

require 'date'

start_date = Time.local(1901)
end_date = Time.local(2000, 12, 31)
sunday_counter = 0

while end_date >= start_date
  if end_date.strftime('%A') == 'Sunday' && end_date.strftime('%d') == '01'
    sunday_counter += 1
  end
  end_date -= 86_400
end

p sunday_counter
