total = 0

arr = [3,4,5,4567,1234,8307,34574568,1234,6,8]

# '*' is considered a method, not an operator in Ruby
# along with +, -, /, %
puts arr.inject(&:*)
