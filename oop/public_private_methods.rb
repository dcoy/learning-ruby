# Public and Private methods in Ruby

class APIConnector
  attr_accessor :title, :description, :url

  # When class is created, this method will run
  def initialize(title: title, description: description, url: url = "https://google.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  private
    def secret_method
      puts "Secret message from within parent class"
    end
end

class SMSConnector < APIConnector
  # Inherits all methods from APIConnetor Class

  def send_sms
    `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" #{@url}`
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

# sms = SMSConnector.new(title: 'My title', description: 'A description', url: 'http://edutechional-smsy.herokuapp.com/notifications')
# sms.send_sms

phone = PhoneConnector.new(title: 'My title', description: 'A description', url: 'yahoo.com')
phone.send_phone_call
phone.secret_method # Error thrown due to private method

mail = MailConnector.new(title: 'My title', description: 'A description', url: 'yahoo.com')
mail.send_email
