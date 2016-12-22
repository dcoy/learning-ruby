# Else and if

people = 30
cars = 40
trucks = 15

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

if people && cars > trucks
  puts "Let's put everyone in cars."
elsif trucks || cars > people
  puts "Looks like there are more vehicles than people."
else
  puts "There's more people than vehicles!"
end

if trucks != cars
  puts "There's less trucks than cars."
end

if !(people + cars >= trucks)
  puts "It looks like trucks win this time around."
elsif people + cars <= trucks
  puts "IT looks like the humans and cars win!"
else
  puts "Nobody wins."
end
