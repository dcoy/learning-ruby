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
