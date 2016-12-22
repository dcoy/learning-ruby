# Will come back to this to wrap these into a
# function or two.

filename = ARGV.first
# Let's read the file first
puts '#########################################################'
puts "\nFirst, we are going to output the original contents:"
file = open(filename)
print "\n"
print file.read
puts "\n"
print '#########################################################'
print "\n\n"
# Now we can truncate the contents of the file
puts "Now, we're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file.  DELETED!"
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
target.close

puts "\n#########################################################"
puts "\nNow, we are going to output the new contents of the file:"
file = open(filename)
print "\n"
print file.read
puts "\n"
puts "#########################################################"

puts "\nAnd finally, we close it."
target.close
