# Class vs instance methods

class Invoice
  # Class method
  def self.print_out
    puts "Printed out Invoice"
  end

  # Instance method
  def convert_to_pdf
    puts "Converted to PDF"
  end
end

# Class method can be called directly
Invoice.print_out # Will output string

# Instance methods require creation
# of new instance to be called
i = Invoice.new
i.convert_to_pdf
