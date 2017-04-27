# OOP Inheritance in Ruby

class APIConnector
  attr_accessor :title, :description, :url

  # When class is created, this method will run
  def initialize(title: title, description: description, url: url = "https://google.com")
    @title = title
    @description = description
    @url = url
  end

  def testing_initializers
    puts @title
    puts @description
    puts @url
  end
end

class SMSConnector < APIConnector
  # Inherits all methods from APIConnetor Class

  def send_sms
    puts "Sending SMS"
  end
end

class PhoneConnector < APIConnector
  # Inherits all methods from APIConnetor Class

  def send_phone_call
    puts "Sending phone call"
  end
end

class MailConnector < APIConnector
  # Inherits all methods from APIConnetor Class

  def send_email
    puts "Sending Email"
  end
end

sms = SMSConnector.new(title: 'My title', description: 'A description', url: 'yahoo.com')
sms.send_sms

phone = PhoneConnector.new(title: 'My title', description: 'A description', url: 'yahoo.com')
phone.send_phone_call

mail = MailConnector.new(title: 'My title', description: 'A description', url: 'yahoo.com')
mail.send_email
