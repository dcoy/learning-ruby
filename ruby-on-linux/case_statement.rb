# Exploring the Case(switch) statement

puts "Please enter an integer"
print "> "

case my_var = gets.to_i
when (0..10)
    puts "It's #{my_var}"
end
