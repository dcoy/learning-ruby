# What is a lambda in Ruby?

# First way to write lambda
first_name = lambda { |first, last| first + " " + last }

# Second way to write lambda - "stabby" lambda syntax
first_name2 = ->(first, last) { first + " " + last }

puts first_name["David", "Coy"]
puts first_name.call("David", "Coy")
puts first_name2["David", "Coy"]
puts first_name2.call("David", "Coy")
