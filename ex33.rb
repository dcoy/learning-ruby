# While loops

i = 0
numbers = []

while i < 6
  puts "At the top, i is #{i}."
  numbers.push(i)
  # other way to write numbers.push(i)
  # numbers << i
  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom, i is #{i}."
end

puts "The numbers: "

# this can be written in two other ways
numbers.each {|num| puts num}
# The other way
numbers.each do |num|
  puts num
end
