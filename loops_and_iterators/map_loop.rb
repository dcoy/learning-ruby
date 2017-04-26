arr = ['1', '2', '3', '4', '5', '6', '4568', '1324', '4567']

# Style 1
p arr.map { |x| x.to_i }

# Style 2 - most popular
p arr.map(&:to_i)

puts ("a".."g").to_a.map { |i| i * 2 }

# Create a Hash from an array of integers
# Assigning array element to its integer
puts Hash[[1.1, 2.2, 3.5, 4, 5, 6.5].map { |x| [x,x.to_i] }]
