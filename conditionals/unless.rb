names = ['David', 'Steven', 'Bob']

# Block method
unless names.empty?
  names.each { |name| p name }
end

# One-liner method
names.each { |name| p name } unless names.empty?
