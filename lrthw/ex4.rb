# Variable declaration
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_driven = drivers
cars_not_driven = cars - drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# Utilize string interpolation in the output!
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

# Explain what this does in your own words:

# ex4.rb:14: undefined local variable or method `carpool_capacity' for
#     main:Object (NameError)
#
# Explanation: the variable `carpool_capacity` was not
# declared at first in the author's code.
