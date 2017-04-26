# Pre-populated array
x = [12, 345, 690, 820]
puts x

# Create an empty array
y = Array.new
puts "Here are the items in the array before new items: #{y}"
# Add item to array at index 0
y[0] = 543
# Add item to array at index 10
y[10] = 432
puts "Here are the items in the array after new items: #{y}"

# Remove items from an array
z = ["asdf", 2345, "b", 4950, 1048, 888]
puts "Here are the items in the array before delete_at: #{z}"
# Delete item from index 2
z.delete_at(2)
puts "Here are the items in the array after delete_at: #{z}"

# Delete-if method
scores = [88, 97, 105, 110, 75]
puts "Here are the scores before delete_if: #{scores}"
scores.delete_if { |avg| avg < 100 }
puts "Here are the scores after delete_if: #{scores}"
