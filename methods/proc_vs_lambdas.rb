# What is the difference between procs and lambdas?

# Argument count
# Lambda's count arguments passed to them, procs don't
full_name = lambda { |first, last| first + " " + last }
puts full_name.call("David", "Coy")
# Wrong number of arguments error
# if incorrect arguments supplied
puts full_name.call("David", "Coy")

# Proc doesn't count arguments passed in
# third argument won't count
full_name2 = Proc.new { |first, last| first + " " + last }
puts full_name2.call("David", "Middle_Name", "Coy")

# Return behavior
def my_lambda_method
  # Basic lambda - will continue through method
  x = lambda { return }
  x.call
  puts "Text from within the method"
end

def my_proc_method
  # Basic Proc - will 'break' out of method
  x = Proc.new { return }
  x.call
  puts "This will not return"
end

# Output with puts call
my_lambda_method
# Outputs with return call => nil
my_proc_method
