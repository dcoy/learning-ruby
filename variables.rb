# Local variable
new_str = "His power level is over "

# Instance variable
@powerlevel = 9000

# Class variable
# @@classVariable = 10

print new_str; puts @powerlevel


# Booleans

light_on = true
puts light_on
puts true || false

# Strings
ridiculous_text = "The quick brown fox jumped" # string to allow text manipulation
puts ridiculous_text

silly_string = 'over the lazy dog' # single quotes are string literals
puts silly_string

# Arrays -- used to store data

first_ten_numbers = [1,2,3,4,5,6,7,8,9,10]

first_ten_numbers[0] # 1
first_ten_numbers[4] # 5

my_array = []
puts my_array

# Hash -- key-value pairs. List with keys, not numbers

my_hash = {"name" => "David", "age" => 29, "job" => "Support Engineer"}
puts my_hash

# Empty hash
new_hash = {}

# Blank array
my_blank_array = ["life", 42, "oranges"]


new_hash["new information"] = my_blank_array[0]

puts my_blank_array
