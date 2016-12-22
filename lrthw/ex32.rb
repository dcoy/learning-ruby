# Loops and Arrays

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# first for-loop iterates through the list
# similar to other languages
# similar to 'for number in the_count'
the_count.each do |number|
  puts "This is count #{number}."
end

# same as above, but in a more Ruby way
# this and the next one are the preferred
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly as above
# but in a different syntax.
change.each { |i| puts "I got #{i}" }

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
# (0...5) will not include the '5'
(0..5).each do |i|
  puts "adding #{i} to the list."
  # push the i variable on the *end* of the list
  # similar to elements.push(i)
  elements << i
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}" }
