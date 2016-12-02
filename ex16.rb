# Will come back to this to wrap these into a
# function or two.

filename = ARGV.first
# Let's read the file first
puts "First, we are going to output the original contents:"
file = open(filename)
print '########################'
print "\n"
print "#"
print file.read
print "\n"
print '########################'
puts "\n"
# Now we can truncate the contents of the file
puts "Now, we're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file.  Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close
