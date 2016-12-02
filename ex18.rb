# Names, Variables, Code, and Functions

# this is like ex16 and ex18 with ARGV
# *args is like ARGV for functions
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# *args is pointless, so just do this
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# function takes one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# function takes no arguments
def print_none()
  puts "I have nothing."
end

print_two("David", "Coy")
print_two_again("David", "Coy")
print_one("One!")
print_none()
