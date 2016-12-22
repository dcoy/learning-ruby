# Accessing Elements of Arrays

animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

puts "1. The animal at one is a #{animals[1]}."
puts "2. The third(3rd) animal is a #{animals[2]}."
puts "3. The first(1st) animal is a #{animals[0]}."
puts "4. The animal at 3 is a #{animals[3]}."
puts "5. The fifth(5th) animal is a #{animals[4]}."
puts "6. The animal at 2 is a #{animals[2]}."
puts "7. The sixth(6th) animal is a #{animals[5]}."
puts "8. The animal at 4 is a #{animals[4]}."

# Extra credit

languages = ['ruby', 'python', 'golang', 'perl', 'haskel', 'javascript']


# iterate through 'languages' array, print each lang and
# index position
languages.each_with_index do |lang, index|
  puts "The language is #{lang}, at index position #{index}."
end
