# Polymorphism in Ruby

class APIConnector
  attr_accessor :title, :description, :url

  # When class is created, this method will run
  def initialize(title: title, description: description, url: url = "https://google.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def api_logger
    puts "API Connector starting..."
  end

  private
    def secret_method
      puts "Secret message from within parent class"
    end
end

class PhoneConnector < APIConnector
  # Inherits all methods from APIConnetor Class
  def api_logger
    super
    puts "Phone call API connection starting..."
  end

  def send_phone_call
    puts "Sending phone call"
  end
end

phone = PhoneConnector.new(title: 'My title', description: 'A description', url: 'yahoo.com')
phone.api_logger
