# Exercise 6: Strings and Text

# Variable declaration
types_of_people = 10
x = "There are #{types_of_people} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

# changing "" to '' causes it to be a string literal
# outputing everything in the string, including the
# variable 'x' call
puts 'I said: #{x}.'
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

# String concatenation
puts w + e
