# Return vs. puts
def void_method
  puts "Hello there"
end

def method_with_return
  return "Hello there"
end

x = void_method
y = method_with_return

void_method # "Hello there" => nil
method_with_return # => "Hello there"
puts x # Only get what is returned from method(nil)
# puts x.upcase NoMethodError due to `nil` class
puts y # Value is pass through to y to output method return
