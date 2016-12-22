# A series of questions using conditional statements

puts "Is there a surge protector under your desk?"
puts 'Y\N?'
print "> "

case gets
when "Y\n"
    surge = true
when "N\n"
    surge = false
end

puts "You have a surge protector." if surge
