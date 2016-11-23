# Exercise 5: More Variables and Printing

# Variable declaration
name = 'David Coy'
age = 29
height = 72 # inches
weight = 260 # pounds, gotta lose em!
eyes = 'green'
teeth = 'white'
hair = 'brown'
centimeter = 2.54
kilogram = 0.453592


# Output with string interpolation
puts "Let's talk about #{name}."
puts "He's #{height} inches tall.  In centimeters, this is #{height * centimeter}cm."
puts "He's #{weight} pounds heavy.  In kilograms, this is #{weight * kilogram}kg."
puts "Actually, that is pretty heavy." # changed from the book!
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee." # truth

# Tricky line, but going to try and get it right the first time
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."
