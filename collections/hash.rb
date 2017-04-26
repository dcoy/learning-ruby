# Hash is a key: value pair collection

# Modern syntax - key: value
positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa" }
puts positions

# Original Ruby Syntax
positions_two = { "first_base" => "Chris Carter", "second_base" => "Jose Altuve", "short_stop" => "Carlos Correa" }
puts positions_two

# Method three
position_three = { :first_base => "Chris Carter", :second_base => "Jose Altuve", :short_stop => "Carlos Correa" }
puts position_three

# Grab one position
puts positions[:second_base]
puts positions[:short_stop]

# Delete elements from a hash
people = {david: 30, steven: 26, bob: 28}
puts "Hash before deletion: #{people}"
people.delete(:steven)
puts "Hash after deletion: #{people}"

# Iterate over keys or values in a hash
people2 = {richard: 35, evan: 29, charlie: 27}
people2.each do |value, key|
  puts "#{value}: #{key}"
end

# Add to a hash
people2[:bob] = 25
puts people2

# Reverse hash order
puts people.invert

# Merge two hashes
puts people.merge(people2)

# Convert to array
p people2.to_a

# Show all keys or values in hash
p people2.keys
p people2.values
