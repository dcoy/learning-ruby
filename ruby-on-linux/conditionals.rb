my_variable = 0

if my_variable > 10
    puts my_variable
elsif
    puts "Your variable #{my_variable} is less than 10."
else
    puts "You're crazy!"
end


# One-line conditionals
my_variable = 5

puts "Big Number" if my_variable > 10
puts "Small Number" unless my_variable < 10

# Ternary Operator
my_variable > 10 ? puts("big") : puts("small")
puts "\n"

# Testing out some user input
puts "Please enter an integer"
print "> "
user_input = gets.to_i

if user_input > 10
    output = user_input * user_input
else
    output = user_input * 2
end

puts output
