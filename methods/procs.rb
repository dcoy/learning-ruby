# What are procs in ruby?
# Processes stored inside of variables

# First way to write procs
full_name = Proc.new { |first, last| first + " " + last }

# Second way to write procs - preferred
full_name2 = Proc.new do |first, last|
  first + " " + last
end

# Two ways to call the proc
puts full_name["David", "Coy"]
puts full_name.call("David","Coy")

puts full_name2["David", "Coy"]
puts full_name2.call("David","Coy")
