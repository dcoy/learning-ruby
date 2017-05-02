# Regular expressions in Ruby
string = "The quick 12 brown foxes jumped over the 10 lazy dogs."

p string =~ /quick/

# Ternary operator
p string =~ /z/ ? "Valid" : "Invalid"

p string =~ /Z/ ? "Valid" : "Invalid"

# Search string for integers
p string.to_enum(:scan, /\d+/).map { Regexp.last_match }
