# Exercise 15: Reading files

filename = ARGV.first

txt = open(filename)

puts "here's your file #{filename}:"
print txt.read

print "Type the filename again:"
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

txt.close()
txt_again.close()
